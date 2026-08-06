effect effects/hal9000/droppod_thrust
{
	size	356

	emitter "side_streaks2"
	{
		duration	1,1
		count		10,20
		locked
		attenuateEmitter

		line
		{
			duration	0.3,0.3
			blend	add
			material	"gfx/effects/hal9000/droppod_blue"
			generatedOriginNormal

			start
			{
				position { cylinder 28,-30,-30,28,30,30 surface }
				size { box 5,10 attenuate }
				tint { point 0.74902,0.74902,0.74902 }
				fade { point 0 attenuate }
				offset { point -25,0,0 }
				length { box 10,0,0,20,0,0 attenuate }
			}

			motion
			{
				fade { envelope fast_in_slow_out }
				length { envelope linear }
			}

			end
			{
				fade { point 0.75 attenuate }
				length { box 100,0,0,200,0,0 attenuate }
			}
		}
	}
	emitter "line_inner"
	{
		duration	1,1
		count		10,15
		locked

		line
		{
			duration	0.25,0.25
			material	"gfx/effects/hal9000/droppod_blue"

			start
			{
				position { cylinder -2,-25,-25,-2,25,25 surface }
				velocity { box 10,0,0,50,0,0 }
				size { box 5,10 }
				tint { line 0.501961,0.501961,0.501961,0.74902,0.74902,0.74902 }
				fade { point 0.5 }
				offset { point -20,0,0 }
				length { box 100,0,0,150,0,0 }
			}
		}
	}
	emitter "line_inner2"
	{
		duration	1,1
		count		10,10
		locked

		line
		{
			duration	0.1,0.1
			material	"gfx/effects/hal9000/droppod_blue"

			start
			{
				position { point -2,0,0 }
				size { point 25 }
				offset { point -30,0,0 }
				length { box 250,0,0,300,0,0 }
			}
		}
	}
	emitter "unnamed6"
	{
		duration	1,1
		count		1,1
		locked

		oriented
		{
			duration	1,1
			material	"gfx/effects/hal9000/droppod_flash"

			start
			{
				position { point 1,0,0 }
				size { point 100,100 }
				tint { point 0.752941,0.752941,0.752941 }
			}
		}
	}
}

