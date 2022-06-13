/// @description Insert description here
// You can write your code in this editor

if global.graphics_for_code = 3 && light_able = 1 && image_alpha > 0 && depth < 32 && image_xscale > 0.2
{
var s_x = camera_get_view_x(view_camera[0])
var s_y = camera_get_view_y(view_camera[0])
//var s_w = camera_get_view_width(view_camera[0])
//var s_h = camera_get_view_height(view_camera[0])
	if sprite_exists(sprite_index) && surface_exists(global.light_surf)
	{
	surface_set_target(global.light_surf)
	gpu_set_blendmode(bm_add);
	var xx = x - s_x
	var yy = y - s_y

		for(var i = 0.8; i <= 8; i += 0.5)
		{
		//var alpha_ = image_alpha/i
		var alpha_ = (0.1/i)*image_alpha
		var color = sec_col
		draw_sprite_ext(sprite64,0,xx,yy,image_xscale/i,image_yscale/i,floor(image_angle),color,alpha_)
		}
	gpu_set_blendmode(bm_normal)
	surface_reset_target()
	}
}

