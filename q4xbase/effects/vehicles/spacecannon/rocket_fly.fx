effect effects/vehicles/spacecannon/rocket_fly
{
	size	134

	emitter "SmokeTrail"
	{
		duration	3,3
		count		35,35

		sprite
		{
			duration	0.6,1.5
			material	"gfx/effects/smoke/cloud_alpha2"

			start
			{
				position { line 0,-2,-2,0,2,2 }
				velocity { box -25,-25,-25,25,25,25 }
				size { line 20,20,25,25 }
				tint { line 0.839216,0.827451,0.803922,0.529412,0.529412,0.482353 }
				fade { point 0.65 }
				offset { point -5,0,0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 40,40,70,70 }
				rotate { box -0.25,0.25 relative }
			}
		}
	}
	emitter "FireTrail"
	{
		duration	4,4
		count		80,80

		sprite
		{
			duration	0.2,0.2
			material	"gfx/effects/fire/fire2a"

			start
			{
				position { line 0,-2,-2,0,2,2 }
				size { line 20,20,25,25 }
				tint { point 0.87451,0.513726,0.407843 }
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
				rotate { box -0.25,0.25 relative }
			}
		}
	}
	spawner "line3"
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
				size { point 15 }
				tint { point 0.74902,0.74902,0.74902 }
				length { point -30,0,0 }
			}

			motion
			{
				tint { envelope "random" }
			}
		}
	}
	emitter "line_inner3"
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
				size { point 9 }
				length { box -30,0,0,-20,0,0 }
			}
		}
	}
	emitter "side_streaks3"
	{
		duration	1,1
		count		50,50
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
				size { box 16,20 }
				tint { point 1,0.501961,0.501961 }
				fade { point 0 }
				offset { point -3,0,0 }
				length { box 15,0,0,20,0,0 }
			}

			motion
			{
				fade { envelope "fast_in_slow_out" }
				length { envelope "linear" }
			}

			end
			{
				fade { point 0.75 }
				length { box 25,0,0,30,0,0 }
			}
		}
	}
	sound "unnamed9"
	{
		soundShader	"effects_rocket_loop"
		volume	0.7,0.7
	}
	sound "unnamed10"
	{
		soundShader	"player_rocketlauncher_fly"
	}
	emitter "TrailLine"
	{
		duration	5,5
		count		12,12

		linked
		{
			duration	2,2
			blend	add
			material	"gfx/effects/fire/fireline1"

			start
			{
				size { point 35 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "linear" }
				fade { envelope "linear" }
			}

			end
			{
				size { point 12 }
			}
		}
	}
}

