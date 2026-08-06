effect effects/hal9000/m01_bridgedeath
{
	size	188

	emitter "crosspieces"
	{
		duration	1,1
		count		1,1

		model
		{
			duration	5,5
			material	"textures/tram/tr_support_03dusty_alpha_d"
			model		"models/mapobjects/q4x/m01/crosspieces.ase"
			gravity		1,1

			start
			{
				velocity { box -200,-200,0,200,200,0 }
			}

			motion
			{
				rotate { envelope linear }
			}

			end
			{
				rotate { box -0.5,-0.5,-0.5,0.5,0.5,0.5 relative }
			}

			impact
			{
				bounce	0.2
			}
		}
	}
	emitter "roadbed_2"
	{
		duration	1,1
		count		1,1

		model
		{
			duration	5,5
			material	"textures/tram/tr_1_floor1_d"
			model		"models/mapobjects/q4x/m01/roadbed_2.ase"
			gravity		1,1

			start
			{
				velocity { box -200,-200,0,200,200,0 }
			}

			motion
			{
				rotate { envelope linear }
			}

			end
			{
				rotate { box -0.5,-0.5,-0.5,0.5,0.5,0.5 relative }
			}

			impact
			{
				bounce	0.2
			}
		}
	}
	emitter "roadbed_3"
	{
		duration	1,1
		count		1,1

		model
		{
			duration	5,5
			material	"textures/common_walls/outdoor_wall1_2_d"
			model		"models/mapobjects/q4x/m01/roadbed_3.ase"
			gravity		1,1

			start
			{
				velocity { box -200,-200,0,200,200,0 }
			}

			motion
			{
				rotate { envelope linear }
			}

			end
			{
				rotate { box -0.5,-0.5,-0.5,0.5,0.5,0.5 relative }
			}

			impact
			{
				bounce	0.2
			}
		}
	}
	emitter "roadbed_4"
	{
		duration	1,1
		count		1,1

		model
		{
			duration	5,5
			material	"textures/common_walls/outdoor_wall1_2_d"
			model		"models/mapobjects/q4x/m01/roadbed_4.ase"
			gravity		1,1

			start
			{
				velocity { box -200,-200,0,200,200,0 }
			}

			motion
			{
				rotate { envelope linear }
			}

			end
			{
				rotate { box -0.0833333,-0.0833333,-0.0833333,0.0833333,0.0833333,0.0833333 relative }
			}

			impact
			{
				bounce	0.2
			}
		}
	}
	emitter "roadbed_5"
	{
		duration	1,1
		count		1,1

		model
		{
			duration	5,5
			material	"textures/tram/tr_1_floor1_d"
			model		"models/mapobjects/q4x/m01/roadbed_5.ase"
			gravity		1,1

			start
			{
				velocity { box -200,-200,0,200,200,0 }
			}

			motion
			{
				rotate { envelope linear }
			}

			end
			{
				rotate { box -0.0833333,-0.0833333,-0.0833333,0.0833333,0.0833333,0.0833333 relative }
			}

			impact
			{
				bounce	0.2
			}
		}
	}
	emitter "roadbed_6"
	{
		duration	1,1
		count		1,1

		model
		{
			duration	5,5
			material	"textures/common_walls/outdoor_wall1_2_d"
			model		"models/mapobjects/q4x/m01/roadbed_6.ase"
			gravity		1,1

			start
			{
				velocity { box -200,-200,0,200,200,0 }
			}

			motion
			{
				rotate { envelope linear }
			}

			end
			{
				rotate { box -0.5,-0.5,-0.5,0.5,0.5,0.5 relative }
			}

			impact
			{
				bounce	0.2
			}
		}
	}
	emitter "toprails"
	{
		duration	1,1
		count		1,1

		model
		{
			duration	5,5
			material	"textures/tram/tr_support_03dusty_alpha_d"
			model		"models/mapobjects/q4x/m01/toprails.ase"
			gravity		1,1

			start
			{
				velocity { box -200,-200,0,200,200,0 }
			}

			motion
			{
				rotate { envelope linear }
			}

			end
			{
				rotate { box -0.5,-0.5,-0.5,0.5,0.5,0.5 relative }
			}

			impact
			{
				bounce	0.2
			}
		}
	}
	emitter "uprights_1"
	{
		duration	1,1
		count		1,1

		model
		{
			duration	5,5
			material	"textures/tram/tr_support_03dusty_alpha_d"
			model		"models/mapobjects/q4x/m01/uprights_1.ase"
			gravity		1,1

			start
			{
				velocity { box -200,-200,0,200,200,0 }
			}

			motion
			{
				rotate { envelope linear }
			}

			end
			{
				rotate { box -0.5,-0.5,-0.5,0.5,0.5,0.5 relative }
			}

			impact
			{
				bounce	0.2
			}
		}
	}
	emitter "uprights_2"
	{
		duration	1,1
		count		1,1

		model
		{
			duration	5,5
			material	"textures/tram/tr_support_03dusty_alpha_d"
			model		"models/mapobjects/q4x/m01/uprights_2.ase"
			gravity		1,1

			start
			{
				velocity { box -200,-200,0,200,200,0 }
			}

			motion
			{
				rotate { envelope linear }
			}

			end
			{
				rotate { box -0.5,-0.5,-0.5,0.5,0.5,0.5 relative }
			}

			impact
			{
				bounce	0.2
			}
		}
	}
	emitter "uprights_3"
	{
		duration	1,1
		count		1,1

		model
		{
			duration	5,5
			material	"textures/tram/tr_support_03dusty_alpha_d"
			model		"models/mapobjects/q4x/m01/uprights_3.ase"
			gravity		1,1

			start
			{
				velocity { box -200,-200,0,200,200,0 }
			}

			motion
			{
				rotate { envelope linear }
			}

			end
			{
				rotate { box -0.5,-0.5,-0.5,0.5,0.5,0.5 relative }
			}

			impact
			{
				bounce	0.2
			}
		}
	}
	emitter "uprights_4"
	{
		duration	1,1
		count		1,1

		model
		{
			duration	5,5
			material	"textures/tram/tr_support_03dusty_alpha_d"
			model		"models/mapobjects/q4x/m01/uprights_4.ase"
			gravity		1,1

			start
			{
				velocity { box -200,-200,0,200,200,0 }
			}

			motion
			{
				rotate { envelope linear }
			}

			end
			{
				rotate { box -0.5,-0.5,-0.5,0.5,0.5,0.5 relative }
			}

			impact
			{
				bounce	0.2
			}
		}
	}
	emitter "roadbed_1"
	{
		duration	1,1
		count		1,1

		model
		{
			duration	5,5
			material	"textures/common_walls/outdoor_wall1_2_d"
			model		"models/mapobjects/q4x/m01/roadbed_1.ase"
			gravity		1,1

			start
			{
				velocity { box -200,-200,0,200,200,0 }
			}

			motion
			{
				rotate { envelope linear }
			}

			end
			{
				rotate { box -0.5,-0.5,-0.5,0.5,0.5,0.5 relative }
			}

			impact
			{
				bounce	0.2
			}
		}
	}
}
