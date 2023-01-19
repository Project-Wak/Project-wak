/// @description Insert description here
// You can write your code in this editor
var sfx = audio_play_sound(activate_sfx,0,0)
audio_sound_gain(sfx,0.5*global.master_volume*2*global.sfx_volume,0)
timer = 0
w_alpha = 1
alpha = 0
image_alpha = 0

save_and_load_data(1,0)