effect effects/levels/trench/dustblowing_trench_huge
{
	size	3762

	emitter "particles_big"
	{
		duration	1,1
		count		5,9
		locked

		sprite
		{
			duration	14,18
			material	"gfx/effects/smoke/smoke_alpha"

			start
			{
				position { cylinder -20,-1000,-300,500,1000,200 }
				velocity { box 300,-25,-1,450,25,30 }
				acceleration { point -10,0,0 }
				size { box 175,175,225,225 }
				tint { line 0.835294,0.733333,0.501961,0.694118,0.639216,0.521569 }
				fade { point 0 }
				rotate { box 0,0.333333 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "cosine" }
				rotate { envelope "linear" }
			}

			end
			{
				size { box 325,325,350,350 }
				fade { point 0.5 }
				rotate { box 0.333333,0.666667 relative }
			}
		}
	}
}



