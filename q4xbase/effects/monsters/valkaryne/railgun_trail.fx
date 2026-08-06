effect effects/monsters/valkaryne/railgun_trail
{
	size	109

	spawner "beam core"
	{
		count		1,1

		line
		{
			duration	0.4,0.4
			blend	add
			material	"gfx/effects/weapons/rail_trail2"

			start
			{
				size { point 10 }
				tint { point 1,0.501961,0.25098 }
				fade { point 0 }
				length { line 0,0,0,0,0,0 useEndOrigin }
			}

			motion
			{
				size { envelope "exp_x2" }
				fade { envelope "decalfade" }
			}

			end
			{
				fade { point 1 }
			}
		}
	}
	spawner "spiral"
	{
		density		60,60

		linked
		{
			duration	0.5,0.5
			blend	add
			material	"gfx/effects/weapons/rail_spiral"
			tiling	450
			generatedNormal

			start
			{
				position { spiral -15,2,0,-15,2,0,25 useEndOrigin linearSpacing }
				velocity { point 5,0,0 }
				size { point 2 }
				tint { point 1,0.501961,0.501961 }
				fade { point 0.5 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "exp_x2" }
			}

			end
			{
				size { point 4 }
			}
		}
	}
	spawner "spark drops"
	{
		density		5,5

		sprite
		{
			duration	0.4,0.4
			blend	add
			persist
			material	"gfx/effects/energy_sparks/spark3"
			gravity		0.001,0.002

			start
			{
				position { line 0,-1.5,-1.5,0,1.5,1.5 useEndOrigin linearSpacing }
				velocity { box 0,-0.5,-0.5,0,0.5,0.5 }
				angle { box 0,0,0,1,1,1 }
				size { line 30,30,45,45 }
				tint { point 1,0.501961,0 }
				fade { point 0 }
				offset { box -25,-25,-25,25,25,25 }
			}

			motion
			{
				fade { envelope "cosine" }
				offset { envelope "linear" }
				angle { envelope "linear" }
			}

			end
			{
				fade { point 0.5 }
				offset { box -1,-1,-1,1,1,1 }
				angle { box -1,-1,-1,1,1,1 }
			}
		}
	}
	spawner "spiral_parts"
	{
		density		5,5

		sprite
		{
			duration	0.4,0.4
			blend	add
			persist
			material	"gfx/effects/weapons/railgun_ring_end"
			gravity		0.001,0.002

			start
			{
				position { line 0,-1.5,-1.5,0,1.5,1.5 useEndOrigin linearSpacing }
				velocity { box 0,-0.5,-0.5,0,0.5,0.5 }
				angle { box 0,0,0,1,1,1 }
				size { line 20,20,25,25 }
				tint { point 1,0.501961,0.25098 }
				fade { point 0 }
				offset { box -15,-15,-15,15,15,15 }
				rotate { box 0,1 }
			}

			motion
			{
				fade { envelope "cosine" }
				offset { envelope "linear" }
				angle { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				fade { point 0.2 }
				offset { box -1,-1,-1,1,1,1 }
				angle { box -1,-1,-1,1,1,1 }
				rotate { point 5.55556 relative }
			}
		}
	}
	spawner "trail"
	{
		count		80,80

		sprite
		{
			duration	0.45,0.45
			persist
			material	"gfx/effects/energy_sparks/explosion_deform3"

			start
			{
				position { line 0,-2,-2,0,2,2 useEndOrigin }
				velocity { point 100,0,0 }
				size { line 5,5,10,10 }
				tint { point 0.501961,0.25098,0.25098 }
				fade { point 0.2 }
				offset { point -5,0,0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "sintable" count 0.5,0.5 }
				fade { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { box 20,20,50,50 }
				rotate { box -0.25,0.25 relative }
			}
		}
	}
}










