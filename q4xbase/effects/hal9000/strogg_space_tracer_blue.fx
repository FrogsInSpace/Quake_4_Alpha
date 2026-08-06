effect effects/hal9000/strogg_space_tracer_blue
{
	size	18021

	spawner "tracer"
	{
		count		3,3

		line
		{
			duration	5,5
			material	"gfx/effects/weapons/tracer"

			start
			{
				velocity { point 8000,0,0 }
				size { point 21 }
				tint { point 0.992157,0.862745,0.341176 }
				length { box 400,0,0,500,0,0 }
			}

			motion
			{
				length { envelope "linear" }
			}

			impact
			{
				remove	1
				effect	"effects/ambient/strogg_tracerburst"
			}
		}
	}
	spawner "flash2"
	{
		count		4,4

		sprite
		{
			duration	0.1,0.1
			material	"gfx/effects/weapons/shotgun_mflash"

			start
			{
				size { point 600,600 }
				tint { point 0.74902,0.74902,0.74902 }
			}

			motion
			{
				size { envelope "linear" }
			}

			end
			{
				size { point 80,80 }
			}
		}
	}
	delay "delay2"
	{
		duration	0.5,3
	}
}


