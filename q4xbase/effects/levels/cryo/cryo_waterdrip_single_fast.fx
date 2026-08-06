effect effects/levels/cryo/cryo_waterdrip_single_fast
{
	size	373

	emitter "drop"
	{
		duration	1,1
		count		1,2

		line
		{
			duration	3,3
			material	"gfx/effects/fluids_drips/drop_additive_sideways"
			gravity		0.2,0.2

			start
			{
				position { point 10,0,0 }
				velocity { point -10,0,0 }
				tint { point 0.776471,1,1 }
				length { point 3,0,0 }
			}

			motion
			{
				fade { envelope "cosine" offset 0.5 }
				length { envelope "fastinslowout" count 0.7,1,1 }
			}

			end
			{
				fade { point 0.1 }
				length { point 4,0,0 }
			}

			impact
			{
				remove	1
				effect	"effects/levels/cryo/cryo_waterdrip_splash"
			}
		}
	}
	emitter "Timer"
	{
		duration	0.3,3
		count		0.002,0.002

		sprite
		{
			duration	1,1
			material	"gfx/effects/fluids_drips/drop_additive_sideways"

			start
			{
				tint { point 0,0,0 }
			}
		}
	}
}
