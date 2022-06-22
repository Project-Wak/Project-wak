/// @description Insert description here
// You can write your code in this editor
var _c_x = obj_camera.v_x/1280
if !instance_exists(master_volume_setting)
{
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5-40*_c_x
var yy = camera_get_view_y(view_camera[0])+(500-20)*_c_x
}
else
{
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5-80*_c_x
var yy = camera_get_view_y(view_camera[0])+(230-20)*_c_x
}

x = xx+global.brightness_setting*200*_c_x
y = yy


if pressed = 1
{
	if mouse_x > xx && mouse_x < xx+200*_c_x
	{
	x = mouse_x
	}
	
	if mouse_x < xx
	{
	x = xx
	}
	
	if mouse_x > xx+200*_c_x
	{
	x = xx+200*_c_x
	}
	
	
var cal__ = floor((x - xx)/(200*_c_x)*100)/100
if cal__ < 0
{
cal__ = 0
}
global.brightness_setting = cal__
}





if abs(global.brightness_setting) <= 0.49
{
image_index = 2
}

if abs(global.brightness_setting) > 0.49 && abs(global.brightness_setting) < 0.51
{
image_index = 3
}

if abs(global.brightness_setting) > 0.5
{
image_index = 0
}