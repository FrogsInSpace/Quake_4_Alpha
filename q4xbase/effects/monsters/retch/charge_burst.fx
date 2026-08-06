effect effects/monsters/retch/charge_burst
{
	size	708

	emitter "burst fill"
	{
		duration	0.25,0.25
		count		1,1

		sprite
		{
			duration	0.1,0.1
			material	"gfx/effects/particles_shapes/spike"

			start
			{
				size { point 150,150 }
				tint { line 0.454902,0.815686,0.894118,1,1,1 }
				rotate { box 0,1 }
			}

			motion
			{
				rotate { envelope linear_flicker }
			}

			end
			{
				rotate { box -1,1 }
			}
		}
	}
	emitter "oriented"
	{
		duration	0.25,0.25
		count		1,1

		oriented
		{
			duration	0.1,0.1
			material	"gfx/effects/particles_shapes/spike"

			start
			{
				size { point 150,150 }
				tint { point 0.65098,0.956863,0.941177 }
			}
		}
	}
	spawner "elect2"
	{
		count		10,10

		electricity
		{
			duration	0.1,0.1
			fork	0
			jitterRate	0
			jitterSize	3,7,7
			jitterTable	halfsintable
			material	"gfx/effects/electricity/electric_blue_fade"
			generatedNormal

			start
			{
				position { cylinder 0,-5,-5,0,5,5 }
				size { box 1,3 }
				length { box 30,0,0,80,0,0 }
			}
		}
	}
	spawner "sparks_lines"
	{
		count		20,20
		locked

		line
		{
			duration	0.15,0.3
			blend	add
			generatedLine
			material	"gfx/effects/energy_sparks/spark_line"
			gravity		0.15,0.25
			generatedOriginNormal
			flipNormal

			start
			{
				position { cylinder -0.5,-0.2,-0.2,-0.5,0.2,0.2 surface }
				velocity { box 300,0,0,600,0,0 }
				acceleration { point -50,0,0 }
				size { point 2 }
				tint { point 0.34902,0.568627,0.890196 }
				length { box 9,0,0,17,0,0 }
			}

			motion
			{
				size { envelope linear }
			}

			end
			{
				size { point 0 }
			}
		}
	}
	emitter "deform"
	{
		duration	1,1
		count		1,1

		sprite
		{
			duration	0.35,0.35
			blend	add
			material	"gfx/effects/energy_sparks/explosion_deform3"

			start
			{
				size { point 0,0 }
			}

			motion
			{
				size { envelope linear }
				fade { envelope linear }
			}

			end
			{
				size { point 500,500 }
			}
		}
	}
	emitter "deform_oriented"
	{
		duration	1,1
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
				size { envelope linear }
			}

			end
			{
				size { point 500,500 }
			}
		}
	}
	light "light"
	{
		locked

		light
		{
			duration	1,1
			blend	add
			specular
			material	"lights/defaultPointLight"

			start
			{
				position { model models/weapons/core_cannon/w_core_cannon.ase,0,0,0,0,0,0 }
				size { point 30,30,30 }
				tint { line 0,0.137255,0.501961,0.223529,0.34902,0.776471 }
				fade { point 0.1 }
			}

			motion
			{
				size { envelope exp_x2 offset 0.5,0.5,0.5 }
				tint { envelope testflicker count 0.1,0.1,0.1 offset 0.1,0.1,0.1 }
			}

			end
			{
				size { point 200,200,200 }
				tint { line 0.247059,0,0,0,0.2,0.501961 }
			}
		}
	}
}





