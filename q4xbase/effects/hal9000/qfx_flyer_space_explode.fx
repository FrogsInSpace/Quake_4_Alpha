effect effects/hal9000/qfx_flyer_space_explode
{
	size	3370

	spawner "flash"
	{
		count		2,5
		locked

		sprite
		{
			duration	0.25,0.5
			material	"gfx/effects/weapons/mgun_muzzleflash"

			start
			{
				size { line 4,4,5,5 }
				tint { point 0.701961,0.784314,0.803922 }
				offset { point 10,0,0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope linear }
				tint { envelope linear }
				fade { envelope linear }
			}

			end
			{
				size { point 800,800 }
			}
		}
	}
	spawner "fire1"
	{
		count		2,2

		sprite
		{
			duration	0.25,0.25
			blend	add
			material	"gfx/effects/fire/fire1a"

			start
			{
				position { cylinder 0,-15,-15,0,15,15 }
				velocity { box 0,0,0,50,0,0 }
				angle { box 0,0,0,1,1,1 }
				size { point 5,5 }
				fade { point 0 }
				offset { box -5,-5,-5,5,5,5 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope linear }
				fade { envelope fastinslowout }
				angle { envelope linear }
				rotate { envelope linear }
			}

			end
			{
				size { line 800,800,1000,1000 }
				fade { point 1 }
				angle { box -1,-1,-1,1,1,1 relative }
				rotate { box -0.222222,0.222222 relative }
			}
		}
	}
	spawner "smoke"
	{
		count		20,30

		sprite
		{
			duration	1,5
			material	"gfx/effects/smoke/cloud_alpha"

			start
			{
				position { sphere -400,-200,-200,400,200,200 surface }
				velocity { box 200,0,0,800,0,0 }
				size { line 20,20,50,50 }
				tint { line 0.286275,0.27451,0.239216,0.309804,0.258824,0.2 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope linear }
				tint { envelope linear }
				fade { envelope fastinslowout }
				rotate { envelope linear }
			}

			end
			{
				size { line 500,500,1000,1000 }
				fade { point 1 }
				rotate { box -0.222222,0.222222 relative }
			}
		}
	}
	spawner "upsmoke"
	{
		count		20,60

		sprite
		{
			duration	0.75,2
			material	"gfx/effects/smoke/cloud_alpha"

			start
			{
				velocity { box 200,-200,-200,800,200,200 }
				friction { box -2000,-200,0,0,0,0 }
				tint { line 0.286275,0.27451,0.239216,0.137255,0.133333,0.113725 }
				offset { point 50,0,0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope linear }
				tint { envelope linear }
				fade { envelope linear }
				rotate { envelope linear }
			}

			end
			{
				size { point 500,500 }
			}
		}
	}
	spawner "flash_streaks2"
	{
		count		4,10
		locked

		line
		{
			duration	0.06,0.5
			blend	add
			material	"gfx/effects/weapons/flash_half3"
			generatedOriginNormal
			flipNormal

			start
			{
				position { cylinder -1,-0.3,-0.3,-1,0.3,0.3 surface }
				velocity { point 50,0,0 }
				size { box 200,300 }
				tint { line 0.341176,0.341176,0.341176,1,0.501961,0.25098 }
				fade { point 0 }
				offset { point 5,0,0 }
				length { box 500,0,0,800,0,0 }
			}

			motion
			{
				fade { envelope decalfade }
			}

			end
			{
				fade { point 1 }
			}
		}
	}
	spawner "unnamed9"
	{
		count		5,5

		sprite
		{
			duration	0.25,0.75
			blend	add
			material	"gfx/effects/fire/fire1a"

			start
			{
				velocity { box 600,-500,-500,600,500,500 }
				friction { box -2000,-200,0,0,0,0 }
				offset { point 50,0,0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope linear }
				fade { envelope linear }
				rotate { envelope linear }
			}

			end
			{
				size { point 500,500 }
			}
		}
	}
	spawner "fill2"
	{
		count		5,8

		sprite
		{
			duration	0.5,0.75
			blend	add
			material	"gfx/effects/fire/fire3a"

			start
			{
				position { cylinder 0,-1,-1,0,1,1 }
				velocity { box 100,-200,-200,1000,200,200 }
				size { point 10,10 }
				tint { line 1,1,1,1,0.501961,0.25098 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope linear }
				fade { envelope linear }
				rotate { envelope linear }
			}

			end
			{
				size { point 500,500 }
				rotate { box -1,1 relative }
			}
		}
	}
}





