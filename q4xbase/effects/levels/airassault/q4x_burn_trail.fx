effect effects/levels/airassault/q4x_burn_trail
{
	size	3808

	spawner "sparks_lines"
	{
		count		9,12
		locked

		line
		{
			duration	0.15,0.15
			blend	add
			generatedLine
			material	"gfx/effects/energy_sparks/spark_line2"
			generatedOriginNormal
			flipNormal

			start
			{
				position { cylinder -0.1,-0.1,-0.1,0.1,0.1,0.1 surface }
				velocity { box 200,0,0,400,0,0 }
				size { box 120,360 }
				tint { line 1,0.921569,0.701961,0.74902,0.521569,0.203922 }
				length { box 100,0,0,150,0,0 }
			}

			motion
			{
				tint { envelope linear }
				fade { envelope exp_x2 }
			}

			end
			{
				tint { line 0.956863,0.658824,0.529412,0.956863,0.639216,0.529412 }
			}
		}
	}
	spawner "sparks"
	{
		count		100,100

		sprite
		{
			duration	4,6
			blend	add
			material	"gfx/effects/energy_sparks/spark3"

			start
			{
				velocity { box 100,-150,-150,500,150,150 }
				angle { box 0,0,0,0.277778,0.277778,0.277778 }
				acceleration { point -500,0,0 }
				size { line 5,5,40,40 }
				tint { line 1,0.721569,0.309804,1,1,1 }
				offset { box -300,-300,-300,300,300,300 }
			}

			motion
			{
				fade { envelope linear_flicker }
				angle { envelope linear }
			}

			end
			{
				angle { box 0.277778,0.277778,0.277778,0.555556,0.555556,0.555556 relative }
			}
		}
	}
}








