effect effects/hal9000/clouds_high
{
	size	19188

	emitter "smoke"
	{
		duration	1,1
		count		2,2

		sprite
		{
			duration	18,18
			material	"gfx/effects/smoke/cloud_alpha2"

			start
			{
				position { box 0,-2000,-500,0,2000,500 }
				velocity { box 1000,-5,-5,2000,5,5 }
				size { point 1600,1600 }
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
				size { point 2400,2400 }
				fade { point 1 }
				rotate { point 0 relative }
			}
		}
	}
}












