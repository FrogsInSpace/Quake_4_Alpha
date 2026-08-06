effect effects/levels/airassault/q4x_big_explode
{
	size	42640

	decal "scorch"
	{

		decal
		{
			duration	0.002,0.002
			material	"gfx/effects/decals/explosion_impact2"

			start
			{
				size { point 1225,1225 }
				rotate { box 0,1 }
			}
		}
	}
	sound "sound"
	{
		soundShader	"effects_q4x_barrel_explode"
	}
	spawner "column_smoke"
	{
		count		8,8

		sprite
		{
			duration	0.5,1
			material	"gfx/effects/smoke/cloud_alpha2"
			gravity		-0.02,-0.02

			start
			{
				position { line 0,-30,0,540,30,0 linearSpacing }
				velocity { box 0,30,0,0,40,0 }
				size { box 15000,15000,27000,27000 }
				tint { point 0.482353,0.466667,0.419608 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				tint { envelope linear }
				fade { envelope cosine }
				rotate { envelope linear }
			}

			end
			{
				tint { point 0.168627,0.164706,0.141176 }
				fade { point 0.4 }
				rotate { box -0.277778,0.277778 relative }
			}
		}
	}
	spawner "smoke3"
	{
		start		0.6,0.6
		count		9,9

		sprite
		{
			duration	2,2
			material	"gfx/effects/smoke/cloud_alpha"

			start
			{
				position { line 10,-300,-300,10,300,300 }
				velocity { box 0,0,0,20,0,0 }
				size { line 18000,18000,30000,30000 }
				tint { point 0.501961,0.501961,0.501961 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				fade { envelope cosine }
				rotate { envelope linear }
			}

			end
			{
				fade { point 0.01 }
				rotate { box -0.111111,0.111111 relative }
			}
		}
	}
	spawner "sparks_lines"
	{
		count		9,12
		locked

		line
		{
			duration	0.15,0.15
			blend	add
			generatedLine
			material	"gfx/effects/energy_sparks/spark_line2"
			generatedOriginNormal
			flipNormal

			start
			{
				position { cylinder -0.1,-0.1,-0.1,0.1,0.1,0.1 surface }
				velocity { box 200,0,0,400,0,0 }
				size { box 120,360 }
				tint { line 1,0.921569,0.701961,0.74902,0.521569,0.203922 }
				length { box 100,0,0,150,0,0 }
			}

			motion
			{
				tint { envelope linear }
				fade { envelope exp_x2 }
			}

			end
			{
				tint { line 0.956863,0.658824,0.529412,0.956863,0.639216,0.529412 }
			}
		}
	}
	spawner "sparks"
	{
		count		100,100

		sprite
		{
			duration	4,6
			blend	add
			material	"gfx/effects/energy_sparks/spark3"

			start
			{
				velocity { box 100,-150,-150,500,150,150 }
				angle { box 0,0,0,0.277778,0.277778,0.277778 }
				acceleration { point -500,0,0 }
				size { line 5,5,40,40 }
				tint { line 1,0.721569,0.309804,1,1,1 }
				offset { box -300,-300,-300,300,300,300 }
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
	spawner "column_fire"
	{
		count		10,10

		sprite
		{
			duration	2.5,5
			material	"gfx/effects/fire/fire1a"

			start
			{
				position { line -50,0,0,50,0,0 linearSpacing }
				velocity { box 0,-250,-250,0,250,250 }
				angle { box 0,0,0,1,1,1 }
				size { box 400,400,120,120 }
				offset { box -6,-6,-6,6,6,6 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope linear }
				tint { envelope linear }
				fade { envelope linear }
				angle { envelope linear }
				rotate { envelope linear }
			}

			end
			{
				size { box 6000,6000,15000,15000 }
				angle { box -1,-1,-1,1,1,1 relative }
				rotate { box -0.277778,0.277778 }
			}
		}
	}
	spawner "column_fire2"
	{
		count		4,4

		sprite
		{
			duration	2.5,5
			material	"gfx/effects/fire/fire4a"

			start
			{
				position { line -50,0,0,50,0,0 }
				velocity { box 50,0,0,500,0,0 }
				angle { box 0,0,0,1,1,1 }
				size { box 64,64,90,90 }
				offset { box -6,-6,-6,6,6,6 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope linear }
				tint { envelope linear }
				fade { envelope linear }
				angle { envelope linear }
				rotate { envelope linear }
			}

			end
			{
				size { line 3000,3000,3600,3600 }
				angle { box -1,-1,-1,1,1,1 relative }
				rotate { box -0.277778,0.277778 relative }
			}
		}
	}
	spawner "flash"
	{
		count		1,1

		sprite
		{
			duration	2,2
			material	"gfx/effects/weapons/flash"
			generatedNormal

			start
			{
				position { point 1,0,0 }
				size { line 13600,13600,14500,14500 }
				rotate { box 0,1 }
			}

			motion
			{
				tint { envelope linear }
				fade { envelope linear }
			}
		}
	}
	emitter "deform"
	{
		duration	1,1
		count		1,1

		sprite
		{
			duration	3.5,3.5
			blend	add
			material	"gfx/effects/energy_sparks/explosion_deform3"

			start
			{
				size { point 10,10 }
			}

			motion
			{
				size { envelope linear }
				fade { envelope linear }
			}

			end
			{
				size { point 15000,15000 }
			}
		}
	}
	emitter "deform_oriented"
	{
		duration	1,1
		count		1,1

		oriented
		{
			duration	3.5,3.5
			material	"gfx/effects/energy_sparks/explosion_deform3"

			start
			{
				position { point 1,0,0 }
				size { point 10,10 }
			}

			motion
			{
				size { envelope linear }
			}

			end
			{
				size { point 15000,15000 }
			}
		}
	}
	sound "unnamed15"
	{
		soundShader	"player_rocketlauncher_explode2"
	}
}









