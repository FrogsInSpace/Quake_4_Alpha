effect effects/hal9000/mcc_smoketrail
{
	size	3500

	emitter "SMOKE"
	{
		duration	1,1
		count		6,8

		sprite
		{
			duration	4,12
			material	"gfx/effects/smoke/cloud_alpha"

			start
			{
				velocity { box -500,-50,-50,-50,50,50 }
				size { line 75,75,50,50 }
				tint { point 0.333333,0.333333,0.333333 }
				fade { point 0.5 }
				rotate { point 0.5 }
			}

			motion
			{
				size { envelope "pop_hold_grow" }
				tint { envelope "linear" }
				fade { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 400,400,600,600 }
				tint { point 0.129412,0.109804,0.0509804 }
			}
		}
	}
}
