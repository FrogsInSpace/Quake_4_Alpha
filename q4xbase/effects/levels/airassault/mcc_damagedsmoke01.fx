effect effects/levels/airassault/mcc_damagedsmoke01
{
	size	1118

	emitter "embers"
	{
		duration	1,1
		count		10,10

		sprite
		{
			duration	3,6
			blend	add
			material	"gfx/effects/energy_sparks/spark3"

			start
			{
				position { cylinder 15,-15,-15,15,15,15 }
				velocity { box -400,-50,-50,-50,50,50 }
				angle { box 0,0,0,1,1,1 }
				size { point 20,20 }
				fade { point 0 }
				offset { box 0,-20,-20,0,20,20 }
				rotate { box 0,1 }
			}

			motion
			{
				tint { envelope "linear" }
				fade { envelope "fastinslowout" }
				angle { envelope "linear" }
			}

			end
			{
				fade { point 1 }
				angle { box -1,-1,-1,1,1,1 relative }
			}
		}
	}
	emitter "smoke2"
	{
		duration	1,1
		count		12,12

		sprite
		{
			duration	3,4.5
			material	"gfx/effects/smoke/smoke_dark"

			start
			{
				position { cylinder 40,-25,-25,40,25,25 }
				velocity { box -300,-20,-20,-100,20,20 }
				size { point 50,50 }
				tint { point 0.752941,0.752941,0.752941 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "linear" }
				fade { envelope "cosine" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 125,125,225,225 }
				fade { point 0.3 }
				rotate { box -0.333333,0.333333 relative }
			}
		}
	}
	emitter "fire6"
	{
		duration	1,1
		count		5,5

		sprite
		{
			duration	0.85,0.95
			blend	add
			material	"gfx/effects/fire/fire1a"

			start
			{
				position { cylinder 0,-15,-15,0,15,15 }
				velocity { box -20,0,0,0,0,0 }
				angle { box 0,0,0,0,0,1 }
				size { box 20,20,40,40 }
				fade { point 0 }
				offset { box 0,-5,-5,0,5,5 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "fastinslowout" }
				angle { envelope "linear" }
			}

			end
			{
				size { box 80,80,100,100 }
				fade { line 0.75,1 }
				angle { box 0,0,0,0,0,1 }
			}
		}
	}
	emitter "fire7"
	{
		duration	1,1
		count		4,4

		sprite
		{
			duration	1,2
			blend	add
			material	"gfx/effects/fire/fire2a"

			start
			{
				position { cylinder 5,-8,-8,5,8,8 }
				velocity { box -255,0,0,-65,0,0 }
				angle { box 0,0,0,0,0,1 }
				size { line 30,30,40,40 }
				fade { point 0 }
				offset { box -10,-10,-10,10,10,10 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "fastinslowout" }
				angle { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { box 150,150,160,160 }
				fade { point 1 }
				angle { box 0,0,-1,0,0,1 relative }
				rotate { box -0.0555556,0.0555556 relative }
			}
		}
	}
	emitter "fire8"
	{
		duration	1,1
		count		5,5

		sprite
		{
			duration	1,1
			blend	add
			material	"gfx/effects/fire/fire3a"

			start
			{
				position { cylinder 10,-10,-10,10,10,10 }
				velocity { box -100,-15,-15,-30,15,15 }
				angle { box 0,0,0,1,1,1 }
				size { box 50,50,60,60 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "fastinslowout" }
				angle { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 150,150,100,100 }
				fade { point 1 }
				angle { box -1,-1,-1,1,1,1 relative }
				rotate { box -0.0555556,0.0555556 relative }
			}
		}
	}
}
