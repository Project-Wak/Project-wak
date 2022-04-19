/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_shadow,0,x,check_floor+100,(1-abs(y+100-check_floor)/48)*2,2*(1-abs(y+100-check_floor)/64),0,c_white,(1-abs(y-check_floor)/256)*0.3)
draw_self()
draw_sprite_ext(sprite_index,image_index,x,y,-image_xscale,image_yscale,image_angle,c_black,alpha*0.7)


//체력바
hp_bar_alpha += (t_hp_bar_alpha - hp_bar_alpha)*0.1

if hp_bar_alpha > 0
{
draw_hp += (hp - draw_hp)*0.1
draw_sprite_ext(sprite20,0,x-20,y+96,1,1,0,c_white,hp_bar_alpha)
	if hp/max_hp > 0
	{
	draw_sprite_ext(sprite20,5,x-18,y+96,damaged_hp/max_hp,1,0,c_white,hp_bar_alpha)
	draw_sprite_ext(sprite20,1,x-18,y+96,draw_hp/max_hp,1,0,c_white,hp_bar_alpha)
	}
}

