/// @description Insert description here
// You can write your code in this editor
image_index = 2
image_speed = 0

w_alpha = 1


var sfx = audio_play_sound(critical_sfx,0,0)
audio_sound_gain(sfx,0.05*global.master_volume*2*global.sfx_volume,0)
timer = 0
