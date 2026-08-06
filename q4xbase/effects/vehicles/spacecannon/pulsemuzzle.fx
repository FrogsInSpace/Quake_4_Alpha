effect effects/vehicles/spacecannon/pulsemuzzle
{
	size	92

	shake "CameraShake"
	{
		duration	0.12,0.3
		scale		2.5
		attenuateEmitter
		attenuation	500,1000
	}
	emitter "Plasmafire"
	{
		duration	0.1,0.1
		count		60,90
		locked

		sprite
		{
			duration	0.08,0.1
			blend	add
			material	"gfx/effects/weapons/rail_flash"

			start
			{
				position { line 0,0,0,25,0,0 }
				velocity { box 100,0,0,200,0,0 }
				size { box 40,40,50,50 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" }
			}

			end
			{
				size { box 25,25,35,35 }
				fade { point 0.8 }
			}
		}
	}
}






