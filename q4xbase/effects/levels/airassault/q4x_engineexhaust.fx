effect effects/levels/airassault/q4x_engineexhaust
{
	size	875

	emitter "flamecore"
	{
		duration	1,1
		count		8,8
		locked

		line
		{
			duration	0.25,0.25
			material	"gfx/effects/smoke/steam_source"
			generatedNormal

			start
			{
				size { point 24 }
				tint { point 0.501961,0.858824,1 }
				length { point 55,25,55 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" }
				length { envelope "linear" }
			}

			end
			{
				size { point 48 }
				length { point 55,300,55 }
			}
		}
	}
	emitter "smoke"
	{
		duration	1,1
		count		12,12

		sprite
		{
			duration	1,1.25
			material	"gfx/effects/smoke/cloud_alpha"
			gravity		-0.01,0.01
			generatedOriginNormal

			start
			{
				position { point 40,0,0 }
				velocity { box 1000,-15,-15,1200,15,15 }
				size { box 32,32,36,36 }
				tint { point 0.815686,0.803922,0.74902 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "fastinslowout" }
				rotate { envelope "linear" }
			}

			end
			{
				size { box 128,128,256,256 }
				fade { point 0.2 }
				rotate { box -0.111111,0.111111 relative }
			}
		}
	}
	emitter "blue_fire"
	{
		duration	1,1
		count		25,25

		sprite
		{
			duration	0.3,0.4
			blend	add
			material	"gfx/effects/fire/fire2b"

			start
			{
				position { line 0,-8,-8,0,8,8 }
				velocity { box 1200,-2,-2,1600,2,2 }
				size { box 24,24,32,32 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "fast_in_slow_out" }
				rotate { envelope "linear" }
			}

			end
			{
				size { box 64,64,80,80 }
				fade { point 1 }
				rotate { box -0.388889,0.388889 relative }
			}
		}
	}
	emitter "heathaze"
	{
		detail		0.3
		duration	1,1
		count		5,5

		sprite
		{
			duration	3,3
			blend	add
			material	"gfx/effects/energy_sparks/warp_mask"

			start
			{
				velocity { box 350,0,0,500,0,0 }
				size { point 96,96 }
			}

			motion
			{
				tint { envelope "linear" }
				fade { envelope "linear" }
			}

			end
			{
				tint { point 0.501961,0.501961,1 }
			}
		}
	}
}






