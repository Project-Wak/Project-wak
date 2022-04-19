/// @description Insert description here
// You can write your code in this editor
repeat(999)
{
	if pressed < 2
	{
	pressed = global.total_accessories_num+1
	}
		
	if pressed > global.total_accessories_num+1
	{
	pressed = 2
	}
	
	if global.accessories_owned[pressed-1] <= 0
	{
	pressed --
	}
	else
	{
	break;
	}
}