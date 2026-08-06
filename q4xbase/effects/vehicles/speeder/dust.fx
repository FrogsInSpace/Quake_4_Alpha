effect effects/vehicles/speeder/dust
{
	size	191

	emitter "dust"
	{
		duration	1,1
		count		5,5
		attenuateEmitter
		attenuation	0,256

		sprite
		{
			duration	0.5,1
			persist
			material	"gfx/effects/particles_shapes/debris_cloud"
			gravity		-0.01,0
			generatedNormal

			start
			{
				position { point 7,0,0 }
				velocity { box 0,-75,-75,0,75,75 }
				acceleration { point -10,0,0 }
				size { line 25,25,50,50 }
				tint { line 0.435294,0.435294,0.4,0.352941,0.34902,0.321569 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "pop_hold_fadefast" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 75,75,100,100 }
				fade { line 0.25,0.35 }
				rotate { box -0.277778,0.277778 relative }
			}
		}
	}
}

