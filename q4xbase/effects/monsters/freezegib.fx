effect effects/monsters/freezegib
{
	size	2713

	sound "sound"
	{
		soundShader	"freeze_death_gib"
	}
	spawner "splat"
	{
		count		10,10

		sprite
		{
			duration	0.12,0.12
			material	"textures/decals/dsplat2"
			generatedOriginNormal

			start
			{
				position { cylinder -1,-1,-1,1,1,1 }
				velocity { point 5000,0,0 }
				size { box 5,5,10,10 }
				rotate { line 0,1 }
			}

			impact
			{
				remove	1
				effect	"effects/monsters/gib_splat"
			}
		}
	}
	spawner "blood2"
	{
		count		3,3

		sprite
		{
			duration	0.7,1
			material	"gfx/effects/gore_spray/bloodhit4"
			gravity		0.05,0.05

			start
			{
				position { line 0,0,0,10,0,0 linearSpacing }
				velocity { box 10,0,0,40,0,80 }
				size { line 50,50,60,60 }
				tint { line 0.117647,0.0156863,0.0156863,0.156863,0,0 }
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
				size { line 100,100,140,140 }
				fade { point 1 }
				rotate { box -0.111111,0.111111 relative }
			}
		}
	}
	spawner "blood_streaks"
	{
		count		25,25
		locked

		line
		{
			duration	0.25,0.5
			generatedLine
			material	"gfx/effects/gore_spray/bloodline1"
			generatedOriginNormal
			flipNormal

			start
			{
				position { cylinder -0.2,-0.3,-0.3,0.2,0.3,0.3 surface }
				velocity { point 1,0,0 }
				size { box 15,20 }
				tint { point 0.866667,0,0 }
				length { box 40,0,0,45,0,0 }
			}

			motion
			{
				tint { envelope "linear" }
				fade { envelope "linear" }
				length { envelope "linear" }
			}

			end
			{
				tint { point 0.501961,0,0 }
				length { box 150,0,0,200,0,0 }
			}
		}
	}
	spawner "icedebris01"
	{
		count		6,6

		debris
		{
			duration	3,3
			entityDef	"debris_icegib_01"
			gravity		1,1

			start
			{
				position { cylinder 0,-5,-5,60,5,5 surface }
				velocity { box -350,-350,50,350,350,600 }
				rotate { box -0.277778,-0.277778,-0.277778,0.277778,0.277778,0.277778 }
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
	spawner "icedebris02"
	{
		count		4,4

		debris
		{
			duration	2,2
			entityDef	"debris_icegib_02"
			gravity		1,1

			start
			{
				position { cylinder 0,-5,-5,60,5,5 surface }
				velocity { box -400,-400,0,400,400,600 }
				rotate { box -0.277778,-0.277778,-0.277778,0.277778,0.277778,0.277778 }
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
	spawner "icedebris03"
	{
		count		3,3

		debris
		{
			duration	2,2
			entityDef	"debris_icegib_03"
			gravity		1,1

			start
			{
				position { cylinder 0,-5,-5,60,5,5 surface }
				velocity { box -400,-400,0,400,400,400 }
				rotate { box -0.277778,-0.277778,-0.277778,0.277778,0.277778,0.277778 }
			}

			motion
			{
				rotate { envelope "linear" }
			}

			end
			{
				rotate { box -1.38889,-1.38889,-1.38889,1.38889,1.38889,1.38889 relative }
			}
		}
	}
	spawner "icedebris04"
	{
		count		3,3

		debris
		{
			duration	3,3
			entityDef	"debris_icegib_04"
			gravity		1,1

			start
			{
				position { cylinder 0,-5,-5,60,5,5 surface }
				velocity { box -250,-250,50,250,250,500 }
				rotate { box -0.277778,-0.277778,-0.277778,0.277778,0.277778,0.277778 }
			}

			motion
			{
				rotate { envelope "linear" }
			}

			end
			{
				rotate { box -1.38889,-1.38889,-1.38889,1.38889,1.38889,1.38889 relative }
			}
		}
	}
	spawner "icedebris05"
	{
		count		3,3

		debris
		{
			duration	3,3
			entityDef	"debris_icegib_05"
			gravity		1,1

			start
			{
				position { cylinder 0,-5,-5,60,5,5 surface }
				velocity { box -250,-250,50,250,250,600 }
				rotate { box -0.277778,-0.277778,-0.277778,0.277778,0.277778,0.277778 }
			}

			motion
			{
				rotate { envelope "linear" }
			}

			end
			{
				rotate { box -1.38889,-1.38889,-1.38889,1.38889,1.38889,1.38889 relative }
			}
		}
	}
	spawner "steamcore"
	{
		count		22,26

		sprite
		{
			duration	1,2
			material	"gfx/effects/smoke/steam_alpha"
			entityDef	"debris_icegib_05"
			gravity		-0.01,0.02
			generatedOriginNormal

			start
			{
				position { box -20,-10,-10,60,10,10 }
				velocity { box 5,-20,-20,110,20,20 }
				size { line 30,30,40,40 }
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
				size { line 50,50,85,85 }
				fade { point 0.3 }
				rotate { box -0.388889,0.388889 relative }
			}
		}
	}
	spawner "gibsprites"
	{
		count		35,40

		sprite
		{
			duration	0.8,1.2
			material	"common/freezegib/ice02"
			entityDef	"debris_icegib_05"
			gravity		1,1.1
			generatedOriginNormal

			start
			{
				position { box -20,-10,-10,60,10,10 }
				velocity { box -300,-300,-100,300,300,1000 }
				size { line 3,3,5,5 }
				tint { line 0.803922,0.8,0.756863,0.729412,0.776471,0.639216 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 3,3,2,2 }
				rotate { box -0.388889,0.388889 relative }
			}
		}
	}
}










