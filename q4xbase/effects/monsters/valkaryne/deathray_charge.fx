effect effects/monsters/valkaryne/deathray_charge
{
	size	215

	sound "sound"
	{
		soundShader	"tank_chargerailgun"
	}
	light "light"
	{

		light
		{
			duration	3,3
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
				tint { envelope "linear" }
			}
		}
	}
	spawner "plume"
	{
		count		15,15
		locked

		sprite
		{
			duration	4,4
			blend	add
			material	"gfx/effects/energy_sparks/spark3"

			start
			{
				position { line -10,-10,-10,10,10,10 }
				angle { box 0,0,0,1,1,1 }
				size { box 35,35,45,45 }
				tint { point 0.776471,0.776471,1 }
				fade { point 0 }
				offset { box 0,-15,-15,0,15,15 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "cosine" }
				offset { envelope "exp_x2" }
				angle { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { point 8,8 }
				fade { point 1 }
				angle { box -1,-1,-1,1,1,1 relative }
				rotate { box -0.222222,0.222222 relative }
			}
		}
	}
	spawner "spots"
	{
		count		100,100
		locked

		sprite
		{
			duration	3,3
			blend	add
			material	"gfx/effects/energy_sparks/spark3"

			start
			{
				position { line -15,-15,-15,15,15,15 }
				angle { box 0,0,0,1,1,1 }
				size { box 10,10,50,50 }
				tint { line 1,0.501961,0,1,1,1 }
				fade { point 0 }
				offset { box 0,-60,-60,0,60,60 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" }
				offset { envelope "exp_x2" }
				angle { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { box 32,32,48,48 }
				fade { point 1 }
				offset { box 0,-1,-1,0,1,1 }
				angle { box -1,-1,-1,1,1,1 relative }
				rotate { box -0.222222,0.222222 relative }
			}
		}
	}
	spawner "spots2"
	{
		count		100,100

		sprite
		{
			duration	3,3
			blend	add
			material	"gfx/effects/energy_sparks/spark3"

			start
			{
				angle { box 0,0,0,1,1,1 }
				size { box 1,1,10,10 }
				tint { line 1,0,0,1,1,1 }
				fade { point 0 }
				offset { box 0,-60,-60,120,60,60 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" }
				offset { envelope "exp_x2" }
				angle { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { box 32,32,48,48 }
				fade { point 1 }
				angle { box -1,-1,-1,1,1,1 relative }
				rotate { box -0.222222,0.222222 relative }
			}
		}
	}
}















