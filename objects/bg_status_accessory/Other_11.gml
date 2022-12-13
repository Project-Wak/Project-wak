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
	
	var overlap_equipment = 0
	for(var i = 0; i <= 2; i++)
	{
		if global.accessories_equip[i] = pressed-1 && pressed > 2
		{
		overlap_equipment = 1
		}
	}
	
	if global.accessories_owned[pressed-1] <= 0 || overlap_equipment = 1
	{
	pressed ++
	}
	else
	{
	break;
	}
}