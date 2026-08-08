/*
===========================================================================

Quake 4 Reconstructed GPL Source Code
Copyright (C) 2026 Justin Marshall(IceColdDuke).

This file is part of the Quake 4 Reconstructed GPL Source Code (?Quake 4 Reconstructed Source Code?).

Quake 4 Reconstructed Source Code is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Quake 4 Reconstructed Source Code is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Quake 4 Reconstructed Source Code.  If not, see <http://www.gnu.org/licenses/>.

===========================================================================
*/

#if defined( Q4_CM_LEGACY_SEED )
#include "collisionmodel_translate_legacy.inc"
#else

/*
===========================================================================

Quake 4 object-based translation helpers reconstructed in the exact
CollisionModel_translate.obj source owner identified by quake4.pdb.

===========================================================================
*/

#include "../idlib/precompiled.h"
#pragma hdrstop

#include "CollisionModel_local.h"

void idCollisionModelManagerLocal::SetupTrm( cm_traceWork_t *traceWork, const idTraceModel *trm ) {
	traceWork->numVerts = trm->numVerts;
	for ( int i = 0; i < trm->numVerts; i++ ) {
		traceWork->vertices[i].p = trm->verts[i];
		traceWork->vertices[i].used = false;
	}

	traceWork->numEdges = trm->numEdges;
	for ( int i = 1; i <= trm->numEdges; i++ ) {
		traceWork->edges[i].vertexNum[0] = trm->edges[i].v[0];
		traceWork->edges[i].vertexNum[1] = trm->edges[i].v[1];
		traceWork->edges[i].used = false;
	}

	traceWork->numPolys = trm->numPolys;
	for ( int i = 0; i < trm->numPolys; i++ ) {
		traceWork->polys[i].numEdges = trm->polys[i].numEdges;
		for ( int j = 0; j < trm->polys[i].numEdges; j++ ) {
			traceWork->polys[i].edges[j] = trm->polys[i].edges[j];
		}
		traceWork->polys[i].plane.SetNormal( trm->polys[i].normal );
		traceWork->polys[i].used = false;
	}
	traceWork->isConvex = trm->isConvex;
}

void idCollisionModelManagerLocal::CM_GetCollisionPointTexCoords( idVec2 &texCoord,
		cm_traceWork_t *traceWork, cm_polygon_t *polygon ) {
	texCoord.Set( 0.5f, 0.5f );
	const idVec3 size = polygon->bounds[1] - polygon->bounds[0];
	int dimension = size.y > size.x ? 1 : 0;
	if ( size.z > size[dimension] ) {
		dimension = 2;
	}

	idVec3 triangle[3];
	triangle[0] = polygon->bounds[0];
	triangle[1] = polygon->bounds[1];
	triangle[2] = polygon->bounds[0];
	triangle[2][dimension] = polygon->bounds[1][dimension];
	const float area = idMath::BarycentricTriangleArea( polygon->plane.Normal(),
		triangle[0], triangle[1], triangle[2] );
	if ( area != 0.0f ) {
		idMath::BarycentricEvaluate( texCoord, traceWork->trace.c.point,
			polygon->plane.Normal(), area, triangle, polygon->texBounds );
	}
}

void idCollisionModelManagerLocal::CM_GetMaterialType( cm_traceWork_t *traceWork, cm_polygon_t *polygon ) {
	const idMaterial *material = traceWork->trace.c.material;
	traceWork->trace.c.materialType = NULL;
	if ( material == NULL ) {
		return;
	}
	if ( polygon != NULL && material->GetMaterialTypeArray() != NULL ) {
		idVec2 texCoord;
		CM_GetCollisionPointTexCoords( texCoord, traceWork, polygon );
		traceWork->trace.c.materialType = material->GetMaterialType( texCoord );
	} else {
		traceWork->trace.c.materialType = material->GetMaterialType();
	}
}

bool idCollisionModelManagerLocal::TranslateTrmThroughPolygon( cm_traceWork_t *tw, cm_polygon_t *polygon ) {
	if ( polygon == NULL || polygon->checkcount == checkCount ) {
		return false;
	}
	polygon->checkcount = checkCount;
	if ( !( polygon->contents & tw->contents ) ||
			!tw->traceBounds.IntersectsBounds( polygon->bounds ) ||
			polygon->plane.Normal() * tw->dir >= 0.0f ) {
		return false;
	}

	// Find the trace-model support point closest to the polygon plane.
	idVec3 support;
	for ( int axis = 0; axis < 3; ++axis ) {
		support[axis] = polygon->plane[axis] >= 0.0f ? tw->trmBounds[0][axis] : tw->trmBounds[1][axis];
	}
	const float supportDistance = support * polygon->plane.Normal();
	const float startDistance = polygon->plane.Distance( tw->start ) + supportDistance;
	const float endDistance = polygon->plane.Distance( tw->end ) + supportDistance;
	if ( startDistance <= CM_CLIP_EPSILON || endDistance >= startDistance ) {
		return false;
	}
	float fraction = ( startDistance - CM_CLIP_EPSILON ) / ( startDistance - endDistance );
	fraction = idMath::ClampFloat( 0.0f, tw->trace.fraction, fraction );
	const idVec3 contactPoint = tw->start + fraction * tw->dir + support;
	const idBounds expanded = polygon->bounds.Expand( CM_BOX_EPSILON );
	if ( !expanded.ContainsPoint( contactPoint ) ) {
		return false;
	}

	tw->trace.fraction = fraction;
	tw->trace.c.normal = polygon->plane.Normal();
	tw->trace.c.dist = polygon->plane.Dist();
	tw->trace.c.contents = polygon->contents;
	tw->trace.c.material = polygon->material;
	tw->trace.c.type = tw->pointTrace ? CONTACT_TRMVERTEX : CONTACT_EDGE;
	tw->trace.c.point = contactPoint;
	tw->trace.c.modelFeature = polygon->primitiveNum;
	tw->trace.c.trmFeature = 0;
	CM_GetMaterialType( tw, polygon );
	if ( tw->getContacts && tw->contacts != NULL && tw->numContacts < tw->maxContacts ) {
		tw->contacts[tw->numContacts++] = tw->trace.c;
	}
	return fraction == 0.0f;
}

void idCollisionModelManagerLocal::Translation( trace_t *results, const idVec3 &start,
		const idVec3 &end, const idTraceModel *trm, const idMat3 &trmAxis,
		int contentMask, idCollisionModel *collisionModel, const idVec3 &modelOrigin,
		const idMat3 &modelAxis ) {
	memset( results, 0, sizeof( *results ) );
	results->fraction = 1.0f;
	results->endpos = end;
	results->endAxis = trmAxis;
	if ( collisionModel == NULL ) {
		return;
	}
	if ( start == end ) {
		ContentsTrm( results, start, trm, trmAxis, contentMask,
			collisionModel, modelOrigin, modelAxis );
		return;
	}
	const bool pointTrace = trm == NULL || trm->bounds.GetVolume() <= 0.0f;
	if ( !pointTrace && ( end - start ).LengthSqr() > Square( CM_MAX_TRACE_DIST ) ) {
		results->fraction = 0.0f;
		results->endpos = start;
		results->c.point = start;
		common->Printf( "idCollisionModelManagerLocal::Translation: huge translation\n" );
		return;
	}

	++checkCount;
	ALIGN16( cm_traceWork_t tw );
	memset( &tw, 0, sizeof( tw ) );
	tw.trace.fraction = 1.0f;
	tw.trace.c.type = CONTACT_NONE;
	tw.contents = contentMask;
	tw.model = static_cast<idCollisionModelLocal *>( collisionModel );
	tw.rotation = false;
	tw.positionTest = false;
	tw.pointTrace = pointTrace;
	tw.isConvex = trm == NULL || trm->isConvex;
	tw.getContacts = getContacts;
	tw.contacts = contacts;
	tw.maxContacts = maxContacts;
	tw.start = start - modelOrigin;
	tw.end = end - modelOrigin;

	idMat3 inverseModelAxis = mat3_identity;
	const bool modelRotated = modelAxis.IsRotated();
	if ( modelRotated ) {
		inverseModelAxis = modelAxis.Transpose();
		tw.start *= inverseModelAxis;
		tw.end *= inverseModelAxis;
	}
	tw.dir = tw.end - tw.start;
	if ( pointTrace ) {
		tw.trmBounds.Zero();
	} else {
		idMat3 localTraceAxis = trmAxis;
		if ( modelRotated ) {
			localTraceAxis *= inverseModelAxis;
		}
		tw.trmBounds.FromTransformedBounds( trm->bounds, vec3_origin, localTraceAxis );
	}
	for ( int i = 0; i < 3; ++i ) {
		if ( tw.start[i] < tw.end[i] ) {
			tw.traceBounds[0][i] = tw.start[i] + tw.trmBounds[0][i] - CM_BOX_EPSILON;
			tw.traceBounds[1][i] = tw.end[i] + tw.trmBounds[1][i] + CM_BOX_EPSILON;
		} else {
			tw.traceBounds[0][i] = tw.end[i] + tw.trmBounds[0][i] - CM_BOX_EPSILON;
			tw.traceBounds[1][i] = tw.start[i] + tw.trmBounds[1][i] + CM_BOX_EPSILON;
		}
		tw.trmExtents[i] = Max( idMath::Fabs( tw.trmBounds[0][i] ),
			idMath::Fabs( tw.trmBounds[1][i] ) ) + CM_BOX_EPSILON;
	}
	TraceThroughModel( &tw );
	*results = tw.trace;
	results->endpos = start + results->fraction * ( end - start );
	results->endAxis = trmAxis;
	if ( results->fraction < 1.0f ) {
		if ( modelRotated ) {
			results->c.normal *= modelAxis;
			results->c.point *= modelAxis;
		}
		results->c.point += modelOrigin;
		results->c.dist += modelOrigin * results->c.normal;
	}
	numContacts = tw.numContacts;
}

#endif
