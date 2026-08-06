effect effects/levels/airassault/q4x_m03_red_fly
{
	size	812

	emitter "trail"
	{
		duration	1,1
		count		50,50
		locked

		sprite
		{
			duration	1,1
			persist
			material	"gfx/effects/smoke/cloud_alpha2"

			start
			{
				position { line 0,-2,-2,0,2,2 }
				size { line 4,4,8,8 }
				tint { line 0.913726,0.788235,0.788235,0.87451,0.368627,0.368627 }
				fade { point 0.1 }
				offset { point -5,0,0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 30,30,36,36 }
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
				size { line 13,13,15,15 }
				tint { point 0.27451,0.27451,0 }
				fade { point 0.1 }
				offset { point -5,0,0 }
				rotate { box 0,1 }
			}

			motion
			{
				tint { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				tint { point 0.196078,0.172549,0.0862745 }
				rotate { box -0.25,0.25 relative }
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
				size { box 4,5 }
				tint { point 0.486275,0.682353,1 }
				fade { point 0 }
				offset { point -3,0,0 }
				length { box 4,0,0,8,0,0 }
			}

			motion
			{
				fade { envelope "fast_in_slow_out" }
				length { envelope "linear" }
			}

			end
			{
				fade { point 0.75 }
				length { box 64,0,0,96,0,0 }
			}
		}
	}
	sound "unnamed7"
	{
		soundShader	"effects_rocket_loop"
		volume	3,3
	}
	sound "unnamed8"
	{
		soundShader	"player_rocketlauncher_fly"
		volume	3,3
	}
	emitter "unnamed10"
	{
		duration	1,1
		count		1,1
		locked

		line
		{
			duration	1,1
			material	"gfx/effects/hal9000/rocket_trail_red"

			start
			{
				position { point -8,0,0 }
				size { point 8 }
				length { point -800,0,0 }
			}
		}
	}
}



