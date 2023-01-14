/// @description Insert description here
// You can write your code in this editor



if instance_exists(obj_last_boss)
{
color_1 = $FFF6DDED
color_2 = $FFB47697
color_3 = $FFDCBFF6
}


if instance_exists(obj_worm)
{
color_1 = $FF70FFDC
color_2 = $FF5A8539
color_3 = $FF4CE083
}

a = 0
laser_dis = 0
time = 0
effect_y = 0
effect_index = 0
image_xscale = 0
image_yscale = 0
image_alpha = 1.8
alpha1 = 0.4

var effect_ = instance_create_depth(x,y,player.depth+1,down_effect_for_laser)
effect_.image_blend = c_black
effect_.t_image_xscale = 2.5*0.3
effect_.t_image_yscale = 0.8*0.3
effect_.image_alpha = 0.1
effect_.alarm[1] = 20
effect_.alarm[2] = 20
effect_.image_angle = image_angle

var sfx = audio_play_sound(mob_faint,false,0)
audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume*image_xscale*(1 - point_distance(x,y,player.x,player.y)/1200),0)