/// @description Insert description here
// You can write your code in this editor

if global.platform_speed > 0
{
	if x < 0
	{
	x += room_width
	}
}

if global.platform_speed < 0
{
	if x > room_width
	{
	x -= room_width
	}
}