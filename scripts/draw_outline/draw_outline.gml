// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
///@param surface
///@param thickness
function draw_outline(argument0,argument1)
{
var cm_x = camera_get_view_x(view_camera[0])
var yy____ = camera_get_view_y(view_camera[0])
var surf__ = argument0
shader_set(shFlash)
gpu_set_blendmode(bm_normal)
draw_surface_ext(surf__,cm_x+argument1,yy____,1,1,0,$FF1A1117,1)
draw_surface_ext(surf__,cm_x-argument1,yy____,1,1,0,$FF1A1117,1)
draw_surface_ext(surf__,cm_x,yy____+argument1,1,1,0,$FF1A1117,1)
draw_surface_ext(surf__,cm_x,yy____-argument1,1,1,0,$FF1A1117,1)
shader_reset()
draw_surface_ext(surf__,cm_x,yy____,1,1,0,image_blend,1)
}