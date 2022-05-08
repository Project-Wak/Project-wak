/// @description Insert description here
// You can write your code in this editor
global.room_brightness = 0.1

if player.attack_laser_sec = 0 && player.attack_laser = 0 && player.suicide = 0
{
	if instance_exists(obj_worm) && obj_worm.activated = 0
	{
	obj_camera.tv_x = 1280*0.76
	obj_camera.tv_y = 720*0.76
	}

	if !instance_exists(obj_worm)
	{
	obj_camera.tv_x = 1280*0.76
	obj_camera.tv_y = 720*0.76
	}
}
