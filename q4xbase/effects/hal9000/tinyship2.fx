effect effects/hal9000/tinyship2
{
	size	12159

	emitter "Stroggships"
	{
		duration	3,3
		count		1,1

		sprite
		{
			duration	10,30
			material	"effects/hal9000/tiny_stroggship"

			start
			{
				position { line 0,0,-512,0,0,512 }
				velocity { box 100,0,-20,850,0,20 }
				acceleration { box -5,0,-5,5,0,5 }
				size { line 13,13,44,44 }
			}
			timeout
			{
				effect	"effects/explosions/air/airburst_01_small"
			}
		}
	}
}




