effect effects/monsters/tank/rocket_fly
{
	size	357
	sound "sound"
	{
		soundShader	"tank_missile_loop"
	}
	emitter "trail"
	{
		duration	1,1
		count		50,50

		sprite
		{
			duration	1,1
			persist
			material	"gfx/effects/smoke/cloud_alpha2"

			start
			{
				position { line 0,-2,-2,0,2,2 }
				size { line 14,14,18,18 }
				tint { line 0.584314,0.54902,0.482353,0.376471,0.376471,0.337255 }
				fade { point 0.4 }
				offset { point -5,0,0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope linear }
				fade { envelope exp_1minusx/x2 }
				rotate { envelope linear }
			}

			end
			{
				size { line 24,24,28,28 }
				rotate { box -0.25,0.25 relative }
			}
		}
	}
	emitter "firetrail"
	{
		duration	1,1
		count		80,80

		sprite
		{
			duration	0.1,0.1
			persist
			material	"gfx/effects/fire/fire4a"

			start
			{
				position { line 0,-2,-2,0,2,2 }
				size { line 8,8,10,10 }
				tint { point 0.45098,0.333333,0.27451 }
				offset { point -5,0,0 }
				rotate { box 0,1 }
			}

			motion
			{
				tint { envelope linear }
				rotate { envelope linear }
			}

			end
			{
				rotate { box -0.25,0.25 relative }
			}
		}
	}
	spawner "line"
	{
		count		1,1
		locked
		constant

		line
		{
			duration	5,5
			material	"gfx/effects/fire/fireline1"

			start
			{
				position { point -2,0,0 }
				size { point 6 }
				tint { point 0.74902,0.74902,0.74902 }
				length { point -30,0,0 }
			}

			motion
			{
				tint { envelope random }
			}
		}
	}
	emitter "line_inner"
	{
		duration	1,1
		count		15,15
		locked

		line
		{
			duration	0.1,0.1
			material	"gfx/effects/fire/fireline1"

			start
			{
				position { point -2,0,0 }
				size { point 3 }
				length { box -30,0,0,-20,0,0 }
			}
		}
	}
	emitter "side_streaks"
	{
		duration	1,1
		count		40,40
		locked

		line
		{
			duration	0.3,0.3
			blend	add
			material	"gfx/effects/weapons/flash_half"
			generatedOriginNormal

			start
			{
				position { cylinder -0.1,-0.1,-0.1,-0.1,0.1,0.1 surface }
				size { box 3,4 }
				tint { point 0.490196,0.682353,1 }
				fade { point 0 }
				offset { point -3,0,0 }
				length { box 4,0,0,8,0,0 }
			}

			motion
			{
				fade { envelope fast_in_slow_out }
				length { envelope linear }
			}

			end
			{
				fade { point 0.75 }
				length { box 20,0,0,25,0,0 }
			}
		}
	}
	spawner "flash"
	{
		count		1,1
		locked
		constant

		sprite
		{
			duration	1,1
			material	"gfx/effects/weapons/flash"

			start
			{
				position { point -4,0,0 }
				size { line 12,12,16,16 }
			}
		}
	}
	emitter "sparks_lines"
	{
		duration	1,1
		count		50,50

		line
		{
			duration	0.2,0.2
			blend	add
			generatedLine
			material	"gfx/effects/energy_sparks/spark_line2"
			generatedOriginNormal
			flipNormal

			start
			{
				position { cylinder 0.1,-0.1,-0.1,0.1,0.1,0.1 }
				velocity { box 50,0,0,200,0,0 }
				size { box 0.5,1 }
				tint { line 1,0.984314,0.831373,1,0.701961,0.364706 }
				length { box 2,0,0,4,0,0 }
			}

			motion
			{
				size { envelope linear }
				fade { envelope linear }
			}

			end
			{
				size { point 0 }
			}
		}
	}
	light "light"
	{

		light
		{
			duration	0.1,0.1
			blend	add
			material	"lights/defaultPointLight"

			start
			{
				position { point -20,0,0 }
				size { point 200,200,200 }
				tint { point 1,1,0.501961 }
			}
		}
	}
}












