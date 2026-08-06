effect effects/common/defense_boost
{
	size	176

	emitter "haze"
	{
		duration	1,1
		count		8,12

		sprite
		{
			duration	0.85,1.5
			blend	add
			persist
			material	"gfx/effects/energy_sparks/energy1"

			start
			{
				position { sphere -5,75,-5,5,5,5 }
				angle { box -0.0833333,-0.0833333,-0.0833333,0.0833333,0.0833333,0.0833333 }
				size { point 50,70 }
				tint { point 1,0,0 }
				fade { point 0.1 }
			}

			motion
			{
				fade { envelope "calredtable" }
				offset { envelope "linear" }
				angle { envelope "linear" }
			}

			end
			{
				offset { box -30,-30,-30,30,30,30 }
			}
		}
	}
}


