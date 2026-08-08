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

#include "../../idlib/precompiled.h"
#pragma hdrstop

#include "../../renderer/tr_local.h"
#include "../../renderer/Shaders.h"
#include "../../renderer/rvIndexBuffer.h"
#include "../../renderer/rvSpecial.h"
#include "../../renderer/rvTexRenderTarget.h"
#include "../../renderer/rvVertexBuffer.h"
#include "../../renderer/rvVertexFormat.h"
#include "../../renderer/rvPrimBatch.h"
#include "../../renderer/rvMesh.h"
#include "../../renderer/rvRenderModelMD5R.h"

#if defined(_M_IX86)
static_assert( sizeof( rvShader ) == 76, "quake4.pdb: rvShader must be 76 bytes" );
static_assert( sizeof( rvNewShaderStage ) == 5580, "quake4.pdb: rvNewShaderStage must be 5580 bytes" );
static_assert( sizeof( rvGLSLShader ) == 88, "quake4.pdb: rvGLSLShader must be 88 bytes" );
static_assert( sizeof( rvGLSLShaderStage ) == 5964, "quake4.pdb: rvGLSLShaderStage must be 5964 bytes" );
static_assert( sizeof( rvIndexBuffer ) == 36, "quake4.pdb: rvIndexBuffer must be 36 bytes" );
static_assert( sizeof( rvTexRenderTarget ) == 60, "quake4.pdb: rvTexRenderTarget must be 60 bytes" );
static_assert( sizeof( rvBlurTexture ) == 68, "quake4.pdb: rvBlurTexture must be 68 bytes" );
static_assert( sizeof( rvAL ) == 2896, "quake4.pdb: rvAL must be 2896 bytes" );
static_assert( sizeof( rvVertexBuffer ) == 472, "quake4.pdb: rvVertexBuffer must be 472 bytes" );
static_assert( sizeof( rvVertexFormat ) == 184, "quake4.pdb: rvVertexFormat must be 184 bytes" );
static_assert( sizeof( rvPrimBatch ) == 72, "quake4.pdb: rvPrimBatch must be 72 bytes" );
static_assert( sizeof( rvMesh ) == 96, "quake4.pdb: rvMesh must be 96 bytes" );
static_assert( sizeof( rvRenderModelMD5R ) == 196, "quake4.pdb: rvRenderModelMD5R must be 196 bytes" );
static_assert( sizeof( rvRenderModelBSE ) == 112, "quake4.pdb: rvRenderModelBSE must be 112 bytes" );
static_assert( sizeof( localTrace_t ) == 92, "quake4.pdb: localTrace_s must be 92 bytes" );
static_assert( sizeof( srfCullInfo_t ) == 104, "quake4.pdb: srfCullInfo_s must be 104 bytes" );
static_assert( sizeof( silEdge_t ) == 16, "quake4.pdb: silEdge_t must be 16 bytes" );
static_assert( sizeof( overlayVertex_t ) == 12, "quake4.pdb: overlayVertex_t must be 12 bytes" );
static_assert( sizeof( overlaySurface_t ) == 28, "quake4.pdb: overlaySurface_t must be 28 bytes" );
static_assert( sizeof( overlayMaterial_t ) == 24, "quake4.pdb: overlayMaterial_t must be 24 bytes" );
static_assert( sizeof( decalProjectionInfo_t ) == 220, "quake4.pdb: decalProjectionInfo_s must be 220 bytes" );
static_assert( offsetof( decalProjectionInfo_t, maxAngle ) == 212, "quake4.pdb: decalProjectionInfo_s::maxAngle offset mismatch" );
#if !defined( _DEBUG )
static_assert( sizeof( idRenderModelDecal ) == 3548, "quake4.pdb: idRenderModelDecal must be 3548 bytes" );
#endif
static_assert( sizeof( idImage ) == 1256, "quake4.pdb: idImage must be 1256 bytes" );
static_assert( sizeof( idPBufferImage ) == 1260, "quake4.pdb: idPBufferImage must be 1260 bytes" );
static_assert( sizeof( backEndCounters_t ) == 72, "quake4.pdb: retail backEndCounters_t must be 72 bytes" );
static_assert( sizeof( glstate_t ) == 188, "quake4.pdb: glstate_t must be 188 bytes" );
static_assert( sizeof( backEndState_t ) == 524, "quake4.exe/PDB: retail backEndState_t must be 524 bytes" );
static_assert( sizeof( performanceCounters_t ) == 156, "quake4.pdb: performanceCounters_t must be 156 bytes" );
static_assert( sizeof( idRenderSystemLocal ) == 67004, "quake4.exe/PDB: idRenderSystemLocal must be 67004 bytes" );
#endif
