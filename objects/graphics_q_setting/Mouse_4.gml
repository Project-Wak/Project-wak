/// @description Insert description here
// You can write your code in this editor
if global.n_to_setting__ = 0
{
pressed = 1
var sfx = audio_play_sound(message_sfx,0,0)
audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
}