effect effects/monsters/flyer_space/q4x_explode_atmos
{
	size	5797

	sound "sound"
	{
		soundShader	"airassault_flyerexplode"
	}
	spawner "column_smoke"
	{
		start		0.5,0.5
		count		12,12

		sprite
		{
			duration	0.75,2.5
			material	"gfx/effects/smoke/cloud_alpha2"
			gravity		-0.02,-0.02

			start
			{
				position { line -500,-500,-500,500,500,500 linearSpacing }
				velocity { box 0,30,0,0,40,0 }
				size { box 500,500,1500,1500 }
				tint { point 0.482353,0.466667,0.419608 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				tint { envelope "linear" }
				fade { envelope "cosine" }
				rotate { envelope "linear" }
			}

			end
			{
				tint { point 0.168627,0.164706,0.141176 }
				fade { point 0.3 }
				rotate { box -0.277778,0.277778 relative }
			}
		}
	}
	spawner "sparks_lines"
	{
		start		0.01,0.06
		count		15,30
		locked

		line
		{
			duration	0.3,0.4
			blend	add
			generatedLine
			material	"gfx/effects/energy_sparks/spark_line2"
			generatedOriginNormal
			flipNormal

			start
			{
				position { line -0.1,-0.1,-0.1,0.1,0.1,0.1 }
				velocity { box -200,-200,-200,200,200,200 }
				size { box 25,50 }
				tint { line 1,0.921569,0.701961,0.74902,0.521569,0.203922 }
				length { box 500,0,0,2000,0,0 }
			}

			motion
			{
				tint { envelope "linear" }
				fade { envelope "exp_x2" }
			}

			end
			{
				tint { line 0.956863,0.658824,0.529412,0.956863,0.639216,0.529412 }
			}
		}
	}
	spawner "sparks"
	{
		start		0.05,0.05
		count		55,75

		sprite
		{
			duration	0.8,2
			blend	add
			material	"gfx/effects/energy_sparks/spark3"

			start
			{
				position { line -50,-50,-50,50,50,50 }
				velocity { box -1500,-1500,-1500,1500,1500,1500 }
				angle { box 0,0,0,0.138889,0.138889,0.138889 }
				acceleration { box -100,-100,-100,100,100,100 }
				size { line 50,50,80,80 }
				tint { line 1,0.721569,0.309804,1,1,1 }
				offset { box -30,-30,-30,30,30,30 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear_flicker" }
				angle { envelope "linear" }
			}

			end
			{
				size { box 8,8,16,16 }
				angle { box 0.138889,0.138889,0.138889,0.277778,0.277778,0.277778 relative }
			}
		}
	}
	spawner "centerflare"
	{
		count		13,15

		sprite
		{
			duration	1,2
			material	"gfx/effects/fire/fire4a"

			start
			{
				position { line -50,0,0,50,0,0 linearSpacing }
				velocity { box 0,-250,-250,0,250,250 }
				angle { box 0,0,0,1,1,1 }
				size { box 400,400,800,800 }
				offset { box -6,-6,-6,6,6,6 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "linear" }
				fade { envelope "linear" }
				angle { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { box 600,600,1500,1500 }
				angle { box -1,-1,-1,1,1,1 relative }
				rotate { point 0 relative }
			}
		}
	}
	//sound "unnamed15"
	//{
	//	soundShader	"airassault_flyerexplode"
	//}
	spawner "delay1"
	{
		start		0.1,0.1
		count		7,12

		sprite
		{
			duration	0.3,0.6
			material	"gfx/effects/fire/fire4a"

			start
			{
				position { sphere -750,-750,-750,750,750,750 linearSpacing }
				velocity { box 0,-250,-250,0,250,250 }
				angle { box 0,0,0,1,1,1 }
				size { box 250,250,400,400 }
				offset { box -6,-6,-6,6,6,6 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "linear" }
				fade { envelope "linear" }
				angle { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { box 350,350,800,800 }
				angle { box -1,-1,-1,1,1,1 relative }
				rotate { point 0 relative }
			}
		}
	}
	spawner "delay2"
	{
		start		0.2,0.2
		count		7,12

		sprite
		{
			duration	0.3,0.6
			material	"gfx/effects/fire/fire4a"

			start
			{
				position { sphere -750,-750,-750,750,750,750 linearSpacing }
				velocity { box 0,-250,-250,0,250,250 }
				angle { box 0,0,0,1,1,1 }
				size { box 250,250,400,400 }
				offset { box -6,-6,-6,6,6,6 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "linear" }
				fade { envelope "linear" }
				angle { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { box 350,350,800,800 }
				angle { box -1,-1,-1,1,1,1 relative }
				rotate { point 0 relative }
			}
		}
	}
	spawner "delay3"
	{
		start		0.3,0.3
		count		7,12

		sprite
		{
			duration	0.3,0.6
			material	"gfx/effects/fire/fire4a"

			start
			{
				position { sphere -750,-750,-750,750,750,750 linearSpacing }
				velocity { box 0,-250,-250,0,250,250 }
				angle { box 0,0,0,1,1,1 }
				size { box 250,250,400,400 }
				offset { box -6,-6,-6,6,6,6 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "linear" }
				fade { envelope "linear" }
				angle { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { box 350,350,800,800 }
				angle { box -1,-1,-1,1,1,1 relative }
				rotate { point 0 relative }
			}
		}
	}
	spawner "delay4"
	{
		start		0.4,0.4
		count		7,12

		sprite
		{
			duration	0.3,0.6
			material	"gfx/effects/fire/fire4a"

			start
			{
				position { sphere -750,-750,-750,750,750,750 linearSpacing }
				velocity { box 0,-250,-250,0,250,250 }
				angle { box 0,0,0,1,1,1 }
				size { box 250,250,400,400 }
				offset { box -6,-6,-6,6,6,6 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "linear" }
				fade { envelope "linear" }
				angle { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { box 350,350,800,800 }
				angle { box -1,-1,-1,1,1,1 relative }
				rotate { point 0 relative }
			}
		}
	}
	spawner "Debris1"
	{
		count		15,25

		sprite
		{
			duration	3,3
			persist
			material	"gfx/effects/particles_shapes/debris6"

			start
			{
				velocity { box -2000,-2000,-2000,2000,2000,2000 }
				size { line 15,15,90,90 }
				tint { point 0.501961,0.501961,0.501961 }
				rotate { box -1,1 }
			}

			motion
			{
				fade { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				rotate { box -0.5,0.5 relative }
			}
		}
	}
	spawner "Debris2"
	{
		count		10,25

		sprite
		{
			duration	3,3
			persist
			material	"gfx/effects/particles_shapes/debris3"

			start
			{
				velocity { box -2500,-2500,-2500,2500,2500,2500 }
				size { line 15,15,80,80 }
				tint { point 0.501961,0.501961,0.501961 }
				rotate { box -1,1 }
			}

			motion
			{
				fade { envelope "linear" offset -0.5 }
				rotate { envelope "linear" }
			}
		}
	}
	spawner "Main Flare"
	{
		count		2,2

		sprite
		{
			duration	0.35,0.75
			material	"gfx/effects/weapons/shotgun_mflash"

			start
			{
				position { line -50,0,0,50,0,0 linearSpacing }
				velocity { box 0,-250,-250,0,250,250 }
				angle { box 0,0,0,1,1,1 }
				size { point 1200,1200 }
				offset { box -6,-6,-6,6,6,6 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "linear" }
				fade { envelope "linear" }
				angle { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 400,400,600,600 }
				angle { box -1,-1,-1,1,1,1 relative }
				rotate { point 0 relative }
			}
		}
	}
	shake "CameraShake"
	{
		duration	0.75,0.75
		attenuateEmitter
		attenuation	3000,6000
	}
	spawner "Linger Smoke"
	{
		count		12,12

		sprite
		{
			duration	2.5,5
			material	"gfx/effects/smoke/cloud_alpha2"
			gravity		-0.02,-0.02

			start
			{
				position { sphere -1000,-1000,-1000,1000,1000,1000 linearSpacing }
				velocity { box -300,-300,-300,300,300,300 }
				size { box 500,500,1000,1000 }
				tint { point 0.207843,0.203922,0.184314 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				tint { envelope "linear" }
				fade { envelope "cosine" }
				rotate { envelope "linear" }
			}

			end
			{
				tint { point 0.164706,0.164706,0.137255 }
				fade { point 0.6 }
				rotate { box -0.277778,0.277778 relative }
			}
		}
	}
	emitter "nose"
	{
		duration	1,1
		count		1,1

		model
		{
			duration	3,3
			material	"models/vehicles/strogg_flyer/strogg_flyer_lo"
			model		"models/monsters/q4x_strogg_flyer/exp_nose.ase"
			gravity		0.9,0.9

			start
			{
				velocity { box -50,-1000,-50,50,-800,50 }
			}

			motion
			{
				fade { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				rotate { box -2,-2,-2,2,2,2 }
			}

			impact
			{
				bounce	0.5
			}
		}
	}
	emitter "wingright"
	{
		duration	1,1
		count		1,1

		model
		{
			duration	2,2
			material	"models/vehicles/strogg_flyer/strogg_flyer_lo"
			model		"models/monsters/q4x_strogg_flyer/exp_wing_right.ase"
			gravity		0.9,0.9

			start
			{
				velocity { box -50,-1000,-1000,50,-800,-800 }
			}

			motion
			{
				fade { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				rotate { box -2,-2,-2,2,2,2 }
			}

			impact
			{
				bounce	0.5
			}
		}
	}
	emitter "wingleft"
	{
		duration	1,1
		count		1,1

		model
		{
			duration	2,2
			material	"textures/q4x_m10/damaged_pipes01_add"
			model		"models/monsters/q4x_strogg_flyer/exp_wing_left.ase"
			gravity		0.9,0.9

			start
			{
				velocity { box -50,-500,400,50,-400,500 }
			}

			motion
			{
				fade { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				rotate { box -2,-2,-2,2,2,2 }
			}

			impact
			{
				bounce	0.5
			}
		}
	}
	emitter "tail"
	{
		duration	1,1
		count		1,1

		model
		{
			duration	2,2
			material	"models/vehicles/strogg_flyer/strogg_flyer_lo"
			model		"models/monsters/q4x_strogg_flyer/exp_tail.ase"
			gravity		0.9,0.9

			start
			{
				velocity { box -50,-500,-100,50,-400,100 }
				rotate { point 0.25,0.25,0.25 }
			}

			motion
			{
				fade { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				rotate { box -2.84444,-2.84444,-2.84444,2.84444,2.84444,2.84444 }
			}

			impact
			{
				bounce	0.5
			}
		}
	}
	emitter "tailleft"
	{
		duration	1,1
		count		1,1

		model
		{
			duration	2,2
			material	"models/vehicles/strogg_flyer/strogg_flyer_lo"
			model		"models/monsters/q4x_strogg_flyer/exp_tail_left.ase"
			gravity		0.9,0.9

			start
			{
				velocity { box -250,-500,400,250,-400,500 }
				rotate { point 0.25,0.25,0.25 }
			}

			motion
			{
				fade { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				rotate { box -2,-2,-2,2,2,2 }
			}

			impact
			{
				bounce	0.5
			}
		}
	}
	emitter "tailright"
	{
		duration	1,1
		count		1,1

		model
		{
			duration	2,2
			material	"models/vehicles/strogg_flyer/strogg_flyer_lo"
			model		"models/monsters/q4x_strogg_flyer/exp_tail_right.ase"
			gravity		0.9,0.9

			start
			{
				velocity { box -100,-500,-500,100,-300,-300 }
				rotate { point 0.25,0.25,0.25 }
			}

			motion
			{
				fade { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				rotate { box -2.84444,-2.84444,-2.84444,2.84444,2.84444,2.84444 }
			}

			impact
			{
				bounce	0.5
			}
		}
	}
	spawner "ravdebris1"
	{
		count		2,2

		debris
		{
			duration	1,1
			entityDef	"moveable_gib_stroggflyer_wing1"
			gravity		1,1

			start
			{
				position { cylinder 30,-100,-100,30,100,100 surface }
				velocity { box -2000,-3000,-3000,4000,3000,3000 }
			}

			motion
			{
				rotate { envelope "linear" }
			}

			end
			{
				rotate { box -13.8889,-13.8889,-13.8889,13.8889,13.8889,13.8889 relative }
			}
		}
	}
	spawner "ravdebris2"
	{
		count		4,4

		debris
		{
			duration	1,1
			entityDef	"moveable_gib_stroggflyer_wing2"
			gravity		1,1

			start
			{
				position { point 20,0,0 }
				velocity { box -2000,-2000,-2000,2000,2000,2000 }
			}

			motion
			{
				rotate { envelope "acceleratorfade" }
			}

			end
			{
				rotate { box -16.6667,-16.6667,-16.6667,16.6667,16.6667,16.6667 }
			}
		}
	}
	spawner "ravdebris3"
	{
		count		4,4

		debris
		{
			duration	1,1
			entityDef	"moveable_gib_stroggflyer_bit"
			gravity		1,1

			start
			{
				position { point 13.5,0,0 }
				velocity { box -2000,-2000,-2000,1800,2000,2000 }
			}

			motion
			{
				rotate { envelope "linear" }
			}

			end
			{
				rotate { box -5.55556,-5.55556,-5.55556,5.55556,5.55556,5.55556 }
			}
		}
	}
}

