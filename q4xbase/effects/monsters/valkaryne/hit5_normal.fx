effect effects/monsters/valkaryne/hit5_normal
{
	size	110

	emitter "smoke"
	{
		duration	0.25,0.25
		count		7,9

		sprite
		{
			duration	1,1.5
			persist
			material	"gfx/effects/smoke/cloud_alpha3"
			gravity		0.05,0.05

			start
			{
				velocity { box 10,-5,-5,60,5,5 }
				acceleration { point -20,0,0 }
				size { line 1,3,2,4 }
				tint { point 0.403922,0.411765,0.384314 }
				fade { point 0.5 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "linear" }
				fade { envelope "linear" }
			}

			end
			{
				size { line 15,15,25,25 }
				tint { point 0.176471,0.176471,0.168627 }
			}
		}
	}
	emitter "sparks_trails"
	{
		duration	0.25,0.25
		count		7,9

		sprite
		{
			duration	0.35,0.5
			persist
			material	"gfx/effects/particles_shapes/blank"
			gravity		0.5,1
			trailType	motion
			trailTime	0.1,0.1
			trailCount	3,3

			start
			{
				velocity { box 50,-150,-150,300,150,150 }
				size { box 1,1,2,2 }
				tint { point 0.913726,0.858824,0.729412 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "linear" }
			}

			end
			{
				size { point 0.5,0.5 }
				tint { line 0.929412,0.796079,0.321569,0.909804,0.501961,0.364706 }
			}
		}
	}
	emitter "sparks_lines"
	{
		duration	0.25,0.25
		count		9,12

		line
		{
			duration	1,1
			blend	add
			generatedLine
			persist
			material	"gfx/effects/energy_sparks/spark_line2"
			gravity		0.25,0.5
			generatedOriginNormal
			flipNormal

			start
			{
				position { cylinder -0.4,-0.3,-0.3,-0.4,0.3,0.3 surface }
				velocity { box 50,0,0,200,0,0 }
				size { box 1,2 }
				tint { line 1,0.984314,0.831373,1,0.701961,0.364706 }
				length { box 3,0,0,5,0,0 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "exp_x2" }
			}

			end
			{
				size { point 0 }
			}
		}
	}
	emitter "flash"
	{
		duration	0.25,0.25
		count		6,6

		sprite
		{
			duration	0.1,0.1
			blend	add
			persist
			material	"gfx/effects/weapons/flash"
			generatedNormal

			start
			{
				position { point 1,0,0 }
				size { box 6,6,9,9 }
			}

			motion
			{
				tint { envelope "linear" }
			}
		}
	}
}
