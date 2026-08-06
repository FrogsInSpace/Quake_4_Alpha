effect effects/debris/snow_impact_sm
{
	size	523

	spawner "dust3"
	{
		count		15,15

		sprite
		{
			duration	3,5
			persist
			material	"gfx/effects/smoke/cloud_alpha3"
			entityDef	"debris_pillar_bit1"
			gravity		0,0.0125

			start
			{
				position { cylinder -40,-40,-50,40,40,50 surface }
				velocity { box 0,-25,-25,0,25,25 }
				size { line 100,100,200,200 }
				offset { point 0,-8,8 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 150,150,200,200 }
				rotate { box -0.222222,0.222222 relative }
			}
		}
	}
	spawner "dust2"
	{
		count		10,10

		sprite
		{
			duration	0.5,0.5
			persist
			material	"gfx/effects/smoke/cloud_alpha3"
			entityDef	"debris_pillar_bit1"
			gravity		-0.0125,-0.0125

			start
			{
				position { sphere 0,-10,-10,0,10,10 surface }
				velocity { box 0,-200,-200,400,200,200 }
				size { line 20,20,200,200 }
				fade { point 0 }
				offset { point 0,-8,8 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "fastinslowout" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 100,100,150,150 }
				fade { point 0.8 }
				rotate { box -0.222222,0.222222 relative }
			}
		}
	}
	spawner "debris2"
	{
		count		10,25

		sprite
		{
			duration	1,1
			material	"gfx/effects/particles_shapes/debris2"
			entityDef	"debris_pillar_bit1"
			gravity		1,1

			start
			{
				position { box 0,-30,-30,0,30,30 }
				velocity { box -400,-400,-400,400,400,400 }
				angle { box 0,0,-1,0,0,1 }
				size { line 2,2,20,20 }
				offset { box 0,-5,-5,0,5,5 }
				rotate { box 0,1 }
			}

			motion
			{
				fade { envelope "linear" offset -0.5 }
				angle { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				angle { box 0,0,-0.5,0,0,0.5 relative }
				rotate { box -0.5,0.5 relative }
			}
		}
	}
	spawner "debris4"
	{
		count		10,25

		sprite
		{
			duration	1,1
			material	"gfx/effects/particles_shapes/debris4"
			entityDef	"debris_pillar_bit1"
			gravity		1,1

			start
			{
				position { box 0,-30,-30,0,30,30 }
				velocity { box -400,-400,-400,400,400,400 }
				angle { box 0,0,-1,0,0,1 }
				size { line 2,2,20,20 }
				fade { point 0.75 }
				offset { box 0,-5,-5,0,5,5 }
				rotate { box 0,1 }
			}

			motion
			{
				fade { envelope "linear" offset -0.5 }
				angle { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				angle { box 0,0,-0.5,0,0,0.5 relative }
				rotate { box -0.5,0.5 relative }
			}
		}
	}
	spawner "debris2 physics"
	{
		count		5,10

		sprite
		{
			duration	1,1
			material	"gfx/effects/particles_shapes/debris2"
			entityDef	"debris_pillar_bit1"
			gravity		1,1

			start
			{
				position { cylinder -80,-30,-30,80,30,30 }
				velocity { box -400,-400,-400,400,400,400 }
				angle { box 0,0,-1,0,0,1 }
				size { line 2,2,20,20 }
				offset { box 0,-5,-5,0,5,5 }
				rotate { box 0,1 }
			}

			motion
			{
				fade { envelope "linear" }
				angle { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				angle { box 0,0,-0.5,0,0,0.5 relative }
				rotate { box -0.5,0.5 relative }
			}

			impact
			{
				remove	1
				effect	"effects/debris/impact_dust"
			}
		}
	}
	delay "unnamed7"
	{
		duration	5,5
	}
	spawner "unnamed6"
	{
		start		0.025,0.025
		count		3,3

		debris
		{
			duration	1,1
			entityDef	"debris_pillar_bit1"

			start
			{
				position { cylinder -50,-50,-50,50,50,50 }
				velocity { box 200,-500,-500,500,500,500 }
			}

			motion
			{
				rotate { envelope "acceleratorfade" }
			}

			end
			{
				rotate { box -19.4444,-19.4444,-19.4444,19.4444,19.4444,19.4444 }
			}
		}
	}
	spawner "unnamed9"
	{
		count		5,5

		line
		{
			duration	0.25,1
			material	"gfx/effects/smoke/cloud_alpha3"
			entityDef	"debris_pillar_bit1"
			generatedOriginNormal

			start
			{
				position { cylinder 0.98,-1,-1,0.98,1,1 }
				size { box 10,15 }
				length { point 100,0,0 }
			}

			motion
			{
				fade { envelope "linear" }
				length { envelope "linear" }
			}

			end
			{
				length { point 350,0,0 }
			}
		}
	}
	shake "quake"
	{
		duration	0.5,0.5
		attenuateEmitter
		attenuation	500,1000
	}
	sound "impact_snd"
	{
		soundShader	"generic_rock_impact_large"
		volume	5,10
	}
}

