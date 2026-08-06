effect effects/hal9000/strogg_space_tracer
{
	size	11248

	spawner "tracer"
	{
		count		1,1

		line
		{
			duration	5,5
			material	"gfx/effects/weapons/tracerblue"

			start
			{
				velocity { point 5000,0,0 }
				size { point 10 }
				tint { point 0.890196,0.796079,0.109804 }
				length { box 220,0,0,300,0,0 }
			}

			motion
			{
				length { envelope linear }
			}

			impact
			{
				remove	1
				effect	"effects/ambient/strogg_tracerburst"
			}
		}
	}
	delay "delay"
	{
		duration	0.5,1.5
	}
}

