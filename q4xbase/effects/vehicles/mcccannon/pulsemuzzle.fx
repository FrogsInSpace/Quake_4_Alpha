effect effects/vehicles/mcccannon/pulsemuzzle
{
	size	103

	shake "CameraShake"
	{
		duration	0.12,0.25
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
			duration	0.08,0.12
			blend	add
			material	"gfx/effects/weapons/rail_flash"

			start
			{
				position { line 2,0,-4,25,0,-4 }
				velocity { box 20,0,0,100,0,0 }
				size { box 40,40,60,60 }
				tint { point 1,0.501961,0.25098 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" }
			}

			end
			{
				size { box 40,40,35,35 }
				fade { point 0.85 }
			}
		}
	}
}

