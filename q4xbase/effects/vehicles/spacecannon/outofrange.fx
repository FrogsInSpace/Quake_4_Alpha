effect effects/vehicles/spacecannon/outofrange
{
	size	425

	spawner "Reticule"
	{
		count		1,1
		locked
		constant

		sprite
		{
			duration	1,1
			blend	add
			material	"gfx/guis/q4x_crosshairs/aa_space_OOR_FXLock"

			start
			{
				size { point 300,300 }
				tint { point 0.752941,0.752941,0.752941 }
				fade { point 0.8 }
			}
		}
	}
}


