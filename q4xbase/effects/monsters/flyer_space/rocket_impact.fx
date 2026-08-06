effect effects/monsters/flyer_space/rocket_impact
{
	size	199

	spawner "Muzflash"
	{
		count		50,50

		sprite
		{
			duration	0.2,0.5
			material	"gfx/effects/weapons/shotgun_mflash"

			start
			{
				position { line 0,-2,-2,0,2,2 }
				velocity { box -500,-500,-500,500,500,500 }
				size { point 2,2 }
				tint { point 0.439216,0.988235,0.839216 }
				offset { point -5,0,0 }
				rotate { box 0,1 }
			}

			motion
			{
				tint { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				rotate { box -0.25,0.25 relative }
			}
		}
	}
	spawner "Muzflash2"
	{
		count		50,50

		sprite
		{
			duration	0.1,0.1
			material	"gfx/effects/weapons/shotgun_mflash"

			start
			{
				position { line 0,-2,-2,0,2,2 }
				size { point 25,25 }
				tint { point 0.439216,0.988235,0.839216 }
				offset { point -5,0,0 }
				rotate { box 0,1 }
			}

			motion
			{
				tint { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				rotate { box -0.25,0.25 relative }
			}
		}
	}
	shake "unnamed2"
	{
		duration	0.2,0.2
		attenuateEmitter
		attenuation	1000,1000
	}
	sound "sound2"
	{
		soundShader	"bullet_impact_metal"
	}
}

