/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index,image_index,x,y+12,image_xscale,image_yscale,0,c_black,0.3*image_alpha)
draw_self()

if global.dreamy_alpha > 0
{
draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,image_angle,c_white,global.dreamy_alpha)
}