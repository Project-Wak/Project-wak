/// @description Insert description here
// You can write your code in this editor
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5
var yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])*0.5
var v_x_ = obj_camera.v_x/1280

if global.imoji_cooldown <= 0
{
	if point_distance(x,y,mouse_x,mouse_y) < 29*v_x_
	{
	image_xscale = 1
	image_yscale = 1
	w_alpha = 0.5
	}


image_xscale += (0.8 - image_xscale)*0.1
image_yscale += (0.8 - image_yscale)*0.1
w_alpha += (-0.01 - w_alpha)*0.1
}



x = xx - xposition*v_x_*64
y = yy - v_x_*32

if global.chat_activity = false
{
instance_destroy()
}