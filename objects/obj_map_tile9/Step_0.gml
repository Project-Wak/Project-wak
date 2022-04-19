/// @description Insert description here
// You can write your code in this editor
global.room_brightness = 0.1

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
