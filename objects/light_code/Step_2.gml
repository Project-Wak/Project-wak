/// @description Insert description here
// You can write your code in this editor
if global.light_surf_nv != 0
{
	if surface_exists(global.light_surf_nv)
	{
	surface_set_target(global.light_surf_nv);
	gpu_set_blendmode_ext(bm_inv_dest_color, bm_inv_src_color);
	draw_set_color($ffffff);
	draw_set_alpha(1);
	draw_rectangle(0, 0, 1920*2, 1080*2, 0);
	//gpu_set_blendmode(bm_max)
	//draw_surface_ext(global.blind_outside_map,0,0,1,1,0,$ffffff,1)
	//gpu_set_blendmode(bm_max)
	//draw_surface_ext(global.light_surf,0,0,1,1,0,$ffffff,1);;
	gpu_set_blendmode(bm_normal)
	surface_reset_target()
	}
	else
	{
	global.light_surf_nv = surface_create(1920, 1080);
	}
}
//else
//{
	if surface_exists(global.light_surf)
	{
	surface_set_target(global.light_surf);
	gpu_set_blendmode_ext(bm_inv_dest_color, bm_inv_src_color);
	draw_set_color($ffffff);
	draw_set_alpha(1);
	draw_rectangle(0, 0, 1920*2, 1080*2, 0);
	gpu_set_blendmode(bm_normal);
	surface_reset_target()
	}
	else
	{
	global.light_surf = surface_create(1920, 1080);
	}
//}

if surface_exists(global.blind_outside_map)
{
surface_set_target(global.blind_outside_map);
gpu_set_blendmode_ext(bm_inv_dest_color, bm_inv_src_color);
draw_set_color($ffffff);
draw_set_alpha(1);
draw_rectangle(0, 0, 1920*2, 1080*2, 0);
gpu_set_blendmode(bm_normal);
surface_reset_target()
}
else
{
global.blind_outside_map = surface_create(1920, 1080);
}
