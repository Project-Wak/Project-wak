/// @description Insert description here
// You can write your code in this editor

if global.show_credits = 0
{
var sfx = audio_play_sound(message_sfx,0,0)
audio_sound_gain(sfx,0.12*global.master_volume*2*global.sfx_volume,0)
}

can_draw = 1

