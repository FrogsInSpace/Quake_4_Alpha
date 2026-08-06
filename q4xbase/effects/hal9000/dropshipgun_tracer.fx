effect effects/hal9000/dropshipgun_tracer
{
	size	11278

	emitter "spirals"
	{
		duration	2,2
		count		30,30

		sprite
		{
			duration	0.1,0.2
			blend	add
			persist
			material	"gfx/effects/weapons/railgun_ring_end"

			start
			{
				position { point -30,0,0 }
				size { point 8,8 }
				tint { point 0.247059,0.211765,0.552941 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope linear }
				fade { envelope linear }
				rotate { envelope linear }
			}

			end
			{
				size { point 32,32 }
				rotate { box -0.388889,0.388889 relative }
			}
		}
	}
	spawner "tracer"
	{
		count		1,1

		line
		{
			duration	5,5
			material	"gfx/effects/weapons/tracerblue"
			trailType	motion
			trailTime	10,10
			trailCount	20,20

			start
			{
				velocity { point 5000,0,0 }
				size { point 6 }
				tint { point 0.309804,0.309804,1 }
				length { box 220,0,0,300,0,0 }
			}

			motion
			{
				size { envelope linear }
				length { envelope linear }
			}

			end
			{
				size { point 40 }
			}

			impact
			{
				remove	1
				effect	"effects/ambient/strogg_tracerburst"
			}
		}
	}
	delay "delay"
	{
		duration	0.5,1.5
	}
}





