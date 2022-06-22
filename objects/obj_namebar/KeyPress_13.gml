/// @description Insert description here
// You can write your code in this editor
if start = 1
{
	if string_length(global.nickname) < 2 || global.nickname = "아버"
	{
	cannot_select_name = 1
	}


	if cannot_select_name > 0
	{
	var sfx = audio_play_sound(cannot_buy,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	}
	else
	{
	save_and_load_data(1,0)
	var sfx = audio_play_sound(critical_sfx,0,0)
	audio_sound_gain(sfx,0.05*global.master_volume*2*global.sfx_volume,0)
	start = 2
	
		if dis_a = 1
		{
		instance_create_depth(x,y,depth-1,ip_enterbar)
		}
	}
}


if start = 0
{
	if string_length(global.nickname) < 2 || global.nickname = "아버"
	{
	cannot_select_name = 1
	}


	if cannot_select_name > 0
	{
	var sfx = audio_play_sound(cannot_buy,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	}
	else
	{
	save_and_load_data(1,0)
	var sfx = audio_play_sound(critical_sfx,0,0)
	audio_sound_gain(sfx,0.05*global.master_volume*2*global.sfx_volume,0)
	start = 1
	}
}