effect effects/vehicles/mcccannon/impact_rocket
{
	size	653

	spawner "fire1"
	{
		count		6,6

		sprite
		{
			duration	0.1,0.1
			material	"gfx/effects/fire/fire1a"
			generatedOriginNormal

			start
			{
				position { cylinder 0.1,-0.1,-0.1,0.1,0.1,0.1 surface linearSpacing }
				velocity { box 80,0,0,120,0,0 }
				angle { box 0,0,0,1,1,1 }
				size { point 200,200 }
				offset { box -2,-2,-2,2,2,2 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "exp_x2" }
				fade { envelope "linear" }
				angle { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { point 100,100 }
				angle { box -1,-1,-1,1,1,1 relative }
				rotate { box -0.111111,0.111111 relative }
			}
		}
	}
	spawner "fire2"
	{
		count		6,6

		sprite
		{
			duration	0.15,0.15
			material	"gfx/effects/fire/fire3a"

			start
			{
				position { line 0,-35,-35,50,35,35 linearSpacing }
				velocity { box 80,0,0,120,0,0 }
				angle { box 0,0,0,1,1,1 }
				size { point 350,350 }
				offset { box -2,-2,-2,2,2,2 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "exp_x2" }
				fade { envelope "linear" }
				angle { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { point 150,150 }
				angle { box -1,-1,-1,1,1,1 relative }
				rotate { box -0.111111,0.111111 relative }
			}
		}
	}
	spawner "flash2"
	{
		count		3,3

		sprite
		{
			duration	0.25,0.25
			material	"gfx/effects/weapons/flash"
			generatedNormal

			start
			{
				position { point 1,0,0 }
				size { point 350,350 }
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
				size { point 100,100 }
			}
		}
	}
	emitter "smoke"
	{
		detail		0.5
		start		0.2,0.2
		duration	0.3,0.3
		count		9,12

		sprite
		{
			duration	0.85,1.6
			material	"gfx/effects/smoke/cloud_alpha2"
			gravity		-0.05,-0.02

			start
			{
				position { line 0,-10,-10,5,10,10 }
				velocity { box 0,-100,0,50,100,100 }
				size { line 75,75,100,100 }
				tint { line 0.403922,0.411765,0.384314,0.443137,0.439216,0.356863 }
				fade { point 0.45 }
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
				size { line 150,150,250,250 }
				tint { line 0.176471,0.176471,0.164706,0.180392,0.184314,0.156863 }
			}
		}
	}
	spawner "sparks_trails"
	{
		count		10,18

		sprite
		{
			duration	0.5,0.9
			material	"gfx/effects/particles_shapes/blank"
			gravity		1,1
			trailType	motion
			trailTime	0.1,0.1
			trailCount	3,3

			start
			{
				velocity { box 400,-400,-150,1000,400,800 }
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
				size { point 2,2 }
				tint { line 0.929412,0.796079,0.321569,0.909804,0.501961,0.364706 }
			}
		}
	}
}

