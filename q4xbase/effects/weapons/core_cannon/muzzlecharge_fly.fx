effect effects/weapons/core_cannon/muzzlecharge_fly
{
	size	464

	light "light"
	{
		locked

		light
		{
			duration	1,1
			blend	add
			shadows
			specular
			material	"lights/defaultPointLight"

			start
			{
				position { point -50,-25,-25 }
				size { point 250,250,250 }
				tint { line 0.0901961,0.00392157,0.494118,0.501961,1,1 }
			}

			motion
			{
				size { envelope exp_x2 }
				tint { envelope exp_1minusx/x2 count 0.1,0.1,0.1 offset 0.1,0.1,0.1 }
				fade { envelope exp_x2 rate 1 }
			}

			end
			{
				size { point 0,0,0 }
				tint { point 0.247059,0,0 }
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
				size { point 3,3 }
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
		count		1,1
		locked

		electricity
		{
			duration	0.3,0.3
			fork	3
			jitterRate	0
			jitterSize	1,1,1
			material	"gfx/effects/electricity/electricity"

			start
			{
				angle { point 0,0,0.25 }
				size { point 0.05 }
				tint { point 0,1,1 }
				length { point 2,0,0 }
			}
		}
	}
	emitter "unnamed1"
	{
		duration	1,1
		count		1,1
		locked

		electricity
		{
			duration	0.3,0.3
			fork	3
			jitterRate	0
			jitterSize	1,1,1
			material	"gfx/effects/electricity/electricity"

			start
			{
				angle { point 0,0,0.25 }
				size { point 0.05 }
				tint { point 0,0.501961,1 }
				length { box 4,0,0,-1,0,0 }
			}
		}
	}
	//sound "unnamed5"
	//{
	//	soundShader	"corecannon_sparks"
	//}
}


