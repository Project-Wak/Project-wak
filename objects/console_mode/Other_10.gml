/// @description Insert description here
// You can write your code in this editor
if global.key_setting_message = 0 && global.n_to_setting__ = 2
{
global.console_mode ++
if global.console_mode > 1
{
global.console_mode = 0
}

var sfx = audio_play_sound(message_sfx,0,0)
audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
}



