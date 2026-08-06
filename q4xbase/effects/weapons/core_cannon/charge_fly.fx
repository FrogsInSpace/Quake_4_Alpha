effect effects/weapons/core_cannon/charge_fly
{
	size	347

	emitter "unnamed0"
	{
		start		0.5,0.5
		duration	0.75,0.75
		count		1,4
		locked

		electricity
		{
			duration	0.2,0.2
			fork	3
			jitterRate	2
			jitterSize	4,2,3
			material	"gfx/effects/electricity/electricity"

			start
			{
				angle { point 0,0,0.25 }
				size { box 0.5,1 }
				tint { point 0.517647,0.647059,0.941177 }
				length { box -10,-10,-10,10,10,10 useEndOrigin }
			}

			motion
			{
				size { envelope exp_x2 }
				length { envelope exp_x2 count 0.5,2,1.2 }
			}

			end
			{
				length { box -120,-120,-120,120,120,120 useEndOrigin }
			}
		}
	}
	sound "unnamed5"
	{
		soundShader	"effects_sparks02"
	}
	light "light"
	{
		locked
		constant

		light
		{
			duration	1,1
			blend	add
			specular
			material	"lights/defaultPointLight"

			start
			{
				position { model models/weapons/core_cannon/w_core_cannon.ase,0,0,0,0,0,0 }
				size { point 30,30,30 }
				tint { line 0,0.137255,0.501961,0.223529,0.34902,0.776471 }
				fade { point 0.1 }
			}

			motion
			{
				size { envelope exp_x2 offset 0.5,0.5,0.5 }
				tint { envelope testflicker count 0.1,0.1,0.1 offset 0.1,0.1,0.1 }
			}

			end
			{
				size { point 200,200,200 }
				tint { line 0.247059,0,0,0,0.2,0.501961 }
			}
		}
	}
	emitter "Trail2"
	{
		duration	1.4,1.4
		count		60,60

		sprite
		{
			duration	1,1
			blend	add
			material	"gfx/effects/fire/p_fire2a"
			gravity		-0.01,-0.01

			start
			{
				velocity { box 25,25,25,-25,-25,-25 }
				size { point 8,8 }
				tint { point 0,0.376471,0.501961 }
				offset { box 5,0,0,-12,0,0 }
				rotate { box 0,0.5 }
			}

			motion
			{
				size { envelope linear }
				tint { envelope linear }
				fade { envelope linear }
				rotate { envelope linear }
			}

			end
			{
				size { point 16,16 }
				rotate { point 0.222222 }
			}
		}
	}
}




