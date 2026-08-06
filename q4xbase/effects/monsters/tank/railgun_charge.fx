effect effects/monsters/tank/railgun_charge
{
	size	200

	sound "sound"
	{
		soundShader	"tank_chargerailgun"
	}
	light "light"
	{

		light
		{
			duration	1.1,1.1
			blend	add
			material	"lights/defaultPointLight"

			start
			{
				position { point 30,0,0 }
				size { point 100,110,110 }
				tint { point 0.827451,0.819608,0.929412 }
			}

			motion
			{
				tint { envelope linear }
			}
		}
	}
	spawner "plume"
	{
		count		15,15
		locked

		sprite
		{
			duration	1,1
			blend	add
			material	"gfx/effects/fire/p_fire2a"

			start
			{
				position { line -10,-10,-10,10,10,10 }
				angle { box 0,0,0,1,1,1 }
				size { box 15,15,25,25 }
				tint { point 0.776471,0.776471,1 }
				fade { point 0 }
				offset { box 0,-15,-15,0,15,15 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope linear }
				fade { envelope cosine }
				offset { envelope exp_x2 }
				angle { envelope linear }
				rotate { envelope linear }
			}

			end
			{
				size { point 4,4 }
				fade { point 1 }
				angle { box -1,-1,-1,1,1,1 relative }
				rotate { box -0.222222,0.222222 relative }
			}
		}
	}
	spawner "spots"
	{
		count		50,50
		locked

		sprite
		{
			duration	0.8,0.8
			blend	add
			material	"gfx/effects/energy_sparks/spark3"

			start
			{
				position { line -5,0,0,5,0,0 }
				angle { box 0,0,0,1,1,1 }
				size { box 0.5,0.5,1,1 }
				tint { line 0,0.501961,1,1,1,1 }
				fade { point 0.5 }
				offset { box 0,-60,-60,0,60,60 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope linear }
				fade { envelope linear }
				offset { envelope exp_x2 }
				angle { envelope linear }
				rotate { envelope linear }
			}

			end
			{
				size { box 8,8,12,12 }
				fade { point 1 }
				offset { box 0,-1,-1,0,1,1 }
				angle { box -1,-1,-1,1,1,1 relative }
				rotate { box -0.222222,0.222222 relative }
			}
		}
	}
}












