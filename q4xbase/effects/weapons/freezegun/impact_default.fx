effect effects/weapons/freezegun/impact_default
{
	size	29

	emitter "wide frost"
	{
		duration	1,1
		count		2,2

		oriented
		{
			duration	1,2
			blend	add
			material	"gfx/effects/smoke/cloud_add"

			start
			{
				position { point 1,0,0 }
				size { line 10,10,20,20 }
				fade { point 0 }
			}

			motion
			{
				fade { envelope "fastinslowout" }
			}

			end
			{
				fade { point 0.4 }
			}
		}
	}
}



