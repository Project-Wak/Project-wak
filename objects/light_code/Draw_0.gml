/// @description Insert description here
// You can write your code in this editor
if !instance_exists(setting_parents) || instance_exists(obj_start_menu)
{
var s_x = camera_get_view_x(view_camera[0])
var s_y = camera_get_view_y(view_camera[0])

if global.night_vision = 0
{
	if surface_exists(global.light_surf)
	{
	gpu_set_blendmode(bm_subtract);
	draw_surface_ext(global.light_surf,s_x,s_y,1,1,0,c_white,1)
	gpu_set_blendmode(bm_normal)
	}
	else
	{
	global.light_surf = surface_create(1920*2,1080*2)
	}
}
else
{
	if surface_exists(global.light_surf_nv)
	{
	gpu_set_blendmode(bm_subtract)
	//gpu_set_blendmode_ext(bm_inv_dest_color,bm_inv_src_color);
	//gpu_set_blendmode(bm_subtract)
	//gpu_set_blendmode_ext(bm_inv_dest_color,bm_inv_src_color);
	draw_surface_ext(global.light_surf_nv,s_x,s_y,1,1,0,c_white,1);
	gpu_set_blendmode(bm_normal)
	}
	else
	{
	global.light_surf_nv = surface_create(1920*2,1080*2)
	}
}
}

