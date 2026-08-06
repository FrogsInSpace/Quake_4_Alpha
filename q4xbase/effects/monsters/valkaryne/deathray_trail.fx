effect effects/monsters/valkaryne/deathray_trail
{
	size	1457

	spawner "beam core"
	{
		count		1,1

		line
		{
			duration	1,1
			blend	add
			material	"gfx/effects/weapons/rail_trail2"

			start
			{
				size { point 100 }
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
	emitter "spiral"
	{
		duration	1,1
		density		60,60

		linked
		{
			duration	0.6,0.6
			blend	add
			material	"gfx/effects/weapons/rail_spiral"
			tiling	450
			generatedNormal

			start
			{
				position { spiral -15,2,0,-15,2,0,25 useEndOrigin linearSpacing }
				velocity { point 5,0,0 }
				size { point 2 }
				tint { point 0.501961,0,1 }
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
		density		50,50
		particleCap		50
		locked

		sprite
		{
			duration	0.75,0.75
			blend	add
			persist
			material	"gfx/effects/energy_sparks/spark3"
			trailType	motion
			trailTime	20,20
			trailCount	20,20
			trailMaterial	"gfx/effects/particles_shapes/motionblur"

			start
			{
				position { line 0,0,0,0,0,0 useEndOrigin linearSpacing }
				velocity { point 300,0,0 }
				angle { box 0,0,0,1,1,1 }
				acceleration { box 10000,10,10,0,10,10 }
				size { box 10,10,15,15 }
				tint { line 1,0,0,1,0.501961,0.25098 }
				offset { box -5,-5,-5,5,5,5 }
			}

			motion
			{
				size { envelope "concavefade" }
				tint { envelope "exp_x2" }
				fade { envelope "storage_light_b" }
				offset { envelope "linear" }
				angle { envelope "linear" }
			}

			end
			{
				offset { box -150,-150,-150,150,150,150 }
				angle { box -1,-1,-1,1,1,1 }
			}
		}
	}
	spawner "spiral_parts"
	{
		density		5,5

		sprite
		{
			duration	0.5,0.5
			blend	add
			persist
			material	"gfx/effects/weapons/railgun_ring_end"
			gravity		0.001,0.002

			start
			{
				position { line 0,-1.5,-1.5,0,1.5,1.5 useEndOrigin linearSpacing }
				velocity { box 0,-0.5,-0.5,0,0.5,0.5 }
				angle { box 0,0,0,1,1,1 }
				size { point 30,30 }
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
	emitter "trail"
	{
		duration	1,1
		density		120,120

		sprite
		{
			duration	0.4,0.5
			persist
			material	"gfx/effects/energy_sparks/explosion_deform3"
			trailType	motion
			trailTime	0,0
			trailCount	0,0
			trailMaterial	"gfx/effects/particles_shapes/motionblur"

			start
			{
				position { line 0,-2,-2,0,2,2 useEndOrigin }
				velocity { point 100,0,50 }
				size { line 5,5,10,10 }
				tint { point 1,0,0 }
				fade { point 0.2 }
				offset { point -5,0,0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "sintable" count 0.5,0.5 }
				fade { envelope "raven_wallfadein" }
				rotate { envelope "linear" }
			}

			end
			{
				size { box 20,20,50,50 }
				rotate { box -0.25,0.25 relative }
			}
		}
	}
	spawner "flash2"
	{
		count		1,1
		locked

		sprite
		{
			duration	1,1
			blend	add
			material	"gfx/effects/weapons/flash"

			start
			{
				position { point 30,0,0 }
				size { point 120,120 }
				tint { point 1,0.501961,0.25098 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "exp_x2" }
			}

			end
			{
				size { point 80,80 }
				fade { point 1 }
			}
		}
	}
}











