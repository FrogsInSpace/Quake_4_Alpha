effect effects/levels/cryo/cryo_floorfog01
{
	size	792

	emitter "oriented fog"
	{
		duration	30,30
		count		25,30

		oriented
		{
			duration	2,5
			material	"gfx/effects/smoke/steam_alpha"
			gravity		0.001,0.002

			start
			{
				position { sphere 0,-600,-600,0,600,600 }
				size { line 120,120,160,160 }
				tint { point 0.603922,0.682353,0.752745 }
				fade { point 0 }
				rotate { box 0,0,0,0,0,1 }
			}

			motion
			{
				fade { envelope cosine }
				rotate { envelope linear }
			}

			end
			{
				fade { line 0.2,0.5 }
				rotate { box 0,0,-0.111111,0,0,0.111111 relative }
			}
		}
	}
}

