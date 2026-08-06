effect effects/monsters/flyer_space/rocket_fly
{
	size	360

	emitter "FireTrail"
	{
		duration	10,10
		count		80,80

		sprite
		{
			duration	0.2,0.3
			material	"gfx/effects/weapons/plasma1"

			start
			{
				position { line 0,-2,-2,0,2,2 }
				size { box 15,15,25,25 }
				tint { point 0,0.501961,1 }
				offset { point -5,0,0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "linear" }
				fade { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { box 25,25,45,45 }
				fade { point 0.7 }
				rotate { box -0.25,0.25 relative }
			}
		}
	}
	emitter "TrailLine"
	{
		duration	10,10
		count		25,25

		linked
		{
			duration	0.5,0.5
			blend	add
			material	"gfx/effects/weapons/tracerblue"

			start
			{
				size { point 6 }
				tint { point 0.509804,0.992157,0.811765 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "linear" }
				fade { envelope "linear" }
			}

			end
			{
				size { point 6 }
			}
		}
	}
	spawner "Muzflash"
	{
		count		3,3

		sprite
		{
			duration	0.1,0.1
			material	"gfx/effects/weapons/shotgun_mflash"

			start
			{
				position { line 0,-2,-2,0,2,2 }
				size { box 100,100,110,110 }
				tint { point 0.286275,0.756863,0.988235 }
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
	spawner "Core"
	{
		count		4,4
		locked
		constant

		sprite
		{
			duration	10,10
			material	"gfx/effects/weapons/mgun_muzzleflash"

			start
			{
				size { point 6,6 }
				tint { point 0.447059,0.988235,0.729412 }
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
	spawner "Muzflash2"
	{
		count		6,6

		sprite
		{
			duration	0.1,0.1
			material	"gfx/effects/weapons/g_rail_flash"

			start
			{
				position { line 0,-2,-2,0,2,2 }
				size { box 100,100,250,250 }
				tint { point 0.215686,0.658824,0.984314 }
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
}

