effect effects/levels/airassault/q4x_empflak_projectile
{
	size	10703

	emitter "green  blob"
	{
		duration	2,2
		count		2,2

		sprite
		{
			duration	5.5,6
			material	"gfx/effects/weapons/flash_green"
			gravity		0.01,0.1
			trailType	motion
			trailTime	0,0
			trailCount	0,0
			trailMaterial	"gfx/effects/particles_shapes/motionblur"

			start
			{
				position { line 0,-1000,0,0,1000,0 }
				velocity { box 3000,-150,1700,3400,150,2100 }
				size { point 96,96 }
			}

			motion
			{
				rotate { envelope "linear" }
			}

			end
			{
				rotate { point 1 }
			}
			timeout
			{
				effect	"effects/levels/airassault/q4x_empflak"
			}
		}
	}
}



