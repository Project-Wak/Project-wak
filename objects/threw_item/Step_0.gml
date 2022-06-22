/// @description Insert description here
// You can write your code in this editor
image_angle -= hspeed*2
w_alpha += (-0.01 - w_alpha)*0.1
if x > obj_wakdroid_ending.x-40
{
hspeed += (0 - hspeed)*0.1
}

if place_meeting(x,y+1,floor_parents)
{
gravity = 0
vspeed = 0
hspeed += (0 - hspeed)*0.01
}
else
{
gravity = 0.1
}

repeat(100)
{
	if place_meeting(x,y+0.2,floor_parents)
	{
	y -= 0.1
	}
	else
	{
	break;
	}
}

