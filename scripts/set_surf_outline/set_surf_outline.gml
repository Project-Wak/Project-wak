// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


///@param xscale
///@param yscale
///@param col
///@param alpha
///@param target_surf
function set_surf_outline(argument0,argument1,argument2,argument3,argument4)
{
var s_x = camera_get_view_x(view_camera[0])
var s_y = camera_get_view_y(view_camera[0])
var xx = x - s_x
var yy = y - s_y

surface_set_target(argument4)
gpu_set_blendmode(bm_normal)
draw_sprite_ext(sprite_index,image_index,xx,yy,argument0,argument1,image_angle,argument2,argument3);
surface_reset_target()
}