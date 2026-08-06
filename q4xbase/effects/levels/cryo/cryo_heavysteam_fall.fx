effect effects/levels/cryo/cryo_heavysteam_fall
{
	size	173

	sound "sound"
	{
		soundShader	"effects_blowtorch"
	}
	emitter "steam"
	{
		duration	1,1
		count		4,6

		sprite
		{
			duration	1,1.9
			material	"gfx/effects/smoke/cloud_alpha"
			gravity		0.02,0.08

			start
			{
				position { line 10,-1,-1,10,1,1 }
				velocity { box 20,-15,-15,65,15,15 }
				size { box 10,10,20,20 }
				tint { point 0.917647,1,1 }
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
				size { box 60,60,70,70 }
				fade { point 0.3 }
				rotate { box -0.166667,0.166667 relative }
			}
		}
	}
	emitter "steam2"
	{
		duration	1,1
		count		4,6

		sprite
		{
			duration	0.75,1.5
			material	"gfx/effects/smoke/steam_alpha"
			gravity		0.03,0.07

			start
			{
				position { line 10,-1,-1,10,1,1 }
				velocity { box 20,-10,-10,65,10,10 }
				size { box 10,10,20,20 }
				tint { point 0.92549,0.984314,1 }
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
				size { box 60,60,70,70 }
				fade { point 0.3 }
				rotate { box -0.166667,0.166667 relative }
			}
		}
	}
}
