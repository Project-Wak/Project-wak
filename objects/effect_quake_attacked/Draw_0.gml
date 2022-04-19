/// @description Insert description here
// You can write your code in this editor

var color_1 = $FFFF00FF
var color_2 = $FF39206D
var color_3 = c_red



for(var i = 1; i < 1.3; i += 0.05)
{
draw_sprite_ext(sprite_index,image_index-2,x,y,image_xscale*1.1*i,image_yscale*1.1*i,0,c_black,alpha2*0.05)
draw_sprite_ext(sprite_index,image_index-2,x,y,image_xscale*1.1*i,image_yscale*1.1*i,0,c_red,alpha2*0.01)
}

for(var i = 0.8; i > 0.7; i -= 0.05)
{
draw_sprite_ext(sprite_index,image_index-2,x,y,image_xscale*i*0.9*1.1,image_yscale*i*1.1,0,color_1,image_alpha*0.01)
draw_sprite_ext(sprite_index,image_index-2,x,y,image_xscale*i*0.9*1.1,image_yscale*i*1.1,0,c_red,image_alpha*0.01)
}



for(var i = 1; i < 1.3; i += 0.05)
{
draw_sprite_ext(sprite_index,image_index-1,x,y,image_xscale*1.1*i,image_yscale*1.1*i,0,c_black,alpha2*0.05)
}

for(var i = 0.8; i > 0.7; i -= 0.05)
{
draw_sprite_ext(sprite_index,image_index-1,x,y,image_xscale*i*0.9*1.1,image_yscale*i*1.1,0,color_1,image_alpha*0.01)
draw_sprite_ext(sprite_index,image_index-1,x,y,image_xscale*i*0.9*1.1,image_yscale*i*1.1,0,c_red,image_alpha*0.01)
}



for(var i = 1; i < 1.3; i += 0.05)
{
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*i,image_yscale*i,0,color_2,alpha2*0.1)
}

for(var i = 0.8; i > 0.7; i -= 0.05)
{
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*i*0.9,image_yscale*i,0,color_1,image_alpha*0.1)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*i*0.9,image_yscale*i,0,c_red,image_alpha*0.1)
}