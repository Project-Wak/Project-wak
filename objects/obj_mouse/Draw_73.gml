/// @description Insert description here
// You can write your code in this editor
draw_self()

if keyboard_check(vk_up)
{
draw_sprite_ext(sprite_index,5,x,y-16,image_xscale,image_yscale,0,c_white,image_alpha)
}

if keyboard_check(vk_down)
{
draw_sprite_ext(sprite_index,4,x,y+16,image_xscale,image_yscale,0,c_white,image_alpha)
}

if keyboard_check(vk_left)
{
draw_sprite_ext(sprite_index,3,x-16,y,image_xscale,image_yscale,0,c_white,image_alpha)
}

if keyboard_check(vk_right)
{
draw_sprite_ext(sprite_index,2,x+16,y,image_xscale,image_yscale,0,c_white,image_alpha)
}
