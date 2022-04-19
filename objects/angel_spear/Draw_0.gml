/// @description Insert description here
// You can write your code in this editor

for(var i = -4; i < 4; i += 0.5)
{
draw_sprite_ext(sprite_index,0,x,y+i,image_xscale,-image_yscale,image_angle,image_blend,image_alpha/i/5)
draw_sprite_ext(sprite_index,0,x+i,y,image_xscale,-image_yscale,image_angle,image_blend,image_alpha/i/5)
}

