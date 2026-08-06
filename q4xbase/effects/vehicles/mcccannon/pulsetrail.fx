effect effects/vehicles/mcccannon/pulsetrail
{
	size	66

	spawner "Trailsprites"
	{
		count		70,70

		sprite
		{
			duration	0.15,0.2
			blend	add
			persist
			material	"gfx/effects/weapons/flash_green"

			start
			{
				position { line -2,0,0,-2,0,0 useEndOrigin linearSpacing }
				velocity { point 200,0,0 }
				angle { box 0,0,0,1,1,1 }
				size { line 15,15,17,17 }
				tint { point 1,0.392157,0.101961 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "fastinslowout" }
				angle { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 30,30,35,35 }
				fade { point 0.35 }
				angle { box -1,-1,-1,1,1,1 }
				rotate { box -0.222222,0.222222 relative }
			}
		}
	}
	spawner "BeamCore"
	{
		count		1,1

		line
		{
			duration	0.2,0.2
			material	"gfx/effects/weapons/rail_trail3"

			start
			{
				size { point 8 }
				tint { point 1,0.905882,0.807843 }
				length { line 0,0,0,0,0,0 useEndOrigin }
			}

			motion
			{
				size { envelope "exp_x2" }
				tint { envelope "linear_flicker" }
			}

			end
			{
				size { point 3 }
			}
		}
	}
	spawner "Spiral"
	{
		density		60,60
		particleCap		512

		linked
		{
			duration	0.3,0.3
			blend	add
			material	"gfx/effects/weapons/rail_trail3"
			generatedNormal

			start
			{
				position { spiral -15,6,0,-15,6,0,150 useEndOrigin linearSpacing }
				velocity { point 30,0,0 }
				size { point 4 }
				tint { point 0.996078,0.835294,0.588235 }
				fade { point 0.75 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "linear" }
				fade { envelope "linear" }
			}

			end
			{
				size { point 22 }
				tint { point 0.439216,0.262745,0.105882 }
			}
		}
	}
}


