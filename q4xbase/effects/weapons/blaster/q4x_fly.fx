effect effects/weapons/blaster/q4x_fly
{
	size	24

	spawner "line"
	{
		count		1,1
		locked
		constant

		line
		{
			duration	5,5
			material	"gfx/effects/weapons/blaster_flyflipped"
			trailType	motion
			trailTime	0,0
			trailCount	0,0
			trailMaterial	"gfx/effects/particles_shapes/motionblur"

			start
			{
				size { point 2 }
				offset { point 12,0,0 }
				length { point -600,0,0 }
			}

			motion
			{
				size { envelope "random" }
				length { envelope "random" }
			}

			end
			{
				length { point -10,0,0 }
			}
		}
	}
}
