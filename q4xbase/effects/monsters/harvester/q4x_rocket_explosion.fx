effect effects/monsters/harvester/q4x_rocket_explosion
{
	size	1281

	sound "unnamed17"
	{
		soundShader	"effects_explosion_metal"
		volume	5,5
		freqshift	0.8,0.8
	}
	sound "unnamed18"
	{
		soundShader	"effects_explosion_fiery"
		volume	5,5
	}
	spawner "Core Fire"
	{
		count		10,10

		sprite
		{
			duration	0.3,0.55
			blend	add
			material	"gfx/effects/weapons/flash"
			entityDef	"debris_walker_upperleg"

			start
			{
				position { line -100,-100,-100,100,100,100 }
				velocity { box 0,-250,-250,500,250,250 }
				size { box 250,250,500,500 }
				tint { line 1,1,1,0.501961,0.501961,0.501961 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope linear }
				tint { envelope linear }
				fade { envelope fastinslowout }
				rotate { envelope linear }
			}

			end
			{
				size { line 100,100,200,200 }
				fade { point 1 }
				rotate { box -0.222222,0.222222 }
			}
		}
	}
	spawner "Secondary Fire"
	{
		start		0.1,0.1
		count		16,16

		sprite
		{
			duration	0.4,0.7
			blend	add
			material	"gfx/effects/fire/fire1a"
			entityDef	"debris_walker_upperleg"
			gravity		-0.1,-0.1

			start
			{
				position { cylinder 0,-150,-150,0,150,150 }
				velocity { box -100,-100,-100,100,100,100 }
				angle { box 0,0,0,1,1,1 }
				size { point 5,5 }
				fade { point 0 }
				offset { box -5,-5,-5,5,5,5 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope linear }
				fade { envelope fastinslowout }
				angle { envelope linear }
				rotate { envelope linear }
			}

			end
			{
				size { line 200,200,300,300 }
				fade { point 1 }
				angle { box -1,-1,-1,1,1,1 relative }
				rotate { box -0.222222,0.222222 relative }
			}
		}
	}
	spawner "smoke"
	{
		start		0.35,0.35
		count		18,30

		sprite
		{
			duration	3,4
			material	"gfx/effects/smoke/cloud_alpha3"
			entityDef	"debris_walker_upperleg"
			gravity		-0.04,-0.04
			generatedOriginNormal

			start
			{
				position { sphere -300,-300,-300,300,300,300 }
				velocity { point 15,15,15 }
				angle { box 0,0,-1,0,0,1 }
				size { line 100,100,150,150 }
				tint { line 0.435294,0.415686,0.368627,0.309804,0.258824,0.2 }
				fade { point 0.5 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope linear }
				tint { envelope linear }
				fade { envelope linear }
				angle { envelope linear }
				rotate { envelope linear }
			}

			end
			{
				size { line 150,150,350,350 }
				rotate { box -0.222222,0.222222 relative }
			}
		}
	}
	spawner "Sparks"
	{
		count		25,25

		sprite
		{
			duration	2.5,4
			blend	add
			material	"gfx/effects/weapons/flash"
			entityDef	"debris_walker_upperleg"
			gravity		-0.15,-0.15

			start
			{
				position { line -100,-100,-100,100,100,100 }
				velocity { box -100,-250,-250,350,250,250 }
				friction { point 0.2,0.2,0.2 }
				size { box 2,2,3,3 }
				tint { line 1,1,1,0.501961,0.501961,0.501961 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope linear }
				tint { envelope linear }
				rotate { envelope linear }
			}

			end
			{
				size { line 2,2,1,1 }
				rotate { box -0.222222,0.222222 }
			}
		}
	}
}


