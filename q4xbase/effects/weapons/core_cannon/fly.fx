effect effects/weapons/core_cannon/fly
{
	size	70

	sound "sound"
	{
		soundShader	"corecannon_core_flyloop"
	}
	emitter "plasmafire"
	{
		start		0.04,0.04
		duration	1.35,1.35
		count		100,100

		sprite
		{
			duration	0.2,0.3
			blend	add
			material	"gfx/effects/weapons/rail_flash"
			gravity		-0.4,-0.25

			start
			{
				position { line -6,0,0,6,0,0 }
				velocity { box -2,0,0,-15,0,0 }
				size { line 7,7,10,10 }
				tint { point 0.294118,0.47451,0.952941 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "exp_x2" }
				fade { envelope "linear" }
			}

			end
			{
				size { line 5,5,4,4 }
				fade { point 0.85 }
			}
		}
	}
	light "corelight"
	{
		locked
		constant

		light
		{
			duration	6,6
			blend	add
			material	"lights/defaultPointLight"

			start
			{
				position { point 0,1,0 }
				size { point 40,40,40 }
				tint { point 0.662745,0.721569,0.878431 }
				fade { point 0.1 }
			}

			motion
			{
				tint { envelope "linear" count 0.1,0.1,0.1 offset 0.1,0.1,0.1 }
			}
		}
	}
}








