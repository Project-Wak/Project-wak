/// @description Insert description here
// You can write your code in this editor
var v_x = obj_camera.v_x/1280
var p_floor = y
for(var ii = 0; ii <= 64; ii++)
{
var __check = instance_place(x,y+ii,floor_parents)
	if __check > 0
	{
	p_floor = y+ii
	break;
	}
	else
	{
		if ii = 64
		{
		p_floor = y
		}
	}
}
draw_sprite_ext(spr_shadow,0,x,p_floor+20,1-abs(y-p_floor)/48,1-abs(y-p_floor)/64,0,c_white,(1-abs(y-p_floor)/48)*0.3*image_alpha)

if global.none_wakgood_mode = true
{
var ind__ = 7
	if image_index = 6
	{
	ind__ = 8
	}
draw_sprite_ext(sprite_index,ind__,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha)
}
else
{
draw_self()
}

//draw_set_alpha(1)
//draw_text(x,y,message_phase)

if can_interect = 1
{
draw_text_kl_scale(x,y-v_x*64,"상호작용 ("+string(global.skip_key_for_draw)+")",v_x*64,-1,1,c_white,0,0,font0,v_x*0.3,v_x*0.3,0);
}


