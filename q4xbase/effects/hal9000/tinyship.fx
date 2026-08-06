effect effects/hal9000/tinyship
{
	size	9755

	emitter "Marineships"
	{
		duration	2,2
		count		1,1

		sprite
		{
			duration	20,26
			material	"effects/hal9000/tiny_marineship"

			start
			{
				position { line 0,0,-512,0,0,512 }
				velocity { box 100,0,0,700,-40,0 }
				acceleration { box -10,0,-10,10,0,10 }
				size { line 10,10,50,50 }
			}
			timeout
			{
				effect	"effects/explosions/air/airburst_01_small"
			}
		}
	}
}





