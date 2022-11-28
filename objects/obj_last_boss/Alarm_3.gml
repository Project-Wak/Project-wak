/// @description Insert description here
// You can write your code in this editor



var effect_ = instance_create_depth(x,y,player.depth+1,down_effect_for_laser)
effect_.image_blend = c_black
effect_.t_image_xscale = 2.5*0.2
effect_.t_image_yscale = 0.8*0.2
effect_.image_alpha = 0.1
effect_.alarm[1] = 20+keep_cre_effect*2
effect_.alarm[4] = 20
effect_.image_angle = point_direction(x,y,player.x,player.y)+90
effect_.image_xscale = 2.5
effect_.image_yscale = 0.8

var effect_ = instance_create_depth(x,y,player.depth+1,down_effect_for_laser)
effect_.image_blend = c_black
effect_.t_image_xscale = 2.5*0.2
effect_.t_image_yscale = 0.8*0.2
effect_.image_alpha = 0.1
effect_.alarm[1] = 20+keep_cre_effect*2
effect_.alarm[4] = 20
effect_.image_angle = point_direction(x,y,player.x,player.y)
effect_.image_xscale = 2.5
effect_.image_yscale = 0.8


keep_cre_effect ++

if keep_cre_effect < 7
{
alarm[3] = 1
}