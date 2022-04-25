/// @description Insert description here
// You can write your code in this editor
draw_self()

if mouse_move = 1
{
draw_sprite_ext(sprite_index,2,x+16,y,image_xscale,image_yscale,0,c_white,image_alpha)
draw_sprite_ext(sprite_index,3,x-16,y,image_xscale,image_yscale,0,c_white,image_alpha)

draw_sprite_ext(sprite_index,4,x,y+16,image_xscale,image_yscale,0,c_white,image_alpha)
draw_sprite_ext(sprite_index,5,x,y-16,image_xscale,image_yscale,0,c_white,image_alpha)
}
