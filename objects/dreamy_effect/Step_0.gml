/// @description Insert description here
// You can write your code in this editor
var cm_width = camera_get_view_width(view_camera[0])
for(var i = 0; i <= 128; i++)
{
	if star_t_alpha[i] = 1
	{
	star_alpha[i] += 0.01
	}
	else
	{
	star_alpha[i] -= 0.01
	star_yy[i] -= 0.1
	}
	
	if star_alpha[i] <= 0 && star_t_alpha[i] != 1
	{
	star_xx[i] = irandom_range(-cm_width,cm_width)
	star_yy[i] = irandom_range(-cm_width,cm_width)
	star_t_alpha[i] = 1
	}
	
	if star_alpha[i] >= 1
	{
	star_t_alpha[i] = 0
	}
}
