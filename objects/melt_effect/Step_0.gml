/// @description Insert description here
// You can write your code in this editor
if timer < 1
{
timer += 0.005
}

image_blend = merge_color($FF75F2FF,$FF2C75FF,timer)

if timer >= 0.9
{
image_xscale -= 0.001
image_yscale -= 0.001
}

if image_yscale <= 0
{
instance_destroy()
}

depth = player.depth+15

if image_alpha > 0 && global.night_vision = 0
{
var s_x = camera_get_view_x(view_camera[0])
var s_y = camera_get_view_y(view_camera[0])
//var s_w = camera_get_view_width(view_camera[0])
//var s_h = camera_get_view_height(view_camera[0])
set_surf_outline(image_xscale,image_yscale,image_blend,1,global.bubble_surf)

	if sprite_exists(sprite_index) && surface_exists(global.bubble_surf)
	{
	surface_set_target(global.bubble_surf)
	gpu_set_blendmode(bm_add);
	var xx = other.x - s_x
	var yy = other.y - s_y

		for(var i = 0.95; i <= 3; i += 0.5)
		{
		//var alpha_ = image_alpha/i
		var alpha_ = image_alpha*0.35
		var color = image_blend
		draw_sprite_ext(sprite_index,0,xx,yy,image_xscale/i,image_yscale/i,floor(image_angle),color,alpha_)
		}
	gpu_set_blendmode(bm_normal)
	surface_reset_target()
	}
}