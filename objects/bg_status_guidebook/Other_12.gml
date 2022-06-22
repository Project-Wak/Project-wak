/// @description Insert description here
// You can write your code in this editor

if pressed <= 0
{
	if instance_exists(player) && player.assult_mode <= 0
	{
		if (global.key_setting_message = 0 || pressed > 0) && global.n_to_setting__ != 0
		{
		pressed = -1

		var sfx = audio_play_sound(message_sfx,0,0)
		audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
		}
	}
	else
	{
	var sfx = audio_play_sound(cannot_buy,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	}
}
else
{
var sfx = audio_play_sound(change_etc,0,0)
audio_sound_gain(sfx,0.02*global.master_volume*2*global.sfx_volume,0)
pressed = 0
global.key_setting_message = 2
code.alarm[7] = 1
}

