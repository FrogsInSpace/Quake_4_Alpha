effect effects/vehicles/spacecannon/closesttarget
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
			material	"gfx/guis/hud/reticles/nailgun_scope_lock"

			start
			{
				size { point 300,300 }
				tint { point 0.5,0.5,0.5 }
				fade { point 0.7 }
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
