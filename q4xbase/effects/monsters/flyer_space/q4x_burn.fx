effect effects/monsters/flyer_space/q4x_burn
{
	size	143

	emitter "FIRE_smoke"
	{
		duration	30,30
		count		4,4

		sprite
		{
			duration	3,3
			persist
			material	"gfx/effects/smoke/smoke_alpha"
			gravity		-0.02,-0.02

			start
			{
				position { cylinder 0,-6,-6,6,6,6 }
				velocity { box 0,-6,-6,0,6,6 }
				size { line 15,15,36,36 }
				tint { point 0.501961,0.501961,0.501961 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope linear }
				tint { envelope linear }
				fade { envelope fast_in_slow_out }
			}

			end
			{
				size { line 60,60,90,90 }
				fade { line 1,0.75 }
			}
		}
	}
	emitter "FIRE_body"
	{
		duration	15,15
		count		35,35

		sprite
		{
			duration	0.75,0.75
			blend	add
			persist
			material	"gfx/effects/fire/fire1a"

			start
			{
				velocity { box 15,-3,-3,20,3,3 }
				size { line 6,6,15,15 }
				fade { point 0 }
				offset { box 0,-9,-9,0,9,9 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope fire_smokefade }
				fade { envelope fast_in_slow_out }
				offset { envelope cosine }
				rotate { envelope linear }
			}

			end
			{
				size { point 6,6 }
				fade { line 0.3,0.2 }
				offset { box 0,-6,-6,0,6,6 }
				rotate { box -0.3,0.3 relative }
			}
		}
	}
	light "FIRE_light"
	{
		locked

		light
		{
			duration	15,15
			blend	add
			material	"lights/defaultPointLight"

			start
			{
				position { point 25,0,0 }
				size { point 150,150,150 }
				tint { point 0.968627,0.976471,0.709804 }
			}

			motion
			{
				size { envelope flickerblink }
				tint { envelope random count 0.15,0.15,0.15 }
				fade { envelope fire_smokefade }
			}

			end
			{
				size { point 75,75,75 }
				tint { point 0.709804,0.529412,0.2 }
			}
		}
	}
	sound "FIRE_sound"
	{
		soundShader	"effects_fire"
	}
	emitter "FIRE_embers"
	{
		duration	30,30
		count		10,10
		attenuation	0,500

		sprite
		{
			duration	2,4
			blend	add
			persist
			material	"gfx/effects/weapons/flash"
			gravity		-0.06,0

			start
			{
				velocity { box 5,-5,-5,10,5,5 }
				angle { box 0,0,0,1,1,1 }
				size { line 0.75,0.75,1.5,1.5 }
				fade { point 0 }
				offset { box 0,-15,-15,0,15,15 }
				rotate { box 0,1 }
			}

			motion
			{
				tint { envelope linear }
				fade { envelope arch }
				angle { envelope linear }
			}

			end
			{
				fade { point 1 }
				angle { box -1,-1,-1,1,1,1 relative }
			}
		}
	}
}




