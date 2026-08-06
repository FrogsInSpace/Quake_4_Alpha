effect effects/monsters/flyer_space/q4x_aa_explode
{
	size	5797

	sound "sound"
	{
		soundShader	"effects_q4x_barrel_explode"
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
	sound "unnamed15"
	{
		soundShader	"player_rocketlauncher_explode2"
	}
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
}















