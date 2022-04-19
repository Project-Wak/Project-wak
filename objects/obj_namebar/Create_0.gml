/// @description Insert description here
// You can write your code in this editor
activate = 0
timer = 0
alpha1 = 0
cannot_select_name = 0
image_alpha = 1
start = 0
already_set_name = 0
auto_nick = 0
dis_a = 0
dis_a_draw = 0
alarm[2] = 5

var sfx = audio_play_sound(message_sfx,0,0)
audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)

//alarm[1] = 60