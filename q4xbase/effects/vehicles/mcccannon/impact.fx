effect effects/vehicles/mcccannon/impact
{
	size	465

	emitter "smoke"
	{
		detail		0.5
		start		0.15,0.15
		duration	0.3,0.3
		count		8,12

		sprite
		{
			duration	0.85,1.6
			material	"gfx/effects/smoke/cloud_alpha2"
			gravity		-0.04,-0.02

			start
			{
				position { line 0,-10,-10,5,10,10 }
				velocity { box 0,-50,-50,100,50,50 }
				size { line 50,50,75,75 }
				tint { line 0.403922,0.411765,0.384314,0.443137,0.439216,0.356863 }
				fade { point 0.5 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "linear" }
				fade { envelope "linear" }
			}

			end
			{
				size { line 100,100,150,150 }
				tint { line 0.176471,0.176471,0.164706,0.180392,0.184314,0.156863 }
			}
		}
	}
	spawner "sparks_trails"
	{
		count		10,18

		sprite
		{
			duration	0.4,0.8
			material	"gfx/effects/particles_shapes/blank"
			gravity		1,1.5
			trailType	motion
			trailTime	0.1,0.1
			trailCount	3,3
			trailMaterial	"gfx/effects/particles_shapes/motionblur"

			start
			{
				velocity { box 300,-350,-300,888,350,500 }
				size { line 6,6,8,8 }
				tint { point 0.913726,0.858824,0.729412 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "linear" }
			}

			end
			{
				size { box 2,2,3,3 }
				tint { line 0.929412,0.796079,0.321569,0.909804,0.501961,0.364706 }
			}
		}
	}
	emitter "flash"
	{
		detail		0.5
		duration	0.1,0.1
		count		7,9

		sprite
		{
			duration	0.2,0.2
			blend	add
			material	"gfx/effects/weapons/flash"
			generatedNormal

			start
			{
				position { point 15,0,0 }
				size { box 125,125,150,150 }
			}

			motion
			{
				tint { envelope "linear" }
			}
		}
	}
}

