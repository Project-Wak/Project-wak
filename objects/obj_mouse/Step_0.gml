/// @description Insert description here
// You can write your code in this editor
var _c_x = obj_camera.v_x/1280
depth = -9999999

if instance_exists(obj_n_to_setting)
{
global.cursor = 1
}

if instance_exists(bg_upgrage)
{
global.cursor = 1
}

if instance_exists(bg_status)
{
global.cursor = 1
}


var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])
var width = camera_get_view_width(view_camera[0])
var height = camera_get_view_height(view_camera[0])

if saved_xx < xx
{
saved_xx = xx
}

if saved_yy < yy
{
saved_yy = yy
}

if saved_xx > xx+width
{
saved_xx = xx+width
}

if saved_yy > yy+height
{
saved_yy = yy+height
}

if global.cursor = 1
{
image_alpha = 1

	if keyboard_check(vk_left)
	{
	n_mouse_xx = mouse_x
	n_mouse_yy = mouse_y
	saved_xx -= 6.6*_c_x
	mouse_move = 1
	}
	
	if keyboard_check(vk_right)
	{
	n_mouse_xx = mouse_x
	n_mouse_yy = mouse_y
	saved_xx += 6.6*_c_x
	mouse_move = 1
	}
	
	if keyboard_check(vk_up)
	{
	n_mouse_xx = mouse_x
	n_mouse_yy = mouse_y
	saved_yy -= 6.6*_c_x
	mouse_move = 1
	}
	
	if keyboard_check(vk_down)
	{
	n_mouse_xx = mouse_x
	n_mouse_yy = mouse_y
	saved_yy += 6.6*_c_x
	mouse_move = 1
	}
	
	if mouse_check_button(mb_any)
	{
	mouse_move = 0
	}
	
	if mouse_move = 0
	{
	image_index = 0
	saved_xx = mouse_x
	saved_yy = mouse_y
	n_mouse_xx = -4
	n_mouse_yy = -4
	}
	else
	{
	image_index = 1
	}
	
	if point_distance(mouse_x,mouse_y,n_mouse_xx,n_mouse_yy) > 1
	{
	mouse_move = 0
	}
x = saved_xx
y = saved_yy
}
else
{
image_alpha = 0
mouse_move = 0
}
