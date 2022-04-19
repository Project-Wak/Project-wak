/// @description Insert description here
// You can write your code in this editor
repeat(999)
{
	if pressed < 1
	{
	pressed = global.total_weapon_num+1
	}
		
	if pressed > global.total_weapon_num+1
	{
	pressed = 1
	}
	
	if global.weapon_owned[pressed-1] <= 0
	{
	pressed ++
	}
	else
	{
	break;
	}
}