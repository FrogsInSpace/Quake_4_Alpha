effect effects/levels/airassault/skyboxclouds
{
	size	428

	emitter "smoke"
	{
		duration	1,1
		count		1,1

		sprite
		{
			duration	60,60
			material	"gfx/effects/smoke/cloud_alpha2"

			start
			{
				position { box 0,-240,-32,0,240,2 }
				velocity { box 10,-1,-1,10,1,1 }
				size { box 32,32,64,64 }
				tint { line 0.529412,0.4,0.211765,0.501961,0.447059,0.329412 }
				fade { point 0 }
				rotate { box -1,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "fastinslowout" }
				rotate { envelope "linear" }
			}

			end
			{
				size { box 32,32,64,64 }
				fade { point 1 }
				rotate { point 0 relative }
			}
		}
	}
}

