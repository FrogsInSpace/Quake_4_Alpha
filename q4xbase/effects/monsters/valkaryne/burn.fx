effect effects/monsters/valkaryne/burn
{
	size	63

	emitter "Flares"
	{
		duration	2,2
		count		14,24
		locked

		line
		{
			duration	0.3,0.4
			blend	add
			material	"gfx/effects/weapons/flash_half"
			generatedOriginNormal

			start
			{
				position { cylinder -0.1,-0.1,-0.1,-0.1,0.1,0.1 surface }
				size { box 7,14 }
				tint { point 0.501961,0.501961,1 }
				fade { point 0 }
				offset { point -3,0,0 }
				length { box 4,0,0,8,0,0 }
			}

			motion
			{
				fade { envelope "fast_in_slow_out" }
				length { envelope "linear" }
			}

			end
			{
				fade { point 0.75 }
				length { box 20,0,0,25,0,0 }
			}
		}
	}
	emitter "sparks"
	{
		duration	1,2
		count		0.002,3

		line
		{
			duration	0.2,0.5
			blend	add
			generatedLine
			material	"gfx/effects/energy_sparks/spark_line2"
			gravity		0.5,0.5
			generatedOriginNormal
			flipNormal

			start
			{
				position { cylinder 0.1,-0.1,-0.1,0.1,0.1,0.1 }
				velocity { box 100,0,0,200,0,0 }
				size { box 0.5,1.1 }
				tint { line 1,0.501961,0.25098,1,0,0 }
				length { box 2,0,0,10,0,0 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" }
			}

			end
			{
				size { point 0 }
			}
		}
	}
	emitter "remnants"
	{
		duration	4.2,7
		count		7,16

		sprite
		{
			duration	0.4,0.8
			blend	add
			persist
			material	"gfx/effects/fire/fire_napalm_glob"
			gravity		-0.12,-0.06
			trailType	motion
			trailTime	0,0
			trailCount	0,0
			trailMaterial	"gfx/effects/particles_shapes/motionblur"

			start
			{
				position { line 0,-5,-5,0,5,5 }
				velocity { box -1,-1,-1,1,1,40 }
				size { box 12,12,25,25 }
				tint { point 1,0.501961,0.25098 }
				offset { point -3,0,0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "linear" }
				fade { envelope "scaletable" }
				rotate { envelope "linear" }
			}

			end
			{
				rotate { box -0.25,0.25 relative }
			}
		}
	}
	decal "decal2"
	{

		decal
		{
			duration	0.002,0.002
			material	"gfx/effects/decals/explosion_impact2"

			start
			{
				size { point 18,0 }
				rotate { box 0,1 }
			}
		}
	}
}

















