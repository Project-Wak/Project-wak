/// @description Insert description here
// You can write your code in this editor
var scale = 1.5



var effect_ = instance_create_depth(x,y,player.depth+1,down_effect_for_laser)
effect_.image_blend = c_black
effect_.t_image_xscale = 0.3*4*image_yscale/2*scale
effect_.t_image_yscale = 0.05*3*image_yscale/2*scale
effect_.image_xscale = 2.5/2*scale
effect_.image_yscale = 0.8/2*scale
effect_.alarm[1] = 2

