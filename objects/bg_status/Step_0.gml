/// @description Insert description here
// You can write your code in this editor
var _c_x = obj_camera.v_x/1280
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5-250*_c_x
var yy = camera_get_view_y(view_camera[0])+(200-10)*_c_x
x = xx
y = yy
image_xscale = _c_x*0.8
image_yscale = _c_x*0.8
if check_mouse_place()
{
event_user(2)
}



if pressed > 0
{
global.key_setting_message = 1
image_index = 9
var check_esc = keyboard_check_pressed(vk_escape)

	if check_esc
	{
	var sfx = audio_play_sound(cannot_buy,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	global.key_setting_message = 2
	pressed = -1
	alarm[1] = 1
	}


	if !check_esc
	{
		if keyboard_check_pressed(global.left_key)
		{
		var sfx = audio_play_sound(message_sfx,0,0)
		audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
		pressed --
		event_user(0)
		}
		
		if keyboard_check_pressed(global.right_key)
		{
		var sfx = audio_play_sound(message_sfx,0,0)
		audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
		pressed ++
		event_user(1)
		}
		
		if pressed < 1
		{
		pressed = global.total_weapon_num+1
		}
		
		if pressed > global.total_weapon_num+1
		{
		pressed = 1
		}
		
		if keyboard_check_pressed(global.skip_key)
		{
		var sfx = audio_play_sound(change_etc,0,0)
		audio_sound_gain(sfx,0.02*global.master_volume*2*global.sfx_volume,0)
		alarm[1] = 1
		}
	}
}
else
{
image_index = 8
}


if pressed = -1
{
pressed = global.n_sword+1
}