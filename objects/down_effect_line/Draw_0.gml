/// @description Insert description here
// You can write your code in this editor
if sprite_index != quake_effect
{
	for(var i = 0; i <= 8; i ++)
	{
	draw_set_alpha(0.1*image_alpha)
	draw_set_color(c_white)
	draw_line_width(x,ystart+i,x,y,43)
	}
}
else
{
draw_self()
}
