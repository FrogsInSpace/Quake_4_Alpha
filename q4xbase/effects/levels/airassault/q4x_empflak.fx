effect effects/levels/airassault/q4x_empflak
{
	size	5282

	spawner "white flash"
	{
		count		1,1

		sprite
		{
			duration	0.15,0.15
			persist
			material	"gfx/effects/weapons/mflash2_machinegun"

			start
			{
				size { point 2500,2500 }
				rotate { box -1,1 }
			}

			motion
			{
				size { envelope "linear" }
			}
		}
	}
	emitter "green  flash"
	{
		duration	0.2,0.2
		count		10,12

		sprite
		{
			duration	0.1,0.3
			blend	add
			persist
			material	"gfx/effects/weapons/flash_green"

			start
			{
				position { sphere -600,-600,-600,600,600,600 }
				velocity { point 1000,0,-500 }
				size { box 550,555,1000,1000 }
				rotate { box 0,0.0277778 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" offset -0.5 }
				rotate { envelope "linear" }
			}

			end
			{
				size { point 200,200 }
				rotate { box -0.0555556,0.0555556 }
			}
		}
	}
	spawner "air"
	{
		count		10,20

		electricity
		{
			duration	0.1,0.2
			blend	add
			fork	0
			jitterRate	0
			jitterSize	3,7,7
			jitterTable	"halfsintable"
			persist
			material	"gfx/effects/electricity/electric_blue_fade"

			start
			{
				position { sphere -1,-1,-1,1,1,1 surface }
				size { point 10 }
				length { box -50,-50,-50,50,50,50 }
			}

			motion
			{
				fade { envelope "linear" }
				length { envelope "linear" }
			}

			end
			{
				fade { line 0.5,0 }
				length { box -900,-900,-900,900,900,900 }
			}
		}
	}
	emitter "Ring"
	{
		duration	0.2,0.35
		count		5,5

		sprite
		{
			duration	0.25,0.35
			blend	add
			material	"gfx/effects/energy_sparks/launch_flash3_grey"

			start
			{
				size { point 20,20 }
				tint { point 0,0.658824,0.658824 }
				rotate { box -1,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" }
			}

			end
			{
				size { line 1500,1500,2500,2500 }
			}
		}
	}
	spawner "flash"
	{
		count		5,5

		sprite
		{
			duration	0.2,0.2
			blend	add
			material	"gfx/effects/energy_sparks/launch_flash4"

			start
			{
				size { point 2,2 }
				rotate { box -1,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" }
			}

			end
			{
				size { point 1500,1500 }
			}
		}
	}
	sound "blastsound"
	{
		soundShader	"airassault_emp_flak"
	}
	sound "blastsound2"
	{
		soundShader	"airassault_emp_flak2"
	}
	spawner "Linger Smoke2"
	{
		count		12,12

		sprite
		{
			duration	2.5,3.5
			material	"gfx/effects/smoke/cloud_alpha2"
			gravity		-0.02,-0.02

			start
			{
				position { sphere -650,-650,-650,650,650,650 linearSpacing }
				velocity { box 1200,-300,-800,2200,300,300 }
				size { box 500,500,1000,1000 }
				tint { point 0.203922,0.203922,0.184314 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				tint { envelope "linear" }
				fade { envelope "fast_in_slow_out" offset -0.05 }
				rotate { envelope "linear" }
			}

			end
			{
				tint { point 0.164706,0.164706,0.137255 }
				fade { point 0.25 }
				rotate { box -0.277778,0.277778 relative }
			}
		}
	}
}








