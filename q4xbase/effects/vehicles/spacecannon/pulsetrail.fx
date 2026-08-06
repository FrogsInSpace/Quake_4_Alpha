effect effects/vehicles/spacecannon/pulsetrail
{
	size	5012

	spawner "TrailSprites"
	{
		count		100,100

		sprite
		{
			duration	0.15,0.2
			blend	add
			persist
			material	"gfx/effects/weapons/flash_green"

			start
			{
				position { line 0,0,0,7000,0,0 linearSpacing }
				velocity { point 600,0,0 }
				angle { box 0,0,0,1,1,1 }
				size { line 40,40,60,60 }
				tint { point 0.839216,0.937255,0.819608 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "fastinslowout" }
				angle { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 18,18,28,28 }
				fade { point 0.35 }
				angle { box -1,-1,-1,1,1,1 }
				rotate { box -0.222222,0.222222 relative }
			}
		}
	}
	spawner "BeamCore"
	{
		count		1,1

		line
		{
			duration	0.22,0.22
			material	"gfx/effects/weapons/rail_trail3"

			start
			{
				size { point 12 }
				tint { point 0.839216,0.937255,0.819608 }
				length { point 5000,0,0 }
			}

			motion
			{
				size { envelope "exp_x2" }
				tint { envelope "linear_flicker" }
			}

			end
			{
				size { point 3 }
			}
		}
	}
}


