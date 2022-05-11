/// @description Insert description here
// You can write your code in this editor

if player.y > 580
{
var cal_ = (0.4-(player.y-580)*0.0004)
	if cal_ > 0.05
	{
	global.room_brightness = cal_
	}
	else
	{
	global.room_brightness = 0.05
	}
}
else
{
global.room_brightness = 0.4
}


if player.attack_laser_sec = 0 && player.attack_laser = 0 && player.suicide = 0 && player.sting_attack = 0
{
	if !instance_exists(obj_worm)
	{
	obj_camera.tv_x = 1280*0.76
	obj_camera.tv_y = 720*0.76
	}
}

if player.x > 1000 && player.y >= room_height-32
{
global.t_b_alpha = 2.01
player.y = room_height-32
	if global.b_alpha > 1
	{
	room_goto(room_sector_B03_3_remaked)
	}
}
