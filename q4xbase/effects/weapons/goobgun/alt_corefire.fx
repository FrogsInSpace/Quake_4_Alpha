effect effects/weapons/goobgun/alt_corefire
{
	size	464

	sound "sound"
	{
		soundShader	"effects_blowtorch"
	}
	emitter "flamecore"
	{
		duration	0.15,0.15
		count		20,20
		locked

		line
		{
			duration	0.15,0.15
			material	"gfx/effects/smoke/steam_source"
			generatedNormal

			start
			{
				size { point 3 }
				tint { point 1,0.694118,0.54902 }
				length { point 55,35,55 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" }
				length { envelope "linear" }
			}

			end
			{
				size { point 20 }
				length { point 55,125,55 }
			}
		}
	}
	emitter "smoke"
	{
		duration	0.25,0.25
		count		8,8

		sprite
		{
			duration	1.25,2
			material	"gfx/effects/smoke/cloud_alpha"
			gravity		-0.05,-0.03
			generatedOriginNormal

			start
			{
				position { line 120,16,0,220,16,0 }
				velocity { box 150,-25,-25,300,25,25 }
				friction { point -400,0,0 }
				size { box 20,20,30,30 }
				tint { point 0.0784314,0.0666667,0.0627451 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "cosine" }
				rotate { envelope "linear" }
			}

			end
			{
				size { box 70,70,90,90 }
				fade { point 0.6 }
				rotate { box -0.111111,0.111111 relative }
			}
		}
	}
	emitter "fire"
	{
		duration	0.22,0.22
		count		75,75

		sprite
		{
			duration	0.275,0.675
			blend	add
			material	"gfx/effects/fire/fire4a"
			gravity		-0.02,0

			start
			{
				position { line 4,-1,-1,4,1,1 }
				velocity { box 425,-20,-20,800,20,20 }
				friction { point -252,0,0 }
				size { box 2,2,5,5 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "exp_x2" }
				fade { envelope "exp_x2" }
				rotate { envelope "linear" }
			}

			end
			{
				size { box 45,45,65,65 }
				rotate { box -0.25,0.25 relative }
			}
		}
	}
	emitter "fire3"
	{
		duration	0.25,0.25
		count		30,30

		sprite
		{
			duration	0.15,0.25
			blend	add
			material	"gfx/effects/fire/fire3a"
			gravity		-0.02,0

			start
			{
				position { line 6,-1,-1,6,1,1 }
				velocity { box 300,-10,-10,800,10,10 }
				size { point 4,4 }
				fade { point 0.5 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "exp_x2" }
				fade { envelope "fastinslowout" }
				rotate { envelope "linear" }
			}

			end
			{
				size { box 12,12,14,14 }
				fade { point 1 }
				rotate { box -0.388889,0.388889 relative }
			}
		}
	}
	emitter "blue_fire"
	{
		duration	0.25,0.25
		count		25,25

		sprite
		{
			duration	0.2,0.3
			blend	add
			material	"gfx/effects/fire/fire2b"
			gravity		-0.02,0

			start
			{
				position { line 5,-1,-1,5,1,1 }
				velocity { box 300,-10,-10,700,10,10 }
				size { box 4,4,8,8 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "exp_x2" }
				fade { envelope "fast_in_slow_out" }
				rotate { envelope "linear" }
			}

			end
			{
				size { box 15,15,20,20 }
				fade { point 1 }
				rotate { box -0.388889,0.388889 relative }
			}
		}
	}
	sound "sound2"
	{
		soundShader	"effects_fire_gas"
	}
	emitter "heathaze"
	{
		detail		0.3
		duration	0.25,0.25
		count		5,5

		sprite
		{
			duration	0.4,0.4
			blend	add
			material	"gfx/effects/energy_sparks/warp_mask"

			start
			{
				position { point 7,0,0 }
				velocity { box 100,0,0,400,0,0 }
				size { point 15,15 }
			}

			motion
			{
				size { envelope "exp_x2" }
				tint { envelope "linear" }
				fade { envelope "linear" }
			}

			end
			{
				size { point 35,35 }
				tint { point 0.501961,0.501961,1 }
			}
		}
	}
	shake "CameraShake2"
	{
		duration	0.15,0.25
		scale		2
		attenuateEmitter
		attenuation	100,200
	}
	emitter "Muzflash"
	{
		duration	0.2,0.2
		count		26,30
		locked

		sprite
		{
			duration	0.1,0.15
			blend	add
			material	"gfx/effects/weapons/rail_flash"

			start
			{
				velocity { box 20,0,0,100,0,0 }
				size { box 4,4,6,6 }
				tint { point 0.929412,0.360784,0.278431 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" }
			}

			end
			{
				size { box 3,3,4,4 }
				fade { point 0.85 }
			}
		}
	}
}


