effect effects/levels/cryo/vent_gas_02
{
	size	85

	emitter "Gas1"
	{
		duration	1,1
		count		75,75

		sprite
		{
			duration	0.5,1
			blend	add
			material	"gfx/effects/smoke/basic"
			gravity		0.001,0.003

			start
			{
				position { point 2,2,2 }
				velocity { box 50,-22,-22,105,22,22 }
				friction { box -1,0,0,-3,0,0 }
				size { point 4,4 }
				tint { point 0.74902,1,1 }
				fade { point 0.165 }
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
				size { point 25,25 }
				tint { point 0.631373,0.839216,0.909804 }
			}
		}
	}
}
