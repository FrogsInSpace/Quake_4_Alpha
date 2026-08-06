effect effects/monsters/q4x_cold_breath
{
	size	35

	emitter "Steam"
	{
		duration	0.5,1
		count		8,8
		locked

		sprite
		{
			duration	0.5,3
			material	"gfx/effects/smoke/steam_alpha"
			gravity		-0.00125,0

			start
			{
				position { point 3,0,0 }
				velocity { box 6,0,0,10,0,0 }
				size { point 2,2 }
				fade { point 0.25 }
				rotate { box -0.497222,0.497222 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" }
				rotate { envelope "cosine" }
			}

			end
			{
				size { point 14,14 }
				rotate { box -0.497222,0.497222 relative }
			}
		}
	}
	delay "unnamed1"
	{
		duration	2,3
	}
}




