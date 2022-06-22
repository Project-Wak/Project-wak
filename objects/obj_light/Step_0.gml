/// @description Insert description here
// You can write your code in this editor
if image_alpha > 0 && global.night_vision = 0
{
var s_x = camera_get_view_x(view_camera[0])
var s_y = camera_get_view_y(view_camera[0])
//var s_w = camera_get_view_width(view_camera[0])
//var s_h = camera_get_view_height(view_camera[0])

	if !instance_exists(p_id)
	{
	instance_destroy()
	}


	if sprite_exists(sprite_index) && surface_exists(global.light_surf)
	{
	surface_set_target(global.light_surf)
	gpu_set_blendmode(bm_add);
	var xx = other.x - s_x
	var yy = other.y - s_y

		for(var i = 3; i <= 20; i += 0.5)
		{
		//var alpha_ = image_alpha/i
		var alpha_ = (alpha/i)*image_alpha
		var color = image_blend
		draw_sprite_ext(sprite_index,0,xx,yy,image_xscale/i,image_yscale/i,floor(image_angle),color,alpha_)
		}
	gpu_set_blendmode(bm_normal)
	surface_reset_target()
	}
}


if des = 1
{
image_xscale += (-0.01 - image_xscale)*0.08
image_yscale += (-0.01 - image_yscale)*0.08
alpha += (0 - alpha)*0.08
	if image_xscale <= 0
	{
	instance_destroy()
	}
}
