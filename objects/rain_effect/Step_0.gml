/// @description Insert description here
// You can write your code in this editor
if ignore_floor = 0
{
	if place_meeting(x,y,floor_parents)
	{
	instance_destroy()
	}

	if place_meeting(x,y,outside_water)
	{
	instance_destroy()
	}
}
else
{
	if y > room_height+128
	{
	instance_destroy()
	}
}

if start_yscale != -4
{
yscale = start_yscale*(room_speed/60)*(room_speed/60)
}

if place_meeting(x,y,outside_water)
{
water_placed = 1
}
