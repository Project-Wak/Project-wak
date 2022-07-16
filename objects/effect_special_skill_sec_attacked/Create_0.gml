/// @description Insert description here
// You can write your code in this editor
code.sepa_power = 25
code.sepa_alpha = 1.3
//command_buffer = buffer_create(3, buffer_grow, 1);
alarm[1] = 1
keep_cre_effect = 0
a = 0
laser_dis = 0
time = 0
effect_y = 0
effect_index = 0
w_alpha__ = 1.5
image_xscale = 0
image_yscale = 0
image_alpha = 1.8
xscale_shaker = 1
shaker_time = 0
saved_xscale = 0
saved_yscale = 0

//color_1 = c_white
//color_2 = $FF1C1CB2
//color_3 = $FF6D52F2

view_shake(3,3,1)
alpha1 = 0.4
alarm[0] = 1


var sfx = audio_play_sound(mob_faint,false,0)
audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume*image_xscale*(1 - point_distance(x,y,player.x,player.y)/1200),0)
