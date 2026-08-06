effect effects/levels/cryo/cryo_waterdrip_splash
{
	size	16

	sound "sound"
	{
		soundShader	"effects_liquiddrip_large"
	}
	spawner "shockwave"
	{
		count		1,1

		oriented
		{
			duration	0.5,0.5
			material	"gfx/effects/particles_shapes/shockwave"

			start
			{
				position { point 0.05,0,0 }
				size { point 2,2 }
				tint { point 0.772549,0.894118,0.996078 }
				fade { point 0 }
			}

			motion
			{
				size { envelope "linear" count 0.5,0.5 }
				tint { envelope "linear" }
				fade { envelope "sintable" count 0.5 }
				rotate { envelope "linear" }
			}

			end
			{
				size { point 7,7 }
				fade { point 0.2 }
			}
		}
	}
	spawner "drops_motion"
	{
		count		5,8

		sprite
		{
			duration	0.2,0.35
			material	"gfx/effects/fluids_drips/drop_additive_sideways"
			gravity		0.15,0.15

			start
			{
				position { cylinder 0,-3,-3,0,3,3 }
				velocity { box 35,-30,-30,50,30,30 }
				tint { point 0.501961,1,1 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" }
			}

			end
			{
				size { point 0.5,0.5 }
			}
		}
	}
}
