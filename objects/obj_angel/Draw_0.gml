/// @description Insert description here
// You can write your code in this editor



draw_self()
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_black,alpha*0.7)
draw_sprite_ext(sprite_index,1,x,y-angelring_y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_sprite_ext(sprite_index,1,x,y-angelring_y,image_xscale,image_yscale,image_angle,c_black,alpha*0.7)



if w_alpha > 0
{
shader_set(shFlash)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_black,w_alpha/1.3)
draw_sprite_ext(sprite_index,1,x,y-angelring_y,image_xscale,image_yscale,image_angle,c_white,w_alpha)
shader_reset()
}



