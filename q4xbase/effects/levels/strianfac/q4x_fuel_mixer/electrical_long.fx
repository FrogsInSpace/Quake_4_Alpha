effect effects/levels/strianfac/q4x_fuel_mixer/electrical_long
{
	size	1848

	emitter "end electricity2"
	{
		duration	0.25,15
		count		2,2
		locked

		electricity
		{
			duration	1,1
			blend	add
			fork	1
			jitterRate	0
			jitterSize	10,20,70
			jitterTable	"halfsintable"
			material	"gfx/effects/electricity/electricity"

			start
			{
				angle { box 0,0,0,1,1,1 }
				size { box 1,2 }
				offset { box 5,-5,-5,5,5,5 }
				length { box 10,0,0,25,10,10 useEndOrigin }
			}

			motion
			{
				size { envelope "concavefade" }
				fade { envelope "linear_flicker" }
				angle { envelope "concavefade" }
				length { envelope "neontable2" }
			}

			end
			{
				size { point 0 }
				angle { box -1,-1,-1,0,0,0 }
				length { box 40,10,120,50,20,20 }
			}

			impact
			{
				bounce	0
			}
		}
	}
	emitter "end sprite"
	{
		duration	0.25,0.25
		count		8,8
		locked

		sprite
		{
			duration	0.25,0.25
			material	"gfx/effects/energy_sparks/spark_blue"

			start
			{
				position { line 0,0,0,15,0,0 }
				velocity { box 20,0,0,30,0,0 }
				size { line 150,150,250,250 }
			}

			motion
			{
				size { envelope "linear_flicker" }
				rotate { envelope "linear" }
			}

			end
			{
				rotate { point 0 relative }
			}
		}
	}
	sound "unnamed3"
	{
		soundShader	"effects_sparks02"
		volume	6,6
	}
	delay "unnamed3"
	{
		duration	0.5,3
	}
	spawner "sparks2"
	{
		density		2,5

		line
		{
			duration	0.2,1
			blend	add
			generatedLine
			material	"gfx/effects/energy_sparks/spark_line2"
			gravity		0.5,0.5
			generatedOriginNormal
			flipNormal

			start
			{
				position { cylinder 0.1,-0.1,-0.1,0.1,0.1,0.1 }
				velocity { box 100,-100,-100,200,100,100 }
				size { box 0.5,1.1 }
				tint { line 1,0.501961,0.247059,1,0,0 }
				length { box 2,0,0,10,0,0 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" }
			}

			end
			{
				size { point 0 }
			}
		}
	}
	emitter "steam2"
	{
		duration	15,15
		count		4,4

		sprite
		{
			duration	6,6
			persist
			material	"gfx/effects/smoke/steam_alpha"
			gravity		-0.05,-0.05
			generatedOriginNormal

			start
			{
				velocity { box 0,-5,0,0,5,10 }
				size { box 15,15,20,20 }
				tint { line 0,0,0,0.501961,0.501961,0.501961 }
				offset { box 20,0,0,40,0,0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "concavefade" }
				fade { envelope "linear" }
			}

			end
			{
				size { box 500,500,1000,1000 }
			}
		}
	}
	emitter "steam4"
	{
		duration	0.2,0.2
		count		100,100

		sprite
		{
			duration	0.3,0.3
			material	"gfx/effects/smoke/steam_alpha"

			start
			{
				size { point 15,15 }
				fade { point 0 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "fast_in_slow_out" }
			}

			end
			{
				size { point 5,5 }
				fade { point 0.15 }
			}
		}
	}
}


