effect effects/explosions/air/spaceburst_01_small
{
	size	22

	sound "sound"
	{
		soundShader	"effects_explosion_nodebris"
	}
	spawner "flash"
	{
		count		1,1

		sprite
		{
			duration	1,1
			material	"gfx/effects/energy_sparks/spark2"

			start
			{
				size { point 10,10 }
				tint { point 0.74902,0.74902,0.74902 }
			}

			motion
			{
				size { envelope "linear" }
			}
		}
	}
	spawner "flash3"
	{
		count		1,1

		sprite
		{
			duration	0.1,0.1
			material	"gfx/effects/weapons/mgun_muzzleflash"

			start
			{
				size { point 15,15 }
				tint { point 0.74902,0.74902,0.74902 }
				rotate { box -1,1 }
			}

			motion
			{
				size { envelope "linear" }
			}
		}
	}
}

