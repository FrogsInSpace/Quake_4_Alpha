effect effects/hal9000/dropship_gun_bottom_tracer
{
	size	194

	spawner "line2"
	{
		count		1,1
		locked
		constant

		line
		{
			duration	2,2
			blend	add
			material	"gfx/effects/weapons/flash_half4"

			start
			{
				position { point -60,0,0 }
				size { point 64 }
				offset { point 50,0,0 }
				length { point -50,0,0 }
			}

			motion
			{
				size { envelope random }
				length { envelope random }
			}

			end
			{
				size { point 48 }
				length { point -70,0,0 }
			}
		}
	}
	spawner "filler"
	{
		count		3,3
		locked
		constant

		sprite
		{
			duration	2,2
			material	"gfx/effects/energy_sparks/spark2"

			start
			{
				position { line -30,0,0,-60,0,0 linearSpacing }
				size { point 16,16 }
				tint { point 0.752941,0.752941,0.752941 }
			}

			motion
			{
				size { envelope random }
			}

			end
			{
				size { point 32,32 }
			}
		}
	}
}
