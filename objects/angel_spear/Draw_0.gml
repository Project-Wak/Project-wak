/// @description Insert description here
// You can write your code in this editor

for(var i = -4; i < 4; i += 0.5)
{
draw_sprite_ext(sprite_index,0,x,y+i,image_xscale,-image_yscale,image_angle,image_blend,image_alpha/i/5)
draw_sprite_ext(sprite_index,0,x+i,y,image_xscale,-image_yscale,image_angle,image_blend,image_alpha/i/5)
}


if w_alpha > 0
{
shader_set(shFlash)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,-image_yscale,image_angle,c_white,w_alpha)
shader_reset()
}

