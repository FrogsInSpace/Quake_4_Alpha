effect effects/hal9000/p2_electric_arc_silent
{
	size	122

	emitter "electricty"
	{
		duration	1,1
		count		1,1
		locked

		electricity
		{
			duration	1,1
			blend	add
			fork	4
			jitterRate	0.2
			jitterSize	5,5,5
			material	"gfx/effects/electricity/electric_blue"

			start
			{
				size { point 2 }
				length { box 1,0,0,128,0,0 }
			}

			motion
			{
				fade { envelope random count 0.5 }
				length { envelope exp_1minusx/x2 }
			}

			end
			{
				length { point 64,0,0 }
			}
		}
	}
}

