/// @description Insert description here
// You can write your code in this editor
for(var i = -4; i < 8; i += 0.5)
{
draw_sprite_ext(sprite_index,1,x,y+i,image_xscale,image_yscale,image_angle,$FF75F2FF,image_alpha/i/5)
draw_sprite_ext(sprite_index,1,x+i,y,image_xscale,image_yscale,image_angle,$FF75F2FF,image_alpha/i/5)
}


draw_sprite_ext(sprite_index,1,x,y-1,image_xscale,image_yscale,image_angle,image_blend,image_alpha*0.2)
draw_sprite_ext(sprite_index,1,x,y+1,image_xscale,image_yscale,image_angle,image_blend,image_alpha*0.2)
draw_sprite_ext(sprite_index,1,x-1,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha*0.2)
draw_sprite_ext(sprite_index,1,x+1,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha*0.2)
draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha*0.5)