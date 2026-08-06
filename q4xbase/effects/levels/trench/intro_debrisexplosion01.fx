effect effects/levels/trench/intro_debrisexplosion01
{
	size	2674

	spawner "gibsprites2"
	{
		count		35,40

		sprite
		{
			duration	1.25,2.2
			material	"common/freezegib/ice02"
			entityDef	"debris_icegib_05"
			gravity		1,1.1
			generatedOriginNormal

			start
			{
				position { box -20,-10,-10,60,10,10 }
				velocity { box 200,-100,50,500,100,200 }
				tint { line 0.803922,0.8,0.756863,0.729412,0.776471,0.639216 }
				rotate { box 0,1 }
			}

			motion
			{
				rotate { envelope "linear" }
			}

			end
			{
				rotate { box -0.388889,0.388889 relative }
			}

			impact
			{
				bounce	0.52
			}
		}
	}
	emitter "icedebris2"
	{
		duration	1,1
		count		2,2

		debris
		{
			duration	3,3
			entityDef	"q4x_debris_intro_02"
			gravity		1,1

			start
			{
				position { sphere 0,-5,-5,60,5,5 surface }
				velocity { box 300,-200,100,800,200,450 }
				rotate { box -0.972222,-0.277778,-0.972222,0.972222,0.972222,0.972222 }
			}

			motion
			{
				rotate { envelope "linear" }
			}

			end
			{
				rotate { box -0.555556,-0.555556,-0.555556,0.555556,0.555556,0.555556 relative }
			}
		}
	}
	emitter "icedebris3"
	{
		duration	1,1
		count		2,2

		debris
		{
			duration	3,3
			entityDef	"q4x_debris_intro_03"
			gravity		1,1

			start
			{
				position { sphere 0,-5,-5,60,5,5 surface }
				velocity { box 300,-200,100,800,200,300 }
				rotate { box -0.972222,-0.277778,-0.972222,0.972222,0.972222,0.972222 }
			}

			motion
			{
				rotate { envelope "linear" }
			}

			end
			{
				rotate { box -0.555556,-0.555556,-0.555556,0.555556,0.555556,0.555556 relative }
			}
		}
	}
	emitter "icedebris4"
	{
		duration	1,1
		count		2,2

		debris
		{
			duration	3,3
			entityDef	"q4x_debris_intro_04"
			gravity		1,1

			start
			{
				position { sphere 0,-5,-5,60,5,5 surface }
				velocity { box 400,-200,50,800,200,100 }
				rotate { box -0.972222,-0.277778,-0.972222,0.972222,0.972222,0.972222 }
			}

			motion
			{
				rotate { envelope "linear" }
			}

			end
			{
				rotate { box -0.555556,-0.555556,-0.555556,0.555556,0.555556,0.555556 relative }
			}
		}
	}
	emitter "icedebris5"
	{
		duration	1,1
		count		2,2

		debris
		{
			duration	3,3
			entityDef	"q4x_debris_intro_05"
			gravity		1,1

			start
			{
				position { sphere 0,-5,-5,60,5,5 surface }
				velocity { box 150,-250,50,800,250,400 }
				rotate { box -0.972222,-0.277778,-0.972222,0.972222,0.972222,0.972222 }
			}

			motion
			{
				rotate { envelope "linear" }
			}

			end
			{
				rotate { box -0.555556,-0.555556,-0.555556,0.555556,0.555556,0.555556 relative }
			}
		}
	}
	emitter "steamcore2"
	{
		duration	2.5,2.5
		count		26,35

		sprite
		{
			duration	1,2
			material	"gfx/effects/smoke/steam_alpha"
			entityDef	"debris_icegib_05"
			gravity		-0.01,0.02

			start
			{
				position { box 0,-20,-20,0,20,25 }
				velocity { box 450,-20,-20,900,20,250 }
				size { point 65,65 }
				tint { line 0.803922,0.8,0.756863,0.729412,0.776471,0.639216 }
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
				size { line 100,100,250,250 }
				fade { point 0.05 }
				rotate { box -0.388889,0.388889 relative }
			}
		}
	}
	delay "unnamed6"
	{
		duration	6,6
	}
}

