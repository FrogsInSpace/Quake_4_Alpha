effect effects/levels/mcc2/explosion_teleporter_dust
{
	size	4139

	spawner "Centersmoke1"
	{
		count		12,12

		sprite
		{
			duration	0.75,2.5
			material	"gfx/effects/smoke/cloud_alpha2"
			gravity		-0.02,-0.02

			start
			{
				position { line -10,-10,-10,10,10,75 linearSpacing }
				velocity { box -20,-20,-40,20,20,0 }
				size { line 100,100,200,200 }
				tint { point 0.482353,0.466667,0.419608 }
				fade { point 0.75 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "linear" }
				fade { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 200,200,275,275 }
				tint { point 0.168627,0.164706,0.141176 }
				rotate { box -0.277778,0.277778 relative }
			}
		}
	}
	spawner "centerfire1"
	{
		count		20,25

		sprite
		{
			duration	0.4,0.6
			material	"gfx/effects/fire/fire4a"

			start
			{
				position { line -5,0,100,5,0,100 linearSpacing }
				velocity { box 0,-25,-25,0,25,200 }
				angle { box 0,0,0,1,1,1 }
				size { line 50,50,100,100 }
				offset { box -6,-6,-6,6,6,6 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "linear" }
				fade { envelope "linear" }
				angle { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 100,100,200,200 }
				angle { box -1,-1,-1,1,1,1 relative }
				rotate { point 0 relative }
			}
		}
	}
	spawner "Debris2"
	{
		count		15,25

		sprite
		{
			duration	3,4
			persist
			material	"gfx/effects/particles_shapes/debris3"
			gravity		1,1

			start
			{
				position { point 0,0,100 }
				velocity { box -500,-500,-250,500,500,350 }
				size { line 5,5,15,15 }
				tint { point 0.501961,0.501961,0.501961 }
				rotate { box -1,1 }
			}

			motion
			{
				fade { envelope "linear" offset -0.5 }
			}

			impact
			{
				bounce	0.35
			}
		}
	}
	shake "CameraShake"
	{
		duration	1.5,1.5
		scale		3
		attenuateEmitter
		attenuation	0,3000
	}
	spawner "Debris3"
	{
		count		15,25

		sprite
		{
			duration	3,4
			persist
			material	"gfx/effects/particles_shapes/debris2"
			gravity		1,1

			start
			{
				position { point 0,0,100 }
				velocity { box -500,-500,-250,500,500,300 }
				size { line 5,5,15,15 }
				tint { point 0.501961,0.501961,0.501961 }
				rotate { box -1,1 }
			}

			motion
			{
				fade { envelope "linear" offset -0.5 }
			}

			impact
			{
				bounce	0.4
			}
		}
	}
	spawner "Centersmoke2"
	{
		count		24,24

		sprite
		{
			duration	1.25,4
			material	"gfx/effects/smoke/cloud_alpha2"

			start
			{
				position { line -52,-52,-10,52,52,0 linearSpacing }
				velocity { box -45,-45,-30,45,45,10 }
				size { line 50,50,100,100 }
				tint { point 0.482353,0.466667,0.419608 }
				fade { point 0.5 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "linear" }
				fade { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 100,100,200,200 }
				tint { point 0.168627,0.164706,0.141176 }
				rotate { box -0.277778,0.277778 relative }
			}
		}
	}
	emitter "electricity"
	{
		duration	0.5,0.5
		count		20,20
		locked

		electricity
		{
			duration	0.05,0.1
			blend	add
			fork	0
			jitterRate	0
			jitterSize	3,7,7
			jitterTable	"halfsintable"
			material	"gfx/effects/weapons/lgun_smallbolt"
			generatedOriginNormal
			flipNormal

			start
			{
				position { line -50,-50,125,50,50,125 }
				size { box 7,8 }
				offset { box 5,-5,-5,5,5,5 }
				length { box 50,0,0,150,0,0 }
			}

			motion
			{
				fade { envelope "linear_flicker" }
			}
		}
	}
}
