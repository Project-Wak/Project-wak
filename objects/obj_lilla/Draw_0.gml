/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_shadow,0,x,check_floor+27,1-abs(y-check_floor)/48,(1-abs(y-check_floor)/64)*1.7,0,c_white,(1-abs(y-check_floor)/48)*0.3)

draw_sprite_ext(sprite_index,floor(abs(image_index)),x,y,image_xscale,image_yscale,image_alpha,image_blend,image_alpha)

//체력바
hp_bar_alpha += (t_hp_bar_alpha - hp_bar_alpha)*0.1

if hp_bar_alpha > 0
{
draw_hp += (hp - draw_hp)*0.1
draw_sprite_ext(sprite20,0,x-20,y+64,1,1,0,c_white,hp_bar_alpha)
	if hp/max_hp > 0
	{
	draw_sprite_ext(sprite20,5,x-18,y+64,damaged_hp/max_hp,1,0,c_white,hp_bar_alpha)
	draw_sprite_ext(sprite20,1,x-18,y+64,draw_hp/max_hp,1,0,c_white,hp_bar_alpha)
	}
}





//draw_set_color(c_black)
//draw_set_font(font0)
//draw_set_alpha(1)
//draw_text(x,y-32,string(attack_)+" / "+string(random_attack_timer)+" / "+string(attack_delay)+" / "+string(alarm_timer)+" / "+string(image_index)+" / "+string(gravity)+" / "+string(vspeed))