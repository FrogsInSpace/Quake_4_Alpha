effect effects/hal9000/dropshipgun_muzzleflash
{
	size	66

	spawner "flash"
	{
		count		1,1
		locked

		sprite
		{
			duration	0.12,0.12
			material	"gfx/effects/weapons/mgun_muzzleflash"

			start
			{
				position { point 1,0,0 }
				size { point 25,25 }
				tint { point 0,0.25098,0.501961 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope linear }
				tint { envelope linear }
				fade { envelope linear }
			}

			end
			{
				size { point 2.5,2.5 }
				tint { point 0.501961,1,1 }
			}
		}
	}
	spawner "single_streak"
	{
		count		1,1
		locked

		line
		{
			duration	0.12,0.12
			blend	add
			material	"gfx/effects/weapons/flash_half"

			start
			{
				position { point -5,0,0 }
				size { point 3 }
				tint { point 0,0,1 }
				length { point 60,0,0 }
			}

			motion
			{
				size { envelope linear }
				fade { envelope linear }
			}

			end
			{
				size { point 3 }
			}
		}
	}
}
