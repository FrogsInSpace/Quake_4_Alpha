effect effects/levels/cryo/vent_gas_falling_large
{
	size	72

	emitter "Gas1"
	{
		duration	1,1
		count		10,10

		sprite
		{
			duration	2.5,4.75
			blend	add
			material	"gfx/effects/smoke/basic"
			gravity		0.004,0.009

			start
			{
				position { line -8,-8,-5,8,8,-5 }
				velocity { box -5,-5,0,5,5,0 }
				size { point 10,10 }
				tint { point 0.74902,1,1 }
				fade { point 0.15 }
				rotate { point 0.25 }
			}

			motion
			{
				size { envelope linear }
				tint { envelope linear }
				fade { envelope fadeouttable count 0.9 }
				rotate { envelope linear }
			}

			end
			{
				size { line 25,25,35,35 }
				tint { point 0.631373,0.839216,0.909804 }
			}
		}
	}
}
