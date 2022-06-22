/// @description Insert description here
// You can write your code in this editor

for(var i = -4; i < 4; i += 0.5)
{
draw_sprite_ext(sprite_index,0,x,y+i,image_xscale/i,image_yscale,image_angle,$FFDBEDEE,image_alpha/i/5)
draw_sprite_ext(sprite_index,0,x+i,y,image_xscale/i,image_yscale,image_angle,$FFDBEDEE,image_alpha/i/5)
}


for(var i = -4; i < 4; i += 0.5)
{
	for(var ii = -4; ii < 4; ii += 0.5)
	{
	draw_sprite_ext(sprite_index,0,x,y+i,image_xscale/i,image_yscale/ii,image_angle,$FFF2FEFD,image_alpha/i/5)
	draw_sprite_ext(sprite_index,0,x+i,y,image_xscale/i,image_yscale/ii,image_angle,$FFF2FEFD,image_alpha/i/5)
	}
}
