/// @description Insert description here
// You can write your code in this editor
//draw_set_color(c_black)
//draw_set_font(font0)
//draw_set_alpha(1)
//draw_text(x,y-32,string(attack_))
draw_sprite_ext(spr_shadow,0,x,check_floor+27,1-abs(y-check_floor)/48,1-abs(y-check_floor)/64,0,c_white,(1-abs(y-check_floor)/48)*0.3)


draw_sprite_ext(sprite_index,floor(image_index),x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha)

//체력바
hp_bar_alpha += (t_hp_bar_alpha - hp_bar_alpha)*0.1

if hp_bar_alpha > 0
{
draw_hp += (hp - draw_hp)*0.1
draw_sprite_ext(sprite20,0,x-20,y+32,1,1,0,c_white,hp_bar_alpha)
	if hp/max_hp > 0
	{
	draw_sprite_ext(sprite20,5,x-18,y+32,damaged_hp/max_hp,1,0,c_white,hp_bar_alpha)
	draw_sprite_ext(sprite20,1,x-18,y+32,draw_hp/max_hp,1,0,c_white,hp_bar_alpha)
	}
}


if spin = 0 && cannot_move = 0 && targeted != -4 && attack_ > 0
{
var angle__ = 0
if image_xscale < 0
{
angle__ = 180
}
//var angle__ = point_direction(x,y+9,mouse_x,mouse_y)+180
var y_scale = image_yscale
if !(angle__ >= 270 && angle__ < 360)
{
y_scale = -image_yscale
}
draw_sprite_ext(spr_gun,0,x-image_xscale*4,y+9,abs(image_xscale)*0.5,y_scale*0.5,angle__,c_white,image_alpha)
//draw_text(x,y,angle__)
}

