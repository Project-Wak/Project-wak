/// @description Insert description here
// You can write your code in this editor
if global.key_setting_message = 0 && global.n_to_setting__ = 0
{
global.full_screen ++
if global.full_screen > 3
{
global.full_screen = 0
}
show_debug_message(os_version)
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

var sfx = audio_play_sound(message_sfx,0,0)
audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
}
