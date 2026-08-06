effect effects/weapons/core_cannon/muzzle_fly
{
	size	349

	light "light"
	{
		locked

		light
		{
			duration	0.2,0.2
			blend	add
			specular
			material	"lights/defaultPointLight"

			start
			{
				position { model models/weapons/core_cannon/w_core_cannon.ase,5,0,-2,5,0,-2 }
				size { point 200,200,200 }
				tint { point 0.854902,0.74902,0.556863 }
				fade { point 0.1 }
			}

			motion
			{
				size { envelope "exp_xoverx2" }
				tint { envelope "linear" count 0.1,0.1,0.1 offset 0.1,0.1,0.1 }
			}

			end
			{
				size { point 30,30,30 }
			}
		}
	}
	emitter "muzflash"
	{
		duration	0.1,0.1
		count		25,30

		sprite
		{
			duration	0.08,0.12
			blend	add
			material	"gfx/effects/weapons/flash"

			start
			{
				size { box 2,2,3,3 }
				tint { point 1,0.847059,0.74902 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" }
			}

			end
			{
				fade { point 0.85 }
			}
		}
	}
	shake "camerashake"
	{
		duration	0.3,0.3
		scale		3
		attenuateEmitter
	}
}






