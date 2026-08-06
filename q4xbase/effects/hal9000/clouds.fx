effect effects/hal9000/clouds
{
	size	23867

	emitter "smoke"
	{
		duration	1,1
		count		30,30

		sprite
		{
			duration	8,8
			material	"gfx/effects/smoke/cloud_alpha2"

			start
			{
				position { box 0,-10000,-1000,0,10000,1000 }
				velocity { box 7000,-5,-5,8000,5,5 }
				size { point 3000,3000 }
				tint { line 0.529412,0.4,0.211765,0.501961,0.447059,0.329412 }
				fade { point 0 }
				rotate { box -1,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "fadetable" }
				rotate { envelope "linear" }
			}

			end
			{
				size { point 4000,4000 }
				fade { point 1 }
				rotate { point 0 relative }
			}
		}
	}
}













