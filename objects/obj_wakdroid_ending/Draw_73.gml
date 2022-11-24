/// @description Insert description here
// You can write your code in this editor
var v_x = obj_camera.v_x/1280

var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])
var wid = camera_get_view_width(view_camera[0])

if global.credit_b_alpha > 0
{
draw_set_alpha(global.credit_b_alpha)
draw_set_color(c_black)
draw_rectangle(0,0,room_width,room_height,false)
}

if global.show_credits > 0
{
depth = obj_camera.depth+100
global.show_credits ++
var alpha = (global.show_credits-40)*0.8
	if alpha > 0.8
	{
	alpha = 0.8
	}
	
var scale_ = 1
if audio_is_playing(ending_cinematic)
{
scale_ = 0.9
}
var play_time__ = global.playtime
var cal_play_time__ = floor(global.playtime/60)
var difficulty__ = "하드 코어"
if global.difficulty = 2
{
difficulty__ = "매우 어려움"
}
if global.difficulty = 1.5
{
difficulty__ = "어려움"
}
if global.difficulty = 1
{
difficulty__ = "보통"
	if global.time_plusment = 2
	{
	difficulty__ = "쉬움"
		if global.super_easy = 2
		{
		difficulty__ = "매우 쉬움"
		}
	}
}


draw_text_k_scale(xx+wid*0.5,yy-v_x*(global.show_credits*scale_-940),string(global.credit_message)+"\n\n\n\n\n총 사망 횟수\n"+string(global.total_died)+"회\n\n\n선택한 난이도\n"+string(difficulty__)+"\n\n\n총 플레이 타임\n"+string(cal_play_time__)+"시간 "+string(play_time__-cal_play_time__*60)+"분",200,-1,alpha,c_white,0,0,font_title,v_x/5,v_x/5,0)

	if keyboard_check(global.skip_key)
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
	
	if global.show_credits = 0 && show_mes_ending = 0
	{
	draw_text_kl_scale(xx+wid*0.5,yy+camera_get_view_height(view_camera[0])*0.4-v_x*show_ending*60,"Project Wak",200,-1,alpha*1.6,c_white,0,0,font_title,v_x/2.5,v_x/2.5,0)
	draw_text_kl_scale(xx+wid*0.5,yy+camera_get_view_height(view_camera[0])*0.4-v_x*(show_ending*60-100),"-The end-",200,-1,alpha2*0.6,c_white,0,0,font_title,v_x/4,v_x/4,0)
	}
	if show_mes_ending = 1
	{
	draw_text_kl_scale(xx+wid*0.5,yy+camera_get_view_height(view_camera[0])*0.4-v_x*show_ending*60,global.gameover_reason_title,200,-1,alpha*1.6,c_white,0,0,font_title,v_x/4,v_x/4,0)
	draw_text_kl_scale(xx+wid*0.5,yy+camera_get_view_height(view_camera[0])*0.4-v_x*(show_ending*60-100),global.gameover_reason,200,-1,alpha2*0.6,c_white,0,0,font_title,v_x/5.5,v_x/5.5,0)
	}
	
	if global.fps_draw > 0
	{
	draw_set_alpha(1)
	draw_text(xx+300,yy+300,global.show_credits)
	}
}
