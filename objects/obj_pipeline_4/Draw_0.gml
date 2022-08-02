/// @description Insert description here
// You can write your code in this editor
draw_self()


if global.dreamy_alpha > 0
{
shader_set(shFlash)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,$FF473021,global.dreamy_alpha)
shader_reset()
}

