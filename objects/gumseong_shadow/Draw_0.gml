/// @description Insert description here
// You can write your code in this editor
//draw_set_color(c_black)
//draw_set_font(font0)
//draw_set_alpha(1)
//draw_text(x,y-32,string(attack_))
var v_x = obj_camera.v_x/1280
draw_sprite_ext(spr_shadow,0,x,check_floor+27,1-abs(y-check_floor)/48,1-abs(y-check_floor)/64,0,c_white,(1-abs(y-check_floor)/48)*0.3)


if sprite_index = move_sprite
{
	if abs(movement_speed) > 5.5
	{
	draw_sprite_ext(run_sprite,floor(image_index),x,y,image_xscale,image_yscale,image_angle,c_black,image_alpha)
	}
	else
	{
	draw_sprite_ext(sprite_index,floor(image_index),x,y,image_xscale,image_yscale,image_angle,c_black,image_alpha)
	}
}
else
{
draw_sprite_ext(sprite_index,floor(image_index),x,y,image_xscale,image_yscale,image_angle,c_black,image_alpha)
}


//체력바
hp_bar_alpha += (t_hp_bar_alpha - hp_bar_alpha)*0.1

if hp_bar_alpha > 0
{
draw_hp += (hp - draw_hp)*0.1
draw_text_kl_scale(x,y-64,"검성의 그림자",v_x*64,-1,hp_bar_alpha,c_white,0,0,font0,v_x*0.3,v_x*0.3,0);
draw_sprite_ext(sprite20,0,x-20,y+32,1,1,0,c_white,hp_bar_alpha)
	if hp/max_hp > 0
	{
	draw_sprite_ext(sprite20,5,x-18,y+32,damaged_hp/max_hp,1,0,c_white,hp_bar_alpha)
	draw_sprite_ext(sprite20,1,x-18,y+32,draw_hp/max_hp,1,0,c_white,hp_bar_alpha)
	}
}



