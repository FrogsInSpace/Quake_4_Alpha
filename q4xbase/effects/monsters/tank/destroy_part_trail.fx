effect effects/monsters/tank/destroy_part_trail
{
	size	111

	emitter "smoke"
	{
		duration	1,1
		count		10,10

		sprite
		{
			duration	1.5,2
			persist
			material	"gfx/effects/smoke/smoke_alpha"
			gravity		-0.05,-0.05

			start
			{
				position { box 0,-16,-16,30,16,16 }
				velocity { box -5,-5,-5,5,5,5 }
				size { line 40,40,50,50 }
				tint { line 0.243137,0.223529,0.176471,0.541176,0.521569,0.443137 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope linear }
				tint { envelope linear }
				fade { envelope fastinslowout }
			}

			end
			{
				size { line 45,45,60,60 }
				fade { point 1 }
			}
		}
	}
}




