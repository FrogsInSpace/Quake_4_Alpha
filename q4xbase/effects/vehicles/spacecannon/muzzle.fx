effect effects/vehicles/spacecannon/muzzle
{
	size	208

	shake "CameraShake"
	{
		duration	0.3,0.4
		scale		2
		attenuateEmitter
		attenuation	500,1000
	}
	emitter "Fire1"
	{
		duration	0.1,0.1
		count		60,72

		sprite
		{
			duration	0.15,0.25
			blend	add
			material	"gfx/effects/weapons/shotgun_mflash"

			start
			{
				position { point 60,0,0 }
				velocity { box 450,0,0,650,0,0 }
				size { point 75,75 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" }
			}

			end
			{
				size { point 15,15 }
			}
		}
	}
	doubleVision "unnamed2"
	{
		duration	0.1,0.1
		scale		0.1
		attenuateEmitter
		attenuation	500,1000
	}
}



