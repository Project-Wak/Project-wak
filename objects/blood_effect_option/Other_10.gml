/// @description Insert description here
// You can write your code in this editor
if global.key_setting_message = 0 && global.n_to_setting__ = 0
{
global.blood_effect ++
if global.blood_effect > 1
{
global.blood_effect = 0
}

var sfx = audio_play_sound(message_sfx,0,0)
audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
}