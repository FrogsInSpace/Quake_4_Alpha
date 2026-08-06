effect effects/levels/trench/trench_explosion
{
	size	2135

	spawner "rockchunks"
	{
		count		50,50

		sprite
		{
			duration	1.5,2.5
			material	"gfx/effects/rock_alpha"
			entityDef	"debris_walker_upperleg"
			gravity		0.8,1.1

			start
			{
				position { sphere -125,-125,-125,125,125,125 }
				velocity { box 450,-400,-400,1200,400,410 }
				size { line 3,3,12,12 }
				rotate { box 0,1 }
			}

			motion
			{
				rotate { envelope "linear" }
			}

			end
			{
				rotate { box -0.25,0.25 relative }
			}
		}
	}
	sound "sound01"
	{
		soundShader	"effects_explosion_metal"
		volume	5,5
		freqshift	0.8,0.8
	}
	sound "sound02"
	{
		soundShader	"effects_explosion_fiery"
		volume	5,5
	}
	spawner "smokepillar"
	{
		count		25,25

		sprite
		{
			duration	3,7
			persist
			material	"gfx/effects/smoke/cloud_alpha2"
			entityDef	"debris_walker_upperleg"
			gravity		0,0.015
			generatedOriginNormal

			start
			{
				position { cylinder 0,-50,-50,350,50,50 }
				velocity { box 10,10,5,30,45,5 }
				size { line 20,20,50,50 }
				tint { line 0.286275,0.27451,0.239216,0.309804,0.258824,0.2 }
				fade { point 0 }
				offset { point -25,0,0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "linear" }
				fade { envelope "fastinslowout" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 100,100,250,250 }
				fade { point 0.6 }
				rotate { box -0.222222,0.222222 relative }
			}
		}
	}
	spawner "fire2"
	{
		count		6,6

		sprite
		{
			duration	0.25,0.25
			blend	add
			material	"gfx/effects/fire/fire1a"
			entityDef	"debris_walker_upperleg"
			gravity		-0.15,-0.15

			start
			{
				position { cylinder 0,-15,-15,0,15,15 }
				velocity { box 0,0,0,50,0,0 }
				angle { box 0,0,0,1,1,1 }
				size { point 5,5 }
				fade { point 0 }
				offset { box -5,-5,-5,5,5,5 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "fastinslowout" }
				angle { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 400,400,500,500 }
				fade { point 1 }
				angle { box -1,-1,-1,1,1,1 relative }
				rotate { box -0.222222,0.222222 relative }
			}
		}
	}
	spawner "smoke"
	{
		count		8,10

		sprite
		{
			duration	0.8,1.5
			material	"gfx/effects/smoke/cloud_alpha3"
			entityDef	"debris_walker_upperleg"
			generatedOriginNormal

			start
			{
				position { sphere 0,-100,-100,100,100,100 surface }
				angle { box 0,0,-1,0,0,1 }
				size { line 60,60,100,100 }
				tint { line 0.415686,0.4,0.34902,0.309804,0.258824,0.2 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "linear" }
				fade { envelope "fastinslowout" }
				angle { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 300,300,500,500 }
				fade { point 0.35 }
				rotate { box -0.222222,0.222222 relative }
			}
		}
	}
	spawner "fill_column"
	{
		count		10,15

		sprite
		{
			duration	1,2
			blend	add
			material	"gfx/effects/weapons/plasma1"
			entityDef	"debris_walker_upperleg"
			generatedOriginNormal

			start
			{
				position { line 50,-120,-120,300,120,120 }
				velocity { box 10,-10,-10,10,10,10 }
				size { box 35,35,55,55 }
				tint { point 0.490196,0.152941,0.00784314 }
				offset { box 10,-5,-5,10,5,5 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { box 80,80,150,150 }
				rotate { point 0.0833333 relative }
			}
		}
	}
	spawner "fire_flareup"
	{
		count		25,25

		sprite
		{
			duration	1,2
			blend	add
			material	"gfx/effects/fire/fire2a"
			entityDef	"debris_walker_upperleg"

			start
			{
				position { line 0,-50,-50,50,50,50 }
				velocity { box 0,-10,-10,50,10,10 }
				size { point 100,100 }
				tint { line 1,1,1,0.501961,0.501961,0.501961 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "linear" }
				fade { envelope "exp_xoverx2" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 300,300,400,400 }
				fade { point 1 }
				rotate { box -0.277778,0.277778 relative }
			}
		}
	}
	spawner "fire_base"
	{
		count		15,15

		sprite
		{
			duration	0.75,1.5
			blend	add
			material	"gfx/effects/fire/impact_fire"
			entityDef	"debris_walker_upperleg"

			start
			{
				position { line 0,-5,-5,0,5,5 }
				velocity { box 5,-12,-12,12,12,12 }
				size { box 75,72,100,100 }
				tint { line 1,1,1,0.501961,0.501961,0.501961 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "linear" }
				fade { envelope "fastinslowout" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 120,120,200,200 }
				fade { point 1 }
				rotate { box -0.0833333,0.0833333 relative }
			}
		}
	}
	spawner "smokepillar_fast"
	{
		count		25,25

		sprite
		{
			duration	1,2
			persist
			material	"gfx/effects/smoke/cloud_alpha2"
			entityDef	"debris_walker_upperleg"
			gravity		0,0.015
			generatedOriginNormal

			start
			{
				position { cylinder 0,-50,-50,350,50,50 }
				velocity { box 10,10,5,30,45,5 }
				size { line 50,50,75,75 }
				tint { line 0.286275,0.27451,0.239216,0.309804,0.258824,0.2 }
				fade { point 0 }
				offset { point -25,0,0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "linear" }
				fade { envelope "fastinslowout" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 100,100,150,150 }
				fade { point 0.5 }
				rotate { box -0.222222,0.222222 relative }
			}
		}
	}
	spawner "Fire_core"
	{
		count		25,25

		sprite
		{
			duration	0.3,0.5
			blend	add
			material	"gfx/effects/fire/fire1a"
			entityDef	"debris_walker_upperleg"

			start
			{
				position { line 25,-30,-30,300,30,30 }
				velocity { box 0,-25,-25,20,25,25 }
				size { box 25,25,50,50 }
				tint { line 1,1,1,0.501961,0.501961,0.501961 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "linear" }
				fade { envelope "fastinslowout" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 100,100,300,300 }
				fade { point 1 }
				rotate { box -0.0277778,0.0277778 relative }
			}
		}
	}
	shake "camshake01"
	{
		duration	1,1
		scale		1.25
		attenuateEmitter
		attenuation	500,1500
	}
	spawner "embers2"
	{
		detail		0.5
		count		35,50

		sprite
		{
			duration	0.65,1.5
			material	"gfx/effects/energy_sparks/spark_blue"
			gravity		0.5,0.75

			start
			{
				position { sphere 1,-10,-10,1,10,10 }
				velocity { box 250,-200,-200,1000,200,200 }
				size { point 10,10 }
				tint { point 1,0.501961,0 }
				rotate { box 0.251,-0.25 }
			}

			motion
			{
				size { envelope "random" }
				tint { envelope "exp_x2" }
				rotate { envelope "linear" }
			}

			end
			{
				size { point 7,7 }
			}
		}
	}
}

