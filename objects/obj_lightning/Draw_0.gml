/// @description Insert description here
// You can write your code in this editor
for(var i = 0; i <= 5; i += 0.3)
{
draw_sprite_ext(sprite_index,floor(image_index),x-i,y,image_xscale,image_yscale,image_angle,c_white,image_alpha*0.03*i)
draw_sprite_ext(sprite_index,floor(image_index),x+i,y,image_xscale,image_yscale,image_angle,c_white,image_alpha*0.03*i)
draw_sprite_ext(sprite_index,floor(image_index),x,y-i,image_xscale,image_yscale,image_angle,c_white,image_alpha*0.03*i)
draw_sprite_ext(sprite_index,floor(image_index),x,y+i,image_xscale,image_yscale,image_angle,c_white,image_alpha*0.03*i)
}

for(var i = 1; i <= 2; i += 0.25)
{
draw_sprite_ext(sprite_index,floor(image_index),x,y,image_xscale/i,image_yscale,image_angle,c_white,image_alpha)
}
