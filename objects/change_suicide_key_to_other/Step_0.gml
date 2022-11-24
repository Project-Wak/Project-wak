/// @description Insert description here
// You can write your code in this editor
depth = -999999
var _c_x = obj_camera.v_x/1280
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5-250*_c_x
var yy = camera_get_view_y(view_camera[0])+(160+48+48+48+48+48+48+160)*_c_x

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
var check_esc = keyboard_check_pressed(vk_escape)

	if mouse_check_button_pressed(mb_any) || check_esc
	{
	pressed = 0
	global.key_setting_message = 2
	global.suicide_key = "P"
	
	var sfx = audio_play_sound(cannot_buy,0,0)
	audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
	}
	
	if keyboard_check_pressed(vk_anykey) && !check_esc
	{
	var sfx = audio_play_sound(message_sfx,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
	global.suicide_key = keyboard_lastkey
		if keyboard_check_pressed(vk_escape)
		{
		global.suicide_key = "P"
		}

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