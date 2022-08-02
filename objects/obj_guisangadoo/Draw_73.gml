/// @description Insert description here
// You can write your code in this editor
if (patturn >= 1 && patturn < 2) || (patturn >= 3 && patturn < 4)
{
	for(var i = 0; i <= 4; i++)
	{
	draw_set_color(c_white)
	draw_set_alpha(w_alpha_lightning[i])
	draw_line_width(xx_lightning[i],1626,xx_lightning[i],y-1000,w_alpha_lightning[i])
	}
}
