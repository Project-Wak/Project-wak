/// @description Insert description here
// You can write your code in this editor
var _c_x = obj_camera.v_x/1280
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5-80*_c_x
var yy = camera_get_view_y(view_camera[0])+(160-20+64+64)*_c_x

x = xx+global.sfx_volume*200*_c_x
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
global.sfx_volume = cal__
}





if abs(global.sfx_volume-1) <= 0.01
{
image_index = 3
}

if abs(global.sfx_volume-1) > 0.01 && abs(global.sfx_volume-1) <= 0.75
{
image_index = 2
}

if abs(global.sfx_volume-1) > 0.75
{
image_index = 0
}