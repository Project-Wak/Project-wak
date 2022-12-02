/// @description Insert description here
// You can write your code in this editor


repeat(5)
{
var effect_ = instance_create_depth(left_hand.x,left_hand.y+70,left_hand.depth+1,down_effect)
effect_.t_image_yscale = 0.05*10
effect_.t_image_xscale = 0.4*10
effect_.received = 0
		
var effect_ = instance_create_depth(right_hand.x,right_hand.y+70,right_hand.depth+1,down_effect)
effect_.t_image_yscale = 0.05*10
effect_.t_image_xscale = 0.4*10
effect_.received = 0
}