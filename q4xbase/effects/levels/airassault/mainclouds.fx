effect effects/levels/airassault/mainclouds
{
	size	65053

	emitter "puffs"
	{
		duration	1,1
		count		8,8

		sprite
		{
			duration	8,8
			material	"gfx/effects/smoke/cloud_alpha2"

			start
			{
				position { line 1000,-26000,0,2000,26000,0 }
				velocity { box 0,0,7000,0,0,8000 }
				size { box 4000,4000,8000,8000 }
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
				size { box 4000,4000,8000,8000 }
				fade { point 1 }
				rotate { point 0 relative }
			}
		}
	}
	emitter "lowlayer"
	{
		duration	1,1
		count		4,6

		oriented
		{
			duration	8,8
			material	"gfx/effects/smoke/cloud_alpha2"

			start
			{
				position { box 2000,-26000,-4000,2500,26000,-3500 }
				velocity { box 0,-100,6000,-500,100,12000 }
				size { point 16000,16000 }
				tint { line 0.529412,0.4,0.211765,0.501961,0.447059,0.329412 }
				fade { point 0 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "pop_hold_fadefast" }
				rotate { envelope "linear" }
			}

			end
			{
				size { point 16000,16000 }
				fade { point 0.75 }
				rotate { box 0,0,-0.0416667,0,0,0.0416667 }
			}
		}
	}
}















