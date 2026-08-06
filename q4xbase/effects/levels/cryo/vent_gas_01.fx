effect effects/levels/cryo/vent_gas_01
{
	size	60

	emitter "Gas1"
	{
		duration	1,1
		count		12,12

		sprite
		{
			duration	3,4
			blend	add
			material	"gfx/effects/smoke/basic"
			gravity		0.004,0.009

			start
			{
				position { point 5,2,2 }
				velocity { box 3,-6,0,10,6,0 }
				friction { box -1,0,0,-3,0,0 }
				size { point 10,10 }
				fade { point 0.165 }
			}

			motion
			{
				size { envelope linear }
				tint { envelope linear }
				fade { envelope fadeouttable count 0.9 }
			}

			end
			{
				size { point 25,25 }
				tint { point 0.635294,0.843137,0.909804 }
			}
		}
	}
}

