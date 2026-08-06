effect effects/vehicles/spacecannon/acquirelock
{
	size	425

	spawner "unnamed1"
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
				tint { point 0.972549,0.752941,0.00392157 }
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
