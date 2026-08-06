effect effects/hal9000/ice_sublime_horizontal
{
	size	158

	emitter "steam5"
	{
		duration	0.25,0.25
		count		40,40

		sprite
		{
			duration	7,7
			persist
			material	"gfx/effects/smoke/cloud_alpha2"
			gravity		0.005,0.005

			start
			{
				position { cylinder -20,-20,-4,20,20,4 }
				velocity { box -20,-20,0,20,20,0 }
				size { box 14,14,16,16 }
				tint { line 1,1,1,0.87451,1,1 }
				fade { line 0.3,0.4 }
				rotate { box 0.05,0.5 }
			}

			motion
			{
				size { envelope linear }
				fade { envelope fullflicker }
				rotate { envelope linear }
			}

			end
			{
				size { line 30,30,40,40 }
				rotate { point -0.5 }
			}
		}
	}
}

