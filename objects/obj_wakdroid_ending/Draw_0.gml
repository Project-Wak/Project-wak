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

if room = room_sector_B07
{
draw_sprite_ext(spr_shadow,0,x,p_floor+23,1-abs(y-p_floor)/48,1-abs(y-p_floor)/64,0,c_white,(1-abs(y-p_floor)/48)*0.3*image_alpha)

draw_self()

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_black,b_alpha_)
}
//draw_set_alpha(1)
//draw_text(x,y,message_phase)

if can_interect = 1
{
draw_text_kl_scale(x,y-v_x*64,"상호작용 ("+string(global.skip_key_for_draw)+")",v_x*64,-1,1,c_white,0,0,font0,v_x*0.3,v_x*0.3,0);
}


if room = room_sector_outside && global.real_ending > 0 && obj_map_tile_outside.explo_anime = 0
{
	if global.achievement[20] != 1
	{
	var _achievement = instance_create_depth(x,y,depth,bg_achievement)
	_achievement.text = string(global.achievement_name[20])
	_achievement.icon_num = 4
	global.achievement[20] = 1
	}
	
var start_i_var = 0
var total_people = 6

	if global.none_wakgood_mode = true
	{
	total_people = 1
	start_i_var = 7
	}

	for(var i = 0; i <= total_people; i++)
	{
	depth = player.depth+15
	var my_xx = 1054+i*64
	draw_sprite_ext(audience_3,i+start_i_var,my_xx,1097,sign_k(my_xx - player.x),1,0,c_white,1)
	draw_sprite_ext(spr_shadow,0,my_xx,1097+20,1,1,0,c_white,0.3*image_alpha)
	}
}
