/// @description Insert description here
// You can write your code in this editor
var _c_x = obj_camera.v_x/1280
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5-250*_c_x
var yy = camera_get_view_y(view_camera[0])+(160+48)*_c_x

image_xscale = _c_x*0.5
image_yscale = _c_x*0.5
x = xx
y = yy

if check_mouse_place()
{
event_user(0)
}

if pressed > 0
{
global.key_setting_message = 1
image_index = 9

	if mouse_check_button_pressed(mb_any) || keyboard_check_pressed(vk_escape)
	{
	pressed = 0
	global.key_setting_message = 2
	var sfx = audio_play_sound(cannot_buy,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	}
	
	if keyboard_check_pressed(vk_anykey) && !keyboard_check_pressed(vk_escape)
	{
	var sfx = audio_play_sound(message_sfx,0,0)
	audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
	global.s_key = keyboard_lastkey
	pressed = 0
	global.key_setting_message = 2
	}
}
else
{
image_index = 8
}

if pressed = -1
{
pressed = 1
}