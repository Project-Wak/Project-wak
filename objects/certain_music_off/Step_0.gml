/// @description Insert description here
// You can write your code in this editor

var _c_x = obj_camera.v_x/1280
if !instance_exists(master_volume_setting)
{
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5-75*_c_x
var yy = camera_get_view_y(view_camera[0])+(500-100)*_c_x

	if instance_exists(obj_start_menu)
	{
	depth = obj_start_menu.depth+1
	}
}
else
{
depth = -999999
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5-240*_c_x
var yy = camera_get_view_y(view_camera[0])+(200+64+64+64+48+32)*_c_x
}

image_xscale = _c_x*0.5
image_yscale = _c_x*0.5
x = xx
y = yy


if check_mouse_place()
{
event_user(0)
}
