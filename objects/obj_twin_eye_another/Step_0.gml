/// @description Insert description here
// You can write your code in this editor
if n_hp != hp
{
obj_twin_eye.hp -= n_hp-hp
n_hp = hp
}

check_floor = -4
for(var i = 0; i <= 160; i++)
{
	if place_meeting(x,y+i,obj_floor_tile1)
	{
	check_floor = y+i
	break;
	}
}

if place_meeting(x,y,obj_twin_eye)
{
check_met_other_eye = 1
}
else
{
check_met_other_eye = 0
}


repeat(100)
{
	if place_meeting(x,y+0.2,obj_floor_tile1)
	{
	check_on_floor = 1
		if obj_twin_eye.patturn != 0
		{
		y -= 0.1
		}
		else
		{
		break;
		}
	}
	else
	{
	check_on_floor = 0
	break;
	}
}