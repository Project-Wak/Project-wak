/// @description Insert description here
// You can write your code in this editor
if instance_number(parents_obj) > 0
{
var parents_alpha = parents_obj.image_alpha
	if parents_alpha > 1
	{
	parents_alpha = 1
	}
}
else
{
var parents_alpha = 0
}

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale*0.5,image_angle,$FFFF00FF,image_alpha*0.1*parents_alpha)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale*0.5,image_angle,c_black,image_alpha*0.5*parents_alpha)