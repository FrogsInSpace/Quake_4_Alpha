effect effects/levels/airassault/dropship_fake_laser
{
	size	18002

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
				size { point 2 }
				tint { point 0,0.25098,0.501961 }
				length { box 400,0,0,500,0,0 }
			}

			motion
			{
				length { envelope "linear" }
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
				size { point 16,16 }
				tint { point 0.74902,0.74902,0.74902 }
			}

			motion
			{
				size { envelope "linear" }
			}

			end
			{
				size { point 24,24 }
			}
		}
	}
	delay "delay2"
	{
		duration	0.125,0.675
	}
}



