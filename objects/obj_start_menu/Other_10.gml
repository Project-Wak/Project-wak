/// @description Insert description here
// You can write your code in this editor

if go_start != 3
{
	if t_set_menu_choose = 0
	{
		if global.difficulty > 0
		{
		var sfx_ = audio_play_sound(critical_sfx,0,0)
		audio_sound_gain(sfx_,0.02*global.master_volume*2*global.sfx_volume,0)
		window_set_cursor(cr_none)
		global.t_b_alpha = 2.01
		global.room_brightness = 0.6
		go_start = 1
		}
		else
		{
		var sfx_ = audio_play_sound(critical_sfx,0,0)
		audio_sound_gain(sfx_,0.02*global.master_volume*2*global.sfx_volume,0)
		global.t_b_alpha = 2.01
		global.room_brightness = 0.6
		go_start = 2
		}
	}

	if t_set_menu_choose = 1
	{
	var sfx_ = audio_play_sound(critical_sfx,0,0)
	audio_sound_gain(sfx_,0.02*global.master_volume*2*global.sfx_volume,0)
	code.alarm[10] = 1
	}

	if t_set_menu_choose = 2
	{
	var sfx_ = audio_play_sound(critical_sfx,0,0)
	audio_sound_gain(sfx_,0.02*global.master_volume*2*global.sfx_volume,0)
	global.show_credits = 1
	}
	
	if t_set_menu_choose = 3
	{
	var sfx_ = audio_play_sound(critical_sfx,0,0)
	audio_sound_gain(sfx_,0.02*global.master_volume*2*global.sfx_volume,0)
	url_open("https://discord.gg/UQYbmfQba8")
	}

	if t_set_menu_choose = 4
	{
	var sfx_ = audio_play_sound(critical_sfx,0,0)
	audio_sound_gain(sfx_,0.02*global.master_volume*2*global.sfx_volume,0)
	save_and_load_data(1,0)
	alarm[1] = 15
	}
}
else
{
	
	if t_set_menu_choose < 3
	{
	global.difficulty = 2.5-t_set_menu_choose*0.5
		if t_set_menu_choose = 0
		{
		global.left_time = 24
		}
	}
	else
	{
	global.difficulty = 1
		if t_set_menu_choose = 4
		{
		global.time_plusment = 2
		global.accessories_owned[0] = 14
		global.accessories_equip[0] = 14
		}
		
		if t_set_menu_choose = 5
		{
		global.time_plusment = 2
		global.super_easy = 2
		global.accessories_owned[0] = 9
		global.accessories_equip[0] = 9
		}
	}

var sfx_ = audio_play_sound(critical_sfx,0,0)
audio_sound_gain(sfx_,0.02*global.master_volume*2*global.sfx_volume,0)
window_set_cursor(cr_none)
global.t_b_alpha = 2.01
global.room_brightness = 0.6
go_start = 4
}
