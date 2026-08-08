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

#include "../../bse/BSEInterface.h"
#include "../../bse/BSE_Envelope.h"
#include "../../bse/BSE_SpawnDomains.h"
#include "../../bse/BSE_Particle.h"
#include "../../bse/BSE.h"

// Quake 4 retail Win32 layout checkpoints recovered from quake4.pdb.
assert_sizeof( rvParticleParms, 40 );
assert_sizeof( rvEnvParms, 32 );
assert_sizeof( rvEnvParms1, 20 );
assert_sizeof( rvEnvParms2, 40 );
assert_sizeof( rvEnvParms3, 56 );
assert_sizeof( rvParticle, 340 );
assert_sizeof( rvSpriteParticle, 400 );
assert_sizeof( rvLineParticle, 416 );
assert_sizeof( rvOrientedParticle, 456 );
assert_sizeof( rvElectricityParticle, 476 );
assert_sizeof( rvModelParticle, 456 );
assert_sizeof( rvLightParticle, 616 );
assert_sizeof( rvLinkedParticle, 360 );
assert_sizeof( rvDebrisParticle, 396 );
assert_sizeof( rvParticleTemplate, 1340 );
assert_sizeof( rvSegment, 72 );
assert_sizeof( rvSegmentTemplate, 1484 );
assert_sizeof( rvDeclEffect, 52 );
assert_sizeof( rvBSE, 388 );
