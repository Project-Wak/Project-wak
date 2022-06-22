/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(0.3)
draw_set_color(c_black)
if line_length > 0
{
	if line_length >= 3000
	{
	draw_line_width(xstart-line_length,ystart+16,xstart+line_length,ystart+16,4)
	}
	else
	{
	draw_line_width(xstart,ystart+16,xstart+line_length,ystart+16,4)
	}
}
else
{
draw_line_width(xstart,ystart-line_length,xstart,ystart+line_length,4)
}


draw_sprite_ext(sprite_index,image_index,x,y+70,image_xscale,-image_yscale,image_angle,c_black,image_alpha*0.3)
draw_self()
draw_sprite_ext(Sprite155__,image_index,x+150,y,image_xscale,image_yscale,image_angle,c_white,image_alpha)