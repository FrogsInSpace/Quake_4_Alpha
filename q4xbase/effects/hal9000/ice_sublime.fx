effect effects/hal9000/ice_sublime
{
	size	99

	emitter "steam5"
	{
		duration	1,1
		count		5,5

		sprite
		{
			duration	3,3
			persist
			material	"gfx/effects/smoke/cloud_alpha2"
			gravity		0.025,0.025

			start
			{
				position { cylinder -24,-24,-8,24,24,8 }
				velocity { box 0,-10,0,0,10,0 }
				size { box 18,18,22,22 }
				tint { line 1,1,1,0.87451,1,1 }
				fade { line 0.3,0.4 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope linear }
				fade { envelope fullflicker }
				rotate { envelope linear }
			}

			end
			{
				size { line 40,40,50,50 }
				rotate { point 0 relative }
			}
		}
	}
}


