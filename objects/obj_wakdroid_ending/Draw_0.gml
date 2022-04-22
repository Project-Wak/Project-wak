/// @description Insert description here
// You can write your code in this editor
var v_x = obj_camera.v_x/1280
var p_floor = y
var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])
var wid = camera_get_view_width(view_camera[0])


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
draw_text_kl_scale(x,y-v_x*64,"상호작용 ("+string(global.skip_key)+")",v_x*64,-1,1,c_white,0,0,font0,v_x*0.3,v_x*0.3,0);
}


if global.credit_b_alpha > 0
{
draw_set_alpha(global.credit_b_alpha)
draw_set_color(c_black)
draw_rectangle(0,0,room_width,room_height,false)
}

if global.show_credits > 0
{
global.show_credits ++
var alpha = (global.show_credits-40)*0.8
	if alpha > 0.8
	{
	alpha = 0.8
	}
	
draw_text_k_scale(xx+wid*0.5,yy-v_x*(global.show_credits-940),string(global.credit_message),200,-1,alpha,c_white,0,0,font_title,v_x/5,v_x/5,0)

	if keyboard_check(ord(string(global.skip_key)))
	{
	global.show_credits += 5
	}
}

if show_ending != 0
{
var alpha = show_ending*0.8
	if alpha > 0.8
	{
	alpha = 0.8
	}
var alpha2 = (show_ending-0.9)*10
	if alpha2 > 0.6
	{
	alpha = 0.6
	}
draw_text_kl_scale(xx+wid*0.5,yy+camera_get_view_height(view_camera[0])*0.4-v_x*show_ending*60,"-The end-",200,-1,alpha*1.6,c_white,0,0,font_title,v_x/3,v_x/3,0)
draw_text_kl_scale(xx+wid*0.5,yy+camera_get_view_height(view_camera[0])*0.4-v_x*(show_ending*60-100),global.gameover_reason,200,-1,alpha2*0.6,c_white,0,0,font_title,v_x/5.8,v_x/5.8,0)
}
