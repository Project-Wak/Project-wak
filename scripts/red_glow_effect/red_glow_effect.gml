// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
///@param sprite_index
///@param image_index
///@param alpha
function red_glow_effect(argument0,argument1,argument2)
{
var ef = instance_create_depth(x,y,depth+1,gyu_seong_red_ef)
ef.sprite_index = argument0
ef.image_index = argument1
ef.image_xscale = image_xscale
ef.image_yscale = image_yscale
ef.image_alpha = argument2*image_alpha
ef.image_angle = image_angle
return ef;
}