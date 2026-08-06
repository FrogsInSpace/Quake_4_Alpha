effect effects/monsters/tank/machinegun_flash
{
	size	314

	spawner "single_streak"
	{
		count		4,4
		locked

		line
		{
			duration	0.06,0.06
			blend	add
			material	"gfx/effects/weapons/flash_half3"

			start
			{
				position { point -2,0,0 }
				size { point 75 }
				length { box 26,0,0,28,0,0 }
			}

			motion
			{
				size { envelope linear }
				fade { envelope linear }
				length { envelope linear }
			}

			end
			{
				length { box 14,0,0,20,0,0 }
			}
		}
	}
	spawner "flash"
	{
		count		1,1
		locked

		sprite
		{
			duration	0.06,0.06
			material	"gfx/effects/weapons/mgun_muzzleflash"

			start
			{
				size { point 90,90 }
				tint { point 0.701961,0.784314,0.803922 }
				rotate { box 0,0.00277778 }
			}

			motion
			{
				size { envelope linear }
				tint { envelope linear }
				fade { envelope linear }
			}

			end
			{
				size { point 20,20 }
			}
		}
	}
	spawner "flash2"
	{
		count		1,1
		locked

		sprite
		{
			duration	0.06,0.06
			material	"gfx/effects/weapons/flash"

			start
			{
				size { point 80,80 }
				tint { point 0.74902,0.74902,0.74902 }
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
				size { point 10,10 }
			}
		}
	}
	light "light"
	{

		light
		{
			duration	0.1,0.1
			blend	add
			material	"lights/defaultPointLight"

			start
			{
				position { point -20,0,0 }
				size { point 175,175,175 }
				tint { point 0.952941,0.956863,0.8 }
			}
		}
	}
}




