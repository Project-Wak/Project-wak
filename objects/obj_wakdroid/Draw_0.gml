/// @description Insert description here
// You can write your code in this editor
//draw_set_color(c_black)
//draw_set_font(font0)
//draw_set_alpha(1)
//draw_text(x,y-32,string(dash_attack))
draw_sprite_ext(spr_shadow,0,x,check_floor+27,1-abs(y-check_floor)/48,1-abs(y-check_floor)/64,0,c_white,(1-abs(y-check_floor)/48)*0.3)

if sprite_index = move_sprite
{
	if abs(movement_speed) > 5
	{
	var spr__ = spr_move_run_wakdroid
	if global.none_wakgood_mode = true
	{
	spr__ = spr_move_run_wakdroid246
	}
	draw_sprite_ext(spr__,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha)
	}
	else
	{
	draw_self()
	}
}
else
{
draw_self()
}
//if w_alpha > 0
//{
//draw_sprite_ext(spr_move_white,image_index,x,y,image_xscale,image_yscale,0,c_white,w_alpha)
//}

//체력바
//hp_bar_alpha += (t_hp_bar_alpha - hp_bar_alpha)*0.1

//if hp_bar_alpha > 0
//{
//draw_hp += (hp - draw_hp)*0.1
//draw_sprite_ext(sprite20,0,x-20,y+32,1,1,0,c_white,hp_bar_alpha)
//	if hp/max_hp > 0
//	{
//	draw_sprite_ext(sprite20,5,x-18,y+32,damaged_hp/max_hp,1,0,c_white,hp_bar_alpha)
//	draw_sprite_ext(sprite20,1,x-18,y+32,draw_hp/max_hp,1,0,c_white,hp_bar_alpha)
//	}
//}

