effect effects/monsters/valkaryne/blastwave_fly
{
	size	366

	spawner "line"
	{
		count		1,1
		locked
		constant

		line
		{
			duration	5,5
			material	"gfx/effects/weapons/blaster_flyflipped"

			start
			{
				size { point 20 }
				offset { point 8,0,0 }
				length { point -252,0,0 }
			}

			motion
			{
				size { envelope "linear" }
			}

			end
			{
				size { point 20 }
			}
		}
	}
	emitter "Elec01"
	{
		duration	1,1
		count		5,5

		sprite
		{
			duration	0.15,0.3
			blend	add
			persist
			material	"gfx/effects/q4x/electricity/elec01"

			start
			{
				position { line -5,-5,-10,5,5,10 }
				size { line 25,25,35,35 }
				tint { line 0.564706,0.784314,1,0.564706,0.886275,1 }
				rotate { box 0,0.5 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" offset -0.354 }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 10,10,15,15 }
				fade { point 0.25 }
				rotate { box -0.0972222,0.0972222 relative }
			}
		}
	}
	emitter "Blobs"
	{
		duration	1,1
		count		5,5

		sprite
		{
			duration	0.25,0.35
			blend	add
			persist
			material	"gfx/effects/weapons/shotgun_mflash"

			start
			{
				position { line -5,-5,-10,5,5,10 }
				size { line 30,30,40,40 }
				tint { line 0.564706,0.784314,1,0.988235,0.478431,0.454902 }
				rotate { box 0,0.5 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" offset -0.354 }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 15,15,18,18 }
				fade { point 0.25 }
				rotate { box -0.0972222,0.0972222 relative }
			}
		}
	}
	spawner "Elec1"
	{
		count		3,3
		constant

		sprite
		{
			duration	0.3,0.8
			blend	add
			material	"gfx/effects/q4x/electricity/elec01"

			start
			{
				position { line -200,-200,-100,200,200,500 }
				size { line 45,45,55,55 }
				tint { line 0.564706,0.784314,1,0.564706,0.886275,1 }
				rotate { box 0,0.5 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" offset -0.354 }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 10,10,15,15 }
				fade { point 0.25 }
				rotate { box -0.0972222,0.0972222 relative }
			}
		}
	}
}



