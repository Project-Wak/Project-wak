/// @description Insert description here
// You can write your code in this editor




var s_x = camera_get_view_x(view_camera[0])
var s_y = camera_get_view_y(view_camera[0])
//var s_w = camera_get_view_width(view_camera[0])
//var s_h = camera_get_view_height(view_camera[0])

if surface_exists(global.light_surf)
{
surface_set_target(global.light_surf)
gpu_set_blendmode(bm_add);
var xx = x - s_x
var yy = y - s_y
draw_sprite_ext(sprite_index,image_index,xx,yy,image_xscale*1.5,image_yscale*1.5,image_angle,$FF75F2FF,image_alpha)
gpu_set_blendmode(bm_normal)
surface_reset_target()
}
