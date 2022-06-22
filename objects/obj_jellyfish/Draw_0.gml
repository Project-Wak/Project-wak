/// @description Insert description here
// You can write your code in this editor
draw_self()

//체력바
hp_bar_alpha += (t_hp_bar_alpha - hp_bar_alpha)*0.1

if hp_bar_alpha > 0
{
draw_hp += (hp - draw_hp)*0.1
draw_sprite_ext(sprite20,0,x-20,y+58,1,1,0,c_white,hp_bar_alpha)
	if hp/max_hp > 0
	{
	draw_sprite_ext(sprite20,5,x-18,y+58,damaged_hp/max_hp,1,0,c_white,hp_bar_alpha)
	draw_sprite_ext(sprite20,1,x-18,y+58,draw_hp/max_hp,1,0,c_white,hp_bar_alpha)
	}
}
