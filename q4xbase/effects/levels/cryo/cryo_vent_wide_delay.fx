effect effects/levels/cryo/cryo_vent_wide_delay
{
	size	419

	emitter "steam1"
	{
		start		3,3
		duration	5,5
		count		15,15

		sprite
		{
			duration	1.75,3
			material	"gfx/effects/smoke/steam_alpha"
			gravity		0.07,0.07

			start
			{
				position { line 0,-10,-10,0,10,10 }
				velocity { box 60,-50,-50,100,50,50 }
				size { box 40,40,45,45 }
				tint { point 0.72549,0.776471,0.784314 }
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
				size { point 120,120 }
				fade { point 0.15 }
				rotate { box -0.222222,0.222222 relative }
			}
		}
	}
	emitter "steam2"
	{
		start		2.5,2.5
		duration	5,5
		count		10,10

		sprite
		{
			duration	1,1
			material	"gfx/effects/smoke/steam_alpha"
			gravity		-0.1,-0.1

			start
			{
				position { line 0,-10,-10,0,10,10 }
				velocity { box 100,-15,-15,300,15,15 }
				acceleration { point -250,0,0 }
				size { box 60,60,75,75 }
				tint { point 0.811765,0.917647,0.996078 }
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
				size { point 100,100 }
				fade { point 0.15 }
				rotate { box -0.222222,0.222222 relative }
			}
		}
	}
	emitter "steam3"
	{
		duration	5,5
		count		5,5

		sprite
		{
			duration	2.2,2.2
			material	"gfx/effects/smoke/steam_alpha"
			gravity		-0.01,-0.01

			start
			{
				position { line 0,-10,-10,0,10,10 }
				velocity { box 50,-15,-15,55,15,15 }
				size { box 60,60,75,75 }
				tint { point 0.72549,0.780392,0.784314 }
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
				size { point 100,100 }
				fade { point 0.15 }
				rotate { box -0.222222,0.222222 relative }
			}
		}
	}
	sound "sound"
	{
		soundShader	"effects_steam_blast"
	}
}
