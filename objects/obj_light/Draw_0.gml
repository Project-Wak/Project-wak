/// @description Insert description here
// You can write your code in this editor

if (image_alpha > 0 && global.night_vision != 0)
{
	for(var i = 3; i <= 20; i += 0.5)
	{
	//var alpha_ = image_alpha/i
	var alpha_ = (alpha/i)*image_alpha*4
	draw_sprite_ext(sprite_index,0,x,y,image_xscale/i,image_yscale/i,floor(image_angle),$FFFAFF00,alpha_)
	}
}