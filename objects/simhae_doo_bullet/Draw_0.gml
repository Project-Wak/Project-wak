/// @description Insert description here
// You can write your code in this editor
for(var i = 0; i <= 32; i++)
{
	if alpha[i] > 0
	{
	draw_set_alpha(alpha[i]*0.2*image_alpha)
	draw_set_color(_color_)
	draw_line_width(x,y,xx_[i],yy_[i],5*alpha[i])
	
	draw_set_alpha(alpha[i]*0.5*image_alpha)
	draw_set_color(c_white)
	draw_line_width(x,y,xx_[i],yy_[i],2*alpha[i])
	}
}

if image_xscale > 0
{
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*1.4,image_yscale*1.4,image_angle,_color_,image_alpha)
draw_self()
}