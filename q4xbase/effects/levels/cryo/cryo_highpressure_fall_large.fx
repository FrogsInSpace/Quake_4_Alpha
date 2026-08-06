effect effects/levels/cryo/cryo_highpressure_fall_large
{
	size	326

	sound "sound"
	{
		soundShader	"effects_blowtorch"
	}
	emitter "spout"
	{
		duration	25,25
		count		10,15
		locked

		line
		{
			duration	0.25,0.25
			material	"gfx/effects/smoke/steam_source"
			generatedNormal

			start
			{
				size { point 5 }
				fade { point 0.75 }
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
				size { point 40 }
				length { point 55,200,55 }
			}
		}
	}
	emitter "end"
	{
		duration	25,25
		count		3,3

		sprite
		{
			duration	2,3
			material	"gfx/effects/smoke/steam_alpha"
			gravity		-0.03,0.07
			generatedOriginNormal

			start
			{
				position { line 45,0,0,65,0,0 }
				velocity { box 25,-10,-15,50,10,15 }
				size { point 10,10 }
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
				size { box 100,100,125,125 }
				fade { point 0.25 }
				rotate { box -0.166667,0.166667 relative }
			}
		}
	}
	emitter "source"
	{
		duration	25,25
		count		6,6

		sprite
		{
			duration	1,2
			material	"gfx/effects/smoke/steam_alpha"
			gravity		0.02,0.05

			start
			{
				position { line 0,-1,-1,0,1,1 }
				velocity { box 5,-10,-10,150,10,10 }
				size { box 2,2,5,5 }
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
				size { box 85,85,100,100 }
				fade { point 0.25 }
				rotate { box -0.166667,0.166667 relative }
			}
		}
	}
	emitter "nozzle"
	{
		duration	25,25
		count		20,20
		locked

		line
		{
			duration	0.2,0.25
			material	"gfx/effects/smoke/steam_alpha"
			generatedOriginNormal

			start
			{
				position { line 0.05,-0.05,0.05,0.05,0.05,0.05 }
				size { point 2 }
				fade { point 0.75 }
				length { box 5,-0.5,-0.5,6,0.5,0.5 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" }
				length { envelope "linear" }
			}

			end
			{
				size { point 4 }
				length { box 20,-10,-10,30,10,10 }
			}
		}
	}
	emitter "mask"
	{
		duration	25,25
		count		3,3

		oriented
		{
			duration	2,2
			material	"gfx/effects/smoke/steam_alpha"

			start
			{
				position { line 0.05,0,0,1,0,0 }
				size { point 12,12 }
				fade { point 0 }
				rotate { box 0,0,0.5,0,0,-0.5 }
			}

			motion
			{
				size { envelope "popoverextreme_hold_fade" }
				fade { envelope "fast_in_slow_out" }
				rotate { envelope "linear" }
			}

			end
			{
				fade { point 1 }
			}
		}
	}
}
