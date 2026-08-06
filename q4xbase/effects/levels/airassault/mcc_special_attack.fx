effect effects/levels/airassault/mcc_special_attack
{
	size	18040

	emitter "tracer"
	{
		duration	1,1
		count		10,10

		line
		{
			duration	5,5
			material	"gfx/effects/weapons/tracer"

			start
			{
				velocity { point 8000,0,0 }
				size { point 40 }
				tint { point 0.992157,0.666667,0.341176 }
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
	emitter "flash2"
	{
		duration	1,1
		count		10,10

		sprite
		{
			duration	0.1,0.1
			material	"gfx/effects/weapons/shotgun_mflash"

			start
			{
				size { point 600,600 }
				tint { point 0.807843,0.768628,0.690196 }
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
		duration	7,11
	}
}
