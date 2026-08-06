effect effects/vehicles/groundcannon/trail
{
	size	167

	spawner "Core trail"
	{
		count		10,10
		locked
		constant

		line
		{
			duration	1,1
			material	"gfx/effects/weapons/lgun"
			tiling	128

			start
			{
				size { point 100 }
				tint { point 0.866667,1,1 }
				offset { box -10,-10,-10,10,10,10 }
				length { line 0,0,0,0,0,0 useEndOrigin }
			}

			motion
			{
				size { envelope "random" count 0.2 }
				tint { envelope "flickerblink" count 8,8,8 }
			}

			end
			{
				size { point 150 }
				tint { point 0.247059,0.247059,0.247059 }
			}
		}
	}
	shake "Firing Shake"
	{
		duration	0.25,0.25
		scale		2
		attenuateEmitter
		attenuation	400,600
	}
}

