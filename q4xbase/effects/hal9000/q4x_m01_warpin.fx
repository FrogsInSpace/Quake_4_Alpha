effect effects/hal9000/q4x_m01_warpin
{
	size	1990

	spawner "ring_out"
	{
		count		15,20

		sprite
		{
			duration	0.4,1
			blend	add
			material	"gfx/effects/energy_sparks/energy2"

			start
			{
				position { point 20,0,0 }
				size { line 120,120,300,300 }
				tint { point 0.858824,0.694118,0.87451 }
			}

			motion
			{
				size { envelope linear }
				fade { envelope linear }
			}

			end
			{
				size { line 1000,1000,1400,1400 }
			}
		}
	}
	spawner "residual"
	{
		start		0.4,0.4
		count		30,30

		sprite
		{
			duration	3,4
			blend	add
			material	"gfx/effects/weapons/plasma1"
			gravity		-0.005,-0.005
			generatedOriginNormal

			start
			{
				position { sphere -200,-200,-200,200,200,200 surface }
				velocity { box 0,0,0,50,0,0 }
				size { point 100,100 }
				tint { point 0.643137,0.415686,0.690196 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope linear }
				fade { envelope cosine }
				rotate { envelope linear }
			}

			end
			{
				size { line 220,220,250,250 }
				fade { point 0.75 }
				rotate { box -0.222222,0.222222 relative }
			}
		}
	}
	emitter "ring_out2"
	{
		start		4,4
		duration	1,1
		count		2,2

		sprite
		{
			duration	5,5
			blend	add
			material	"gfx/effects/energy_sparks/energy2"

			start
			{
				position { point 20,0,0 }
				size { point 1,0 }
				tint { point 0.858824,0.694118,0.87451 }
			}

			motion
			{
				size { envelope linear }
				fade { envelope linear }
			}
		}
	}
	spawner "Dark Ring"
	{
		count		10,15

		sprite
		{
			duration	0.2,0.5
			blend	add
			material	"gfx/effects/weapons/darkmatter"

			start
			{
				position { point 20,0,0 }
				size { point 450,450 }
				tint { point 0.858824,0.694118,0.87451 }
			}

			motion
			{
				size { envelope linear }
				fade { envelope linear }
			}

			end
			{
				size { point 50,50 }
			}
		}
	}
}




