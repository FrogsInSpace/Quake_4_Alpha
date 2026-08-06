effect effects/monsters/retch/electric_blast
{
	size	160

	spawner "arcs"
	{
		count		10,10

		electricity
		{
			duration	1,1
			blend	add
			fork	8
			jitterRate	0
			jitterSize	3,6,6
			jitterTable	halfsintable
			material	"gfx/effects/electricity/electric_blue_fade"

			start
			{
				position { cylinder 1,-50,-50,1,50,50 surface }
				size { point 2 }
				length { box 100,-50,-50,20,50,50 }
			}

			motion
			{
				fade { envelope linear_flicker }
			}
		}
	}
}




