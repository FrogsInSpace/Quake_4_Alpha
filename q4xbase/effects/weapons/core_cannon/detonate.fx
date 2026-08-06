effect effects/weapons/core_cannon/detonate
{
	size	1040

	sound "sound"
	{
		soundShader	"player_rocketlauncher_explode"
	}
	shake "camerashake"
	{
		duration	0.7,0.7
		scale		1
		attenuateEmitter
		attenuation	200,600
	}
	spawner "chunks"
	{
		count		15,15

		model
		{
			duration	2,2
			material	"gfx/test/rocket_chunks"
			model		"models/test/rocket_chunk.lwo"
			gravity		0.7,0.7
			generatedOriginNormal
			trailType	chunks_trail

			start
			{
				position { sphere -25,-25,-25,25,25,25 }
				velocity { box 300,0,0,500,0,0 }
				size { box 0.4,0.4,0.4,1,1,1 }
				tint { line 0,0.501961,1,1,1,1 }
				rotate { box 0,0,0,0.333333,0.333333,0.333333 }
			}

			motion
			{
				fade { envelope linear }
				rotate { envelope linear }
			}

			end
			{
				rotate { box 0.333333,0.333333,0.333333,0.666667,0.666667,0.666667 relative }
			}

			impact
			{
				bounce	0.4
			}
		}
	}
	trail "chunks_trail"
	{
		count		30,30

		sprite
		{
			duration	0.2,0.35
			material	"gfx/effects/fire/fire5b"

			start
			{
				size { point 5,5 }
				tint { line 0.501961,0.501961,1,0.501961,1,1 }
				fade { point 0.2 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope linear }
				tint { envelope linear }
				fade { envelope linear }
			}

			end
			{
				size { point 20,20 }
			}
		}
	}
	spawner "sparks"
	{
		count		15,15

		sprite
		{
			duration	0.5,0.8
			blend	add
			material	"gfx/effects/energy_sparks/spark3"

			start
			{
				velocity { box -150,-150,-150,150,150,150 }
				angle { box 0,0,0,0.277778,0.277778,0.277778 }
				size { line 2,2,8,8 }
				tint { line 0,0,1,0,1,1 }
				offset { box -30,-30,-30,30,30,30 }
			}

			motion
			{
				fade { envelope linear_flicker }
				angle { envelope linear }
			}

			end
			{
				angle { box 0.277778,0.277778,0.277778,0.555556,0.555556,0.555556 relative }
			}
		}
	}
	spawner "fire"
	{
		count		3,3

		sprite
		{
			duration	0.16,0.16
			material	"gfx/effects/fire/fire2a_blue"

			start
			{
				position { sphere -40,-40,-40,40,40,40 linearSpacing }
				velocity { box 50,0,0,200,0,0 }
				angle { box 0,0,0,1,1,1 }
				size { box 150,150,180,180 }
				offset { box -2,-2,-2,2,2,2 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope linear }
				tint { envelope exp_x2 }
				angle { envelope linear }
				rotate { envelope linear }
			}

			end
			{
				size { box 60,60,80,80 }
				tint { point 0,1,1 }
				angle { box -1,-1,-1,1,1,1 relative }
				rotate { box -0.111111,0.111111 relative }
			}
		}
	}
	spawner "fire2"
	{
		count		4,4

		sprite
		{
			duration	0.16,0.16
			material	"gfx/effects/fire/fire5b"

			start
			{
				position { sphere -40,-40,-40,40,40,40 linearSpacing }
				velocity { box 50,0,0,200,0,0 }
				angle { box 0,0,0,1,1,1 }
				size { box 150,150,180,180 }
				offset { box -2,-2,-2,2,2,2 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope linear }
				tint { envelope exp_x2 }
				angle { envelope linear }
				rotate { envelope linear }
			}

			end
			{
				size { box 60,60,80,80 }
				tint { point 0,1,1 }
				angle { box -1,-1,-1,1,1,1 relative }
				rotate { box -0.111111,0.111111 relative }
			}
		}
	}
	spawner "fragments"
	{
		count		9,12

		line
		{
			duration	0.15,0.15
			blend	add
			material	"gfx/effects/energy_sparks/spark_line3"
			generatedOriginNormal

			start
			{
				position { cylinder -0.1,-0.1,-0.1,0.1,0.1,0.1 }
				velocity { box 350,0,0,600,0,0 }
				size { box 6,8 }
				tint { line 0,0,0.627451,0,1,1 }
				length { box 60,0,0,100,0,0 }
			}

			motion
			{
				size { envelope linear }
				fade { envelope linear }
			}

			end
			{
				size { point 3 }
			}
		}
	}
	spawner "smoke"
	{
		start		0.1,0.1
		count		8,8

		sprite
		{
			duration	0.6,0.6
			material	"gfx/effects/smoke/cloud_alpha2"
			generatedOriginNormal

			start
			{
				position { sphere -50,-50,-50,50,50,50 surface }
				velocity { box 0,0,0,120,0,0 }
				size { line 50,50,60,60 }
				tint { point 0,0.25098,0.501961 }
				fade { point 0 }
				rotate { box 0,0.25 }
			}

			motion
			{
				size { envelope exp_1minusx/x2 }
				fade { envelope fastinslowout }
				rotate { envelope linear }
			}

			end
			{
				size { line 120,120,140,140 }
				fade { point 0.4 }
				rotate { point 0.125 }
			}
		}
	}
	emitter "deform"
	{
		duration	1,1
		count		1,1

		sprite
		{
			duration	0.35,0.35
			blend	add
			material	"gfx/effects/energy_sparks/explosion_deform_grenade"

			start
			{
				size { point 0,0 }
			}

			motion
			{
				size { envelope linear }
				fade { envelope linear }
			}

			end
			{
				size { point 600,600 }
			}
		}
	}
	sound "unnamed15"
	{
		soundShader	"player_grenadelauncher_explode"
	}
	light "light"
	{
		locked

		light
		{
			duration	0.2,0.2
			blend	add
			specular
			material	"lights/defaultPointLight"

			start
			{
				position { model models/weapons/core_cannon/w_core_cannon.ase,0,0,0,0,0,0 }
				size { point 200,200,200 }
				tint { line 0,0,0.627451,0,0,1 }
				fade { point 0.1 }
			}

			motion
			{
				size { envelope exp_x2 }
				tint { envelope testflicker count 0.1,0.1,0.1 offset 0.1,0.1,0.1 }
			}

			end
			{
				size { point 600,600,600 }
				tint { line 0,0,0.25098,0.25098,0,0.25098 }
			}
		}
	}
}



