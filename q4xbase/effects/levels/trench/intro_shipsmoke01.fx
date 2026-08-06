effect effects/levels/trench/intro_shipsmoke01
{
	size	1404

	emitter "smoke"
	{
		duration	1,1
		count		40,40

		sprite
		{
			duration	3,4
			material	"gfx/effects/smoke/smoke_dark"
			gravity		-0.001,-0.001

			start
			{
				position { cylinder -10,-10,-10,10,10,10 }
				velocity { box 300,-20,-30,600,20,30 }
				size { line 60,60,100,100 }
				tint { line 0.447059,0.447059,0.447059,0.47451,0.447059,0.368627 }
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
				size { line 150,150,245,245 }
				fade { line 0.45,0.85 }
				rotate { box -0.111111,0.111111 relative }
			}
		}
	}
	emitter "Fire"
	{
		duration	1,1
		count		30,30

		sprite
		{
			duration	0.3,1
			blend	add
			material	"gfx/effects/fire/fire1a"
			gravity		-0.001,-0.001

			start
			{
				velocity { box 400,-20,-20,700,20,20 }
				size { line 45,45,75,75 }
				tint { line 1,1,1,0.870588,0.862745,0.827451 }
				fade { line 0.9,1 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "exp_x2" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 125,125,175,175 }
				rotate { box -0.180556,0.180556 relative }
			}
		}
	}
}
