effect effects/vehicles/spacecannon/targetlock
{
	size	425

	spawner "Reticule"
	{
		count		3,3
		locked
		constant

		sprite
		{
			duration	1,1
			blend	add
			material	"gfx/guis/q4x_crosshairs/aa_space_lock_FX"

			start
			{
				size { point 300,300 }
				tint { point 0.901961,0,0 }
				fade { point 0.8 }
			}

			motion
			{
				rotate { envelope "linear" count 0.003 }
			}

			end
			{
				rotate { point 100 relative }
			}
		}
	}
}
