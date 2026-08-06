effect effects/monsters/valkaryne/deathray_burst
{
	size	991

	sound "sound"
	{
		soundShader	"gladiator_railgun_impact"
	}
	decal "decal"
	{

		decal
		{
			duration	0.002,0.002
			material	"gfx/effects/decals/railgun_impact1"

			start
			{
				size { point 125,0 }
				rotate { box 0,1 }
			}
		}
	}
	emitter "smoke"
	{
		start		0.16,0.16
		duration	0.35,0.35
		count		25,25

		sprite
		{
			duration	0.8,1.2
			blend	add
			material	"gfx/effects/fire/fire_plume_additive"
			gravity		-0.05,-0.05

			start
			{
				position { point 10,0,0 }
				velocity { box 0,-5,-5,20,5,5 }
				size { line 60,60,200,200 }
				tint { line 0,0,0.627451,0.501961,0.501961,1 }
				fade { point 0.65 }
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
				size { line 300,300,400,400 }
				tint { point 0.847059,0.831373,0.721569 }
				rotate { box -0.388889,0.388889 relative }
			}
		}
	}
	spawner "heat_mark"
	{
		count		2,2

		oriented
		{
			duration	0.25,0.25
			blend	add
			material	"gfx/effects/energy_sparks/launch_flash3"

			start
			{
				position { point 0.1,0,0 }
				tint { point 0.501961,1,1 }
				rotate { box 0,0,0,0,0,1 }
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
				size { point 200,200 }
				tint { point 1,1,1 }
				rotate { box 0,0,-0.111111,0,0,0.111111 relative }
			}
		}
	}
	spawner "side_impact_streaks"
	{
		count		15,20
		locked

		line
		{
			duration	0.2,0.2
			blend	add
			material	"gfx/effects/weapons/blaster_impact3"
			generatedOriginNormal
			flipNormal

			start
			{
				position { cylinder -0.2,-0.3,-0.3,-0.2,0.3,0.3 surface }
				size { box 4,8 }
				tint { point 0.501961,0.501961,1 }
				length { box 30,0,0,40,0,0 }
			}

			motion
			{
				fade { envelope "exp_x2" }
			}
		}
	}
	spawner "sparks_lines"
	{
		count		7,9
		locked

		line
		{
			duration	0.2,0.2
			blend	add
			generatedLine
			material	"gfx/effects/energy_sparks/spark_line3"
			generatedOriginNormal
			flipNormal

			start
			{
				position { cylinder -0.1,-0.1,-0.1,-0.1,0.1,0.1 surface }
				velocity { box 50,0,0,300,0,0 }
				size { box 30,50 }
				tint { point 1,0.501961,0 }
				length { box 15,0,0,20,0,0 }
			}

			motion
			{
				size { envelope "linear" }
			}

			end
			{
				size { point 0 }
			}
		}
	}
	spawner "spiral_parts"
	{
		density		25,25

		sprite
		{
			duration	0.3,0.3
			blend	add
			persist
			material	"gfx/effects/weapons/railgun_ring_end"

			start
			{
				position { cylinder 10,-10,-10,10,10,10 }
				velocity { box 0,-30,-30,40,30,30 }
				angle { box 0,0,0,1,1,1 }
				size { line 50,50,450,450 }
				tint { line 1,0,0,1,0.501961,0.25098 }
				fade { point 0.8 }
				offset { box -1,-1,-1,1,1,1 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "dm_cylindertable" }
				fade { envelope "linear" }
				offset { envelope "linear" }
				angle { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				offset { box -15,-15,-15,15,15,15 }
				angle { box -1,-1,-1,1,1,1 }
				rotate { point 5.55556 relative }
			}
		}
	}
	shake "camerashake2"
	{
		duration	0.7,0.7
		attenuateEmitter
		attenuation	200,600
	}
	emitter "deform_oriented2"
	{
		duration	0.5,0.5
		count		1,1

		oriented
		{
			duration	0.35,0.35
			material	"gfx/effects/energy_sparks/explosion_deform3"

			start
			{
				position { point 1,0,0 }
			}

			motion
			{
				size { envelope "linear" }
			}

			end
			{
				size { point 700,700 }
			}
		}
	}
}







