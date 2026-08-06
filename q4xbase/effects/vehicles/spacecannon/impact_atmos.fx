effect effects/vehicles/spacecannon/impact_atmos
{
	size	1461

	emitter "smoke"
	{
		detail		0.5
		start		0.1,0.1
		duration	0.3,0.3
		count		10,14

		sprite
		{
			duration	0.85,1.6
			material	"gfx/effects/smoke/cloud_alpha2"
			gravity		-0.02,-0.02

			start
			{
				position { line 0,-10,-10,5,10,10 }
				velocity { box 0,-50,-50,100,50,50 }
				size { line 225,225,325,325 }
				tint { line 0.403922,0.411765,0.384314,0.443137,0.439216,0.356863 }
				fade { point 0.75 }
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
				size { line 400,400,555,555 }
				tint { line 0.176471,0.176471,0.164706,0.180392,0.184314,0.156863 }
			}
		}
	}
	spawner "sparks_trails"
	{
		count		10,18

		sprite
		{
			duration	0.85,1.5
			material	"gfx/effects/particles_shapes/blank"
			gravity		1,1
			trailType	motion
			trailTime	0.1,0.1
			trailCount	3,3

			start
			{
				velocity { box 400,-350,0,1500,350,800 }
				size { line 25,25,35,35 }
				tint { point 0.913726,0.858824,0.729412 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "linear" }
			}

			end
			{
				size { point 8,8 }
				tint { line 0.929412,0.796079,0.321569,0.909804,0.501961,0.364706 }
			}
		}
	}
	emitter "flash"
	{
		detail		0.5
		duration	0.1,0.1
		count		5,6

		sprite
		{
			duration	0.25,0.25
			blend	add
			material	"gfx/effects/weapons/flash"
			generatedNormal

			start
			{
				position { point 10,0,0 }
				size { box 450,450,550,550 }
			}

			motion
			{
				tint { envelope "linear" }
			}
		}
	}
}



