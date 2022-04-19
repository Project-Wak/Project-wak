/// @description Insert description here
// You can write your code in this editor
depth = -room_width
if surface_exists(global.light_surf)
{
surface_set_target(global.light_surf);
draw_clear(0);
surface_reset_target();
}

if surface_exists(global.light_surf_nv) && global.light_surf_nv != 0
{
surface_set_target(global.light_surf_nv);
draw_clear(0);
surface_reset_target();
}

if surface_exists(global.blind_outside_map)
{
surface_set_target(global.blind_outside_map);
draw_clear(0);
surface_reset_target();
}