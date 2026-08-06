effect effects/weapons/freezegun/freeze_core
{
	size	338

	sound "sound"
	{
		soundShader	"freezegun_loopone"
	}
	sound "Sound2"
	{
		soundShader	"freezegun_looptwo"
	}
	light "light"
	{

		light
		{
			duration	0.2,0.2
			material	"lights/muzzleflash"

			start
			{
				size { point 20,20,20 }
				tint { point 0.654902,0.686275,0.921569 }
			}
		}
	}
	emitter "flashmuzzle"
	{
		duration	0.15,0.15
		count		6,6
		locked

		sprite
		{
			duration	0.12,0.15
			blend	add
			material	"gfx/effects/fire/fire2b"

			start
			{
				size { line 2,2,4,4 }
				tint { point 0.521569,0.690196,0.945098 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" }
			}

			end
			{
				size { line 2,2,3,3 }
				fade { point 0.8 }
			}
		}
	}
	emitter "SteamCore"
	{
		duration	0.12,0.12
		count		11,15
		locked

		line
		{
			duration	0.15,0.2
			material	"gfx/effects/smoke/steam_source"

			start
			{
				size { box 3,4 }
				tint { point 0.858824,0.858824,0.858824 }
				length { point 25,0,0 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" }
				length { envelope "exp_x2" }
			}

			end
			{
				size { box 5,8 }
				length { box 255,0,0,300,0,0 }
			}
		}
	}
	emitter "steam3"
	{
		duration	0.1,0.1
		count		75,75

		sprite
		{
			duration	0.2,0.3
			blend	add
			material	"gfx/effects/fire/fire2b"

			start
			{
				position { point -5,0,0 }
				velocity { box 200,-35,-35,650,35,35 }
				acceleration { box -300,-200,-200,-650,200,200 }
				size { point 3,3 }
				tint { point 0,1,1 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "exp_x2" }
				fade { envelope "fastinslowout" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 6,6,12,12 }
				fade { point 0.4 }
				rotate { box -0.0333333,0.0333333 relative }
			}
		}
	}
	emitter "steam_core2"
	{
		duration	0.2,0.2
		count		200,200

		sprite
		{
			duration	0.2,0.5
			blend	add
			material	"gfx/effects/smoke/cloud_add"

			start
			{
				position { line 0,-1,-1,0,1,1 }
				velocity { box 650,-72,-72,1000,72,72 }
				acceleration { box -500,-125,-125,-800,125,125 }
				size { line 2,2,4,4 }
				tint { line 0.756863,0.74902,0.701961,0.882353,0.882353,0.882353 }
				fade { point 0.3 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "exp_x2" offset -0.2,-0.2 }
				tint { envelope "linear" }
				fade { envelope "fastinslowout" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 45,45,100,100 }
				fade { point 0.5 }
				rotate { box -0.0333333,0.0333333 relative }
			}
		}
	}
}










