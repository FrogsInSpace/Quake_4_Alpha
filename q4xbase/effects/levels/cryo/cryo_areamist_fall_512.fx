effect effects/levels/cryo/cryo_areamist_fall_512
{
	size	378

	emitter "steam1"
	{
		duration	1,1
		count		20,20

		sprite
		{
			duration	2.75,5
			persist
			material	"gfx/effects/smoke/cloud_alpha2"
			gravity		0,0.0125

			start
			{
				position { cylinder -200,-200,-60,200,200,60 }
				velocity { box -10,-10,-10,10,10,10 }
				angle { box 0,0,0,1,0,1 }
				size { box 50,50,90,90 }
				tint { line 0.901961,0.956863,1,0.768628,0.905882,0.984314 }
				fade { line 0.015,0.15 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "cosine" offset 0.5 }
				angle { envelope "exp_x2" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 100,100,120,120 }
				angle { box -0.5,0,-0.5,0.5,0,0.5 relative }
				rotate { point 0 relative }
			}
		}
	}
	sound "Sound"
	{
		soundShader	"effects_blowtorch"
	}
}
