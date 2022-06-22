/// @description Insert description here
// You can write your code in this editor
//y = 737

if global.b_alpha >= 1
{
	if ((global.matched_pl1_won + global.matched_pl2_won) = 0)
	{
		if global.rainy = 0
		{
		scale = 0
		y += (750 - y)*0.1
		}
	
		if global.rainy = 1
		{
		scale = 0
		y += (900 - y)*0.1
		}
	
		if global.rainy = 2
		{
		scale = 0
		y += (800 - y)*0.1
		}
	}


	if ((global.matched_pl1_won + global.matched_pl2_won) = 1 )
	{
		if global.rainy = 0
		{
		y += (737 - y)*0.1
		}
	
		if global.rainy = 1
		{
		scale = 0
		y += (800 - y)*0.1
		}
	
		if global.rainy = 2
		{
		scale = 0
		y += (750 - y)*0.1
		}
	}

	if ((global.matched_pl1_won + global.matched_pl2_won) = 2 )
	{
		if global.rainy = 1
		{
		scale = 0
		y += (800 - y)*0.1
		}
		
		if global.rainy = 2
		{
		scale = 0
		}
	}
}