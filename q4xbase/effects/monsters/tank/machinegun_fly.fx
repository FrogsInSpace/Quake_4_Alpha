effect effects/monsters/tank/machinegun_fly
{
	size	54

	emitter "unnamed2"
	{
		duration	0.1,0.1
		density		18,18

		line
		{
			duration	0.12,0.12
			generatedLine
			material	"gfx/effects/weapons/tracer"

			start
			{
				position { point 0,0,0 cone }
				velocity { point 1000,0,0 }
				tint { point 0.752941,0.752941,0.752941 }
				length { point -1600,0,0 }
			}

			motion
			{
				tint { envelope airdefense_biggun }
				fade { envelope linear }
				length { envelope linear }
			}

			impact
			{
				bounce	1
			}
		}
	}
}









