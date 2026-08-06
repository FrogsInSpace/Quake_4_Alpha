effect effects/hal9000/monster_coldbreath
{
	size	104

	emitter "steam1"
	{
		duration	1,1
		count		25,25

		sprite
		{
			duration	3,3
			persist
			material	"gfx/effects/smoke/cloud_alpha3"
			gravity		-0.01,-0.01

			start
			{
				position { point 0,0,0 cone }
				velocity { box 15,-2,-2,25,2,2 }
				angle { box 0,0,0,1,0,1 }
				size { box 1,1,2,2 }
				tint { line 1,1,1,0.713726,0.733333,0.796079 }
				fade { point 0.3 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope linear }
				fade { envelope linear }
				angle { envelope exp_x2 }
				rotate { envelope linear }
			}

			end
			{
				size { line 30,30,50,50 }
				angle { box -0.5,0,-0.5,0.5,0,0.5 relative }
				rotate { point 0 relative }
			}
		}
	}
}

