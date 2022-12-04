/// @description Insert description here
// You can write your code in this editor
if timer > 0
{
	if global.simhaedoo_stage = 1
	{
	player.x = 5181
	player.y = 1869

	obj_camera.x = 5181
	obj_camera.y = 1869
	
	obj_camera.t_x = 5181
	obj_camera.t_y = 1869
	timer ++
	}
}

if timer > 20
{
timer = 0
}


if player.y > 580
{
var cal_ = (0.4-(player.y-580)*0.0004)
	if cal_ > 0.15
	{
	global.room_brightness = cal_
	}
	else
	{
	global.room_brightness = 0.15
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
	if global.b_alpha < 0.4
	{
	global.t_b_alpha = 2.01
	player.y = room_height-32
	}
	
	if global.b_alpha > 1 && global.back_to_origin_stage != 1
	{
	room_goto(room_sector_B03_3_remaked)
	}
}
