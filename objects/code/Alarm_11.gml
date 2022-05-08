/// @description Insert description here
// You can write your code in this editor
if global.full_screen = 2
{
window_set_fullscreen(false)
window_set_size(1920,1080)
window_set_fullscreen(false)
window_set_size(1920,1080)
window_set_max_width(1920)
window_set_max_height(1080)
window_set_position(0,0)
surface_resize(application_surface, display_get_width (), display_get_height ());
}
if global.full_screen = 3
{
window_set_fullscreen(true)
window_set_size(1920,1080)
window_set_fullscreen(true)
window_set_size(1920,1080)
window_set_max_width(1920)
window_set_max_height(1080)
surface_resize(application_surface, display_get_width (), display_get_height ());
}
if global.full_screen = 1
{
window_set_size(1680,945)
window_set_fullscreen(false)
window_set_size(1680,945)
window_set_fullscreen(false)
window_set_max_width(1680)
window_set_max_height(945)
surface_resize(application_surface, display_get_width (), display_get_height ());
}
if global.full_screen = 0
{
window_set_size(1280,720)
window_set_fullscreen(false)
window_set_size(1280,720)
window_set_fullscreen(false)
window_set_max_width(1280)
window_set_max_height(720)
surface_resize(application_surface, display_get_width (), display_get_height ());
}


if global.guard_key != vk_shift && global.guard_key != global.guard_key
{
global.guard_key_for_code = ord(global.guard_key)
}
else
{
global.guard_key_for_code = global.guard_key
}



global.graphics_for_code = 1;
if abs(global.graphics-1) <= 0.01
{
global.graphics_for_code = 3;
}

if abs(global.graphics-1) > 0.01 && abs(global.graphics-1) <= 0.75
{
global.graphics_for_code = 2;
}


