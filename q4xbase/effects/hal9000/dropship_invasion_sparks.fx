effect effects/hal9000/dropship_invasion_sparks
{
	size	116

	light "light"
	{
		locked

		light
		{
			duration	0.12,0.12
			material	"lights/defaultPointLight"

			start
			{
				position { point 10,0,0 }
				size { point 64,64,64 }
				tint { point 0,0,0 }
				fade { point 0.5 }
			}

			motion
			{
				tint { envelope pop_fade }
			}

			end
			{
				tint { point 0.890196,0.780392,0.607843 }
			}
		}
	}
	emitter "sparks_lines"
	{
		duration	0.1,0.1
		count		100,100
		locked

		line
		{
			duration	0.5,1.5
			blend	add
			generatedLine
			material	"gfx/effects/energy_sparks/spark_line2"
			gravity		1,1
			generatedOriginNormal

			start
			{
				position { line -2,-2,-2,2,2,2 }
				velocity { box -20,-20,0,20,20,0 }
				size { box 0.75,1.25 }
				tint { line 1,0.941177,0.8,1,1,1 }
				length { box 3,0,0,4,0,0 }
			}

			motion
			{
				size { envelope linear }
				tint { envelope linear offset 0.2,0.2,0.2 }
			}

			end
			{
				size { point 0 }
				tint { line 0.941177,0.639216,0.219608,0.74902,0.447059,0.164706 }
			}
		}
	}
	sound "sound"
	{
		soundShader	"effects_sparks02_quiet"
	}
	emitter "glow"
	{
		duration	0.1,0.1
		count		2,2

		sprite
		{
			duration	0.1,0.1
			material	"gfx/effects/energy_sparks/spark_line2"

			start
			{
				position { point 3,0,0 }
				tint { point 0.929412,0.643137,1 }
				rotate { box 0,0.125 }
			}

			motion
			{
				size { envelope arch }
			}

			end
			{
				size { point 40,40 }
			}
		}
	}
}
