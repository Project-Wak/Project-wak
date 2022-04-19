/// @description Insert description here
// You can write your code in this editor
if global.key_setting_message = 0
{
var cal__nset = n_to_set
	if cal__nset >= 5
	{
	cal__nset = cal__nset-5
	}

	if cal__nset >= 3
	{
	cal__nset = cal__nset-3
	}
global.n_to_setting__ = cal__nset

var sfx = audio_play_sound(message_sfx,0,0)
audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)

show_debug_message(global.n_to_setting__)
}