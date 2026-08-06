effect effects/monsters/strogg_flyer/q4x_fadedeath
{
	size	396

	spawner "ship"
	{
		count		1,1

		model
		{
			duration	3,3
			material	"models/vehicles/strogg_flyer/q4x_strogg_flyer_lo_death"
			model		"models/monsters/q4x_strogg_flyer/flyer_deathscale.ase"

			start
			{
				velocity { point 0,0,-300 }
			}

			motion
			{
				size { envelope "linear" }
			}

			end
			{
				size { point 0.01,0.01,0.01 }
			}
		}
	}
	spawner "fakeexhaust"
	{
		count		5,5

		sprite
		{
			duration	2.5,2.5
			material	"gfx/effects/weapons/flash_half"

			start
			{
				position { point 32,0,172 }
				velocity { point 0,0,-340 }
				size { point 64,64 }
				tint { point 0.486275,0.682353,1 }
				rotate { point -2 }
			}

			motion
			{
				size { envelope "linear" }
				rotate { envelope "medflicker" }
			}

			end
			{
				rotate { point 2 }
			}
		}
	}
}







