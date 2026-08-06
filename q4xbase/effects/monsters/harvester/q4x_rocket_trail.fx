effect effects/monsters/harvester/q4x_rocket_trail
{
	size	427

	emitter "line_inner"
	{
		duration	1,1
		count		100,100

		line
		{
			duration	0.1,0.12
			blend	add
			material	"gfx/effects/weapons/flash_half"

			start
			{
				position { line -2,-2,-2,2,2,2 }
				size { point 10 }
				fade { point 0.5 }
				length { box -65,-65,-65,65,65,65 useEndOrigin }
			}

			motion
			{
				size { envelope linear }
				fade { envelope linear }
			}

			end
			{
				size { point 3 }
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
				size { box 30,40 }
				tint { point 0.486275,0.682353,1 }
				fade { point 0 }
				offset { point -3,0,0 }
				length { box 20,0,0,40,0,0 }
			}

			motion
			{
				fade { envelope fast_in_slow_out }
				length { envelope linear }
			}

			end
			{
				fade { point 0.75 }
				length { box 15,0,0,20,0,0 }
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
				size { point 80,80 }
			}
		}
	}
	spawner "flash2"
	{
		count		1,1
		locked
		constant

		sprite
		{
			duration	1,1
			blend	add
			material	"gfx/effects/weapons/flash"

			start
			{
				position { point -4,0,0 }
				size { point 300,300 }
				fade { point 0.2 }
				rotate { box 0,1 }
			}
		}
	}
	emitter "Sparks"
	{
		duration	1,1
		count		50,50

		sprite
		{
			duration	0.45,1
			material	"gfx/effects/fire/impact_fire"

			start
			{
				velocity { box 0,-50,-50,0,50,50 }
				size { line 30,30,40,40 }
				rotate { box -0.5,0.5 }
			}

			motion
			{
				size { envelope linear }
				fade { envelope linear }
			}

			end
			{
				size { line 8,8,12,12 }
			}
		}
	}
}



