effect effects/levels/airassault/q4x_electrical_play
{
	size	4331

	light "light"
	{
		locked

		light
		{
			duration	0.5,0.5
			blend	add
			material	"lights/defaultPointLight"

			start
			{
				size { point 2500,2500,2500 }
				tint { point 0.501961,1,1 }
			}

			motion
			{
				size { envelope flickerblink }
				tint { envelope exp_1minusx/x2 count 0.1,0.1,0.1 offset 0.1,0.1,0.1 }
				fade { envelope exp_x2 rate 1 }
			}

			end
			{
				size { point 0,0,0 }
			}
		}
	}
	emitter "steam"
	{
		duration	1,1
		density		30,30
		locked

		sprite
		{
			duration	0.5,0.75
			blend	add
			persist
			material	"gfx/effects/fire/p_fire2a"
			gravity		-0.01,-0.01

			start
			{
				position { line -1,-2,0,3,-2,0 }
				friction { point 0,0,10 }
				size { point 300,300 }
				tint { line 0,0.137255,0.27451,0,0.207843,0.309804 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope linear }
				tint { envelope linear }
				fade { envelope fastinslowout }
				rotate { envelope linear }
			}

			end
			{
				size { point 5,5 }
				fade { point 1 }
				rotate { box -0.166667,0.166667 relative }
			}
		}
	}
	spawner "unnamed0"
	{
		count		4,4
		locked

		electricity
		{
			duration	0.3,0.3
			fork	6
			jitterRate	0
			jitterSize	450,450,450
			material	"gfx/effects/electricity/electricity"
			tiling	2

			start
			{
				angle { point 0,0,0.25 }
				size { point 10 }
				tint { point 0,1,1 }
				length { point 2,0,0 }
			}
		}
	}
}








