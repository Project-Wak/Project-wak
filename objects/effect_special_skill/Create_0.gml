/// @description Insert description here
// You can write your code in this editor
//command_buffer = buffer_create(3, buffer_grow, 1);
alarm[1] = 1
alarm[2] = 2

a = 0
laser_dis = 0
time = 0
effect_y = 0
effect_index = 0
image_xscale = 0
image_yscale = 0
image_alpha = 1.8
view_shake(3,3,1)
code.sepa_power = 25
code.sepa_alpha = 1.3
alpha1 = 0.4
saved_xscale = 0
saved_yscale = 0

var effect_ = instance_create_depth(x,y,player.depth+1,down_effect_for_laser)
effect_.image_blend = c_black
effect_.t_image_xscale = 2.5*0.3
effect_.t_image_yscale = 0.8*0.3
effect_.image_alpha = 0.1
effect_.image_angle = image_angle
effect_.image_xscale = 2.5
effect_.image_yscale = 0.8

var sfx = audio_play_sound(mob_faint,false,0)
audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume*image_xscale*(1 - point_distance(x,y,player.x,player.y)/1200),0)
