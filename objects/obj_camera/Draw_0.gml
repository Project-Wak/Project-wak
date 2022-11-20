/// @description Insert description here
// You can write your code in this editor
//draw_text(x,y,string(t_x)+"/"+string(t_y))
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])
var yy = camera_get_view_y(view_camera[0])
var yy2 = yy+camera_get_view_height(view_camera[0])
var v_x_ = obj_camera.v_x/1280
var __alpha_set = 1-global.b_alpha_prt-global.b_alpha

if global.left_time > 0 && global.show_credits = 0 && global.show_ui = 1
{
	if (instance_exists(player) && global.clock > 0) && (global.playing_scene = 0 && global.never_move_in_setting = 0 && global.b_alpha < 0.2 && player.attack_laser+player.attack_laser_sec <= 0 && global.show_guide_mes = -4)
	{
	var cal_days = floor(global.left_time/24)
	var cal_night = "낮"
	var cal_time = global.left_time - cal_days*24
		if global.n_night = 1
		{
		cal_night = "밤"
		}

	draw_sprite_ext(spr_icon,0,xx-220*v_x_,yy+42*v_x_,v_x_*0.6,v_x_*0.6,0,c_white,0.8)

	draw_text_kl_scale(xx-180*v_x_,yy+30*v_x_,"현재 시각",64,-1,0.8,c_white,-1,-1,font0,v_x_/3.5,v_x_/3.5,0)
	draw_text_kl_scale(xx-175*v_x_,yy+50*v_x_,string(global.n_time)+":00"+" ("+string(cal_night)+")",64,-1,0.8,c_white,-1,-1,font0,v_x_/4,v_x_/4,0)
	
	
	if instance_exists(obj_wakdroid) || instance_exists(obj_last_boss) || instance_exists(obj_wakdroid_ending)
	{
	cal_days = 0
	cal_time = 0
	}

	draw_text_kl_scale(xx-113*v_x_,yy+32*v_x_,"/",64,-1,0.6,c_white,-1,-1,font0,v_x_/3,v_x_/1.5,0)
	draw_text_kl_scale(xx-100*v_x_,yy+30*v_x_,"D-day",64,-1,0.6,c_white,-1,-1,font0,v_x_/3.5,v_x_/3.5,0)
	draw_text_kl_scale(xx-95*v_x_,yy+50*v_x_,string(cal_days)+"일 "+string(cal_time)+"시간 남음",64,-1,0.6,c_white,-1,-1,font0,v_x_/4,v_x_/4,0)
	}








var __ins = global.boss_target
if global.boss_hp_alpha > 0
{
var change_icon = 0
var _xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5
draw_sprite_ext(sprite20,0,_xx-220*v_x_,yy+626*v_x_,11.8*v_x_,2.21*v_x_,0,c_white,global.boss_hp_alpha)

if instance_exists(obj_wakdroid) || instance_exists(obj_last_boss) || instance_exists(obj_angel)
{
change_icon = 1
draw_sprite_ext(sprite20,0,_xx-220*v_x_,yy+634*v_x_,11.8*v_x_,2.21*v_x_,0,c_white,global.boss_hp_alpha)
draw_text_kl_scale(_xx-180*v_x_,yy+630*v_x_,"Rage",64,-1,global.boss_hp_alpha,c_white,-1,-1,font0,v_x_*0.23,v_x_*0.23,0)

if instance_exists(obj_wakdroid)
{
var rage_gagement = obj_wakdroid.rage_mode
var max_gagement = 1
	if rage_gagement <= 0
	{
	rage_gagement = obj_wakdroid.damaged_count
	max_gagement = 150
	}
}

if instance_exists(obj_last_boss)
{
var rage_gagement = 0
	if obj_last_boss.patturn > 3.07 && obj_last_boss.patturn < 3.55
	{
	rage_gagement = (obj_last_boss.patturn - 3.07)
	}
var max_gagement = 0.48
	if rage_gagement <= 0
	{
	rage_gagement = 0
	}
}

if instance_exists(obj_angel)
{
var rage_gagement = (obj_angel.hp-1500)
	if obj_angel.phase_change != 0
	{
	rage_gagement = 1500
	}
var max_gagement = 1800
	if rage_gagement <= 0
	{
	rage_gagement = 0
	}
}

	
	if draw_rage_gagement > max_gagement
	{
	draw_rage_gagement = max_gagement
	}
draw_rage_gagement +=(rage_gagement - draw_rage_gagement)*0.1
draw_sprite_ext(sprite20,2,_xx-150*v_x_,yy+636*v_x_,((draw_rage_gagement)/max_gagement)*11.1*v_x_,v_x_,0,c_white,global.boss_hp_alpha)
}

	if instance_exists(__ins)
	{
	draw_hp += (__ins.hp - draw_hp)*0.1
		if m_hp != __ins.hp
		{
		draw_sprite_ext(sprite20,5,_xx-190*v_x_,yy+626*v_x_,(m_hp/__ins.max_hp)*12.1*v_x_,2.2*v_x_,0,c_white,global.boss_hp_alpha)
		}
	draw_sprite_ext(sprite20,1,_xx-190*v_x_,yy+626*v_x_,(draw_hp/__ins.max_hp)*12.1*v_x_,2.2*v_x_,0,c_white,global.boss_hp_alpha)
	}

	if change_icon = 1
	{
	draw_text_kl_scale(_xx-185*v_x_,yy+598*v_x_,global.boss_name,64,-1,global.boss_hp_alpha,c_white,-1,-1,font0,v_x_*0.34,v_x_*0.34,0)
	draw_sprite_ext(boss_shower,3,_xx-210*v_x_,yy+632*v_x_,v_x_*0.9,v_x_*0.9,0,c_white,global.boss_hp_alpha)
	}
	else
	{
	draw_text_kl_scale(_xx-195*v_x_,yy+598*v_x_,global.boss_name,64,-1,global.boss_hp_alpha,c_white,-1,-1,font0,v_x_*0.34,v_x_*0.34,0)
	draw_sprite_ext(boss_shower,0,_xx-210*v_x_,yy+626*v_x_,v_x_,v_x_,0,c_white,global.boss_hp_alpha)
	}
}





if room != menu && global.playing_scene = 0 && global.story_next < 100 && global.never_move_in_setting = 0 && global.b_alpha < 0.2 && global.show_credits = 0 && instance_exists(player) && (player.attack_laser+player.attack_laser_sec <= 0) && global.show_guide_mes = -4
{
	if global.slow_motion = 0 && global.show_challenger = 0 && global.select_dev_setting = 0
	{
	var hp__ = "HP"
	var ste__ = "Stamina"
	var rage__ = "Rage"
	var o2 = "O2"
		if global.korean_text = 1
		{
		hp__ = "체력"
		ste__ = "스테미나"
		rage__ = "레이지"
		o2 = "산소"
		}
	var xx3 = camera_get_view_x(view_camera[0])+v_x_*16
	draw_text_kl_scale(xx3,yy+40*v_x_,hp__,(v_x_)*76,-1,__alpha_set,c_white,0,-1,font0,v_x_*0.35,v_x_*0.35,0);
	draw_text_kl_scale(xx3,yy+72*v_x_,ste__,v_x_*64,-1,__alpha_set,c_white,0,-1,font0,v_x_*0.35,v_x_*0.35,0);
	draw_text_kl_scale(xx3,yy+101*v_x_,rage__,v_x_*64,-1,__alpha_set,c_white,0,-1,font0,v_x_*0.35,v_x_*0.35,0);
	if global.o2 != 100
	{
	o2_alpha += (1 - o2_alpha)*0.1
	draw_text_kl_scale(player.x-48*v_x_,player.y-64*v_x_,"O2",v_x_*64,-1,__alpha_set*o2_alpha,c_white,0,-1,font0,v_x_*0.3,v_x_*0.3,0);
	}
	else
	{
	o2_alpha += (-0.01 - o2_alpha)*0.1
	}
	
	if global.gold_draw_alpha > 0
	{
	var alpha____ = global.gold_draw_alpha
		if alpha____ > 1
		{
		alpha____ = 1
		}
	draw_text_kl_scale(xx3,yy+151*v_x_,"Gold : "+string(floor(global.gold_for_draw))+" +"+string(floor(global.gold-global.gold_for_draw)),v_x_*64,-1,__alpha_set*alpha____*0.8,c_white,0,-1,font0,v_x_*0.34,v_x_*0.34,0);
	}
	
	if (instance_exists(player) && player.assult_mode > 0) && global.show_credits = 0
	{
	draw_sprite_ext(Sprite162,2,xx3+12*v_x_,yy+198*v_x_,v_x_*0.65,v_x_*0.65,0,c_white,__alpha_set*0.5)
	draw_text_kl_scale(xx3+32*v_x_,yy+191*v_x_,"전투모드",v_x_*64,-1,__alpha_set*0.5,c_white,0,-1,font0,v_x_*0.3,v_x_*0.3,0);
	}

	
	//draw_text_kl_scale(camera_get_view_x(view_camera[0])+v_x_*16,yy+128*v_x_,"Rank : "+string(floor(global.draw_rank)),v_x_*64,-1,__alpha_set,c_white,0,-1,font0,v_x_*0.35,v_x_*0.35,0);
		//if global.draw_now_rank > 0
		//{
		//var _color = $FF7D47EE
	
			//if global.draw_rank < global.gold
			//{
			//_color = $FFF7D06D
			//}
		//draw_text_k_scale(camera_get_view_x(view_camera[0])+v_x_*16,yy+128*v_x_,"Rank : "+string(floor(global.draw_rank)),v_x_*64,-1,global.draw_now_rank-global.b_alpha_prt-global.b_alpha,_color,0,-1,font0,v_x_*0.35,v_x_*0.35,0);
		//}
		
	
		//for(var i = 0; i < global.matched_pl1_won; i++)
		//{
		//draw_sprite_ext(spr_winning_point,0,camera_get_view_x(view_camera[0])+v_x_*(32+20*i),yy+170*v_x_,v_x_*0.6,v_x_*0.6,0,c_white,__alpha_set)
		//}
		
		//for(var i = 0; i < global.matched_pl2_won; i++)
		//{
		//draw_sprite_ext(spr_winning_point,1,camera_get_view_x(view_camera[0])+v_x_*(32+20*i),yy+210*v_x_,v_x_*0.6,v_x_*0.6,0,c_white,__alpha_set)
		//}
	}
}

	if global.guide_boss = 1 && global.chat_activity = false && global.slow_motion = 0 && global.show_challenger = 0 && global.none_wakgood_mode = false
	{
	var __yyy = yy+(50-guide_m_alpha*300)*v_x_
	var mid_xx__ = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5
	guide_m_alpha += (0 - guide_m_alpha)*0.1
	draw_set_color(c_black)
	draw_set_alpha(0.5)
	draw_rectangle(mid_xx__-v_x_*140,__yyy,mid_xx__+v_x_*140,__yyy-v_x_*50,0)
	draw_set_alpha(__alpha_set)

	draw_text_kl_scale(mid_xx__,__yyy-v_x_*40,"너무 어렵다면?",v_x_*64,-1,__alpha_set,c_white,0,0,font0,v_x_*0.2,v_x_*0.2,0);
	draw_text_kl_scale(mid_xx__,__yyy-v_x_*25,"해당 보스 가이드 보기[M]",v_x_*64,-1,__alpha_set,c_white,0,0,font0,v_x_*0.3,v_x_*0.3,0);
	}
	
	
	if global.guide_boss != 1 || global.playing_scene > 0 || global.b_alpha > 0.1 || (instance_exists(player) && (player.attack_laser+player.attack_laser_sec > 0) || (player.assult_mode > -299 && instance_exists(obj_wakdroid))) || global.show_guide_mes != -4
	{
	guide_m_alpha = 1
	}
	


	if global.guide = 1 && global.chat_activity = false && global.slow_motion = 0 && global.show_challenger = 0 && global.none_wakgood_mode = false
	{
	var __yyyy = yy2+guide_g_alpha*300*v_x_
	guide_g_alpha += (0 - guide_g_alpha)*0.1
	draw_set_color(c_black)
	draw_set_alpha(0.5)
	draw_rectangle(xx,__yyyy,xx-v_x_*842,__yyyy-v_x_*136,0)
	draw_set_alpha(__alpha_set)

	draw_text_kl_scale(xx-v_x_*836,__yyyy-v_x_*130,"기능키 : ",v_x_*64,-1,__alpha_set,c_white,0,-1,font0,v_x_*0.3,v_x_*0.3,0);
	draw_text_kl_scale(xx-v_x_*836,__yyyy-v_x_*130+v_x_*32,"환경 설정[ESC]",v_x_*64,-1,__alpha_set*0.7,c_white,0,-1,font0,v_x_*0.3,v_x_*0.3,0);
	draw_text_kl_scale(xx-v_x_*836,__yyyy-v_x_*130+v_x_*56,"장비창[Tab]",v_x_*64,-1,__alpha_set*0.7,c_white,0,-1,font0,v_x_*0.3,v_x_*0.3,0);
	draw_text_kl_scale(xx-v_x_*836,__yyyy-v_x_*130+v_x_*80,"상호작용/선택["+string(global.skip_key)+"] (지상)",v_x_*64,-1,__alpha_set*0.7,c_white,0,-1,font0,v_x_*0.3,v_x_*0.3,0);
	draw_text_kl_scale(xx-v_x_*836,__yyyy-v_x_*130+v_x_*104,"사망 회귀["+string(global.suicide_key)+"] (지상)",v_x_*64,-1,__alpha_set*0.7,c_white,0,-1,font0,v_x_*0.3,v_x_*0.3,0);


	draw_text_kl_scale(xx-v_x_*636,__yyyy-v_x_*130,"전투 기술(스테미나 소모) : ",v_x_*64,-1,__alpha_set,c_white,0,-1,font0,v_x_*0.3,v_x_*0.3,0);
	draw_text_kl_scale(xx-v_x_*636,__yyyy-v_x_*130+v_x_*32,"가드[상] (지상)",v_x_*64,-1,__alpha_set*0.7,c_white,0,-1,font0,v_x_*0.3,v_x_*0.3,0);
	draw_text_kl_scale(xx-v_x_*636,__yyyy-v_x_*130+v_x_*56,"구르기[하] (지상)",v_x_*64,-1,__alpha_set*0.7,c_white,0,-1,font0,v_x_*0.3,v_x_*0.3,0);
	draw_text_kl_scale(xx-v_x_*636,__yyyy-v_x_*130+v_x_*80,"대쉬["+string(global.a_key)+"] (지상/공중)",v_x_*64,-1,__alpha_set*0.7,c_white,0,-1,font0,v_x_*0.3,v_x_*0.3,0);
	draw_text_kl_scale(xx-v_x_*636,__yyyy-v_x_*130+v_x_*104,"달리기[Shift]",v_x_*64,-1,__alpha_set*0.7,c_white,0,-1,font0,v_x_*0.3,v_x_*0.3,0);
	


	draw_text_kl_scale(xx-v_x_*436,__yyyy-v_x_*130,"기본 스킬(스테미나 소모) : ",v_x_*64,-1,__alpha_set,$FFF7D06D,0,-1,font0,v_x_*0.3,v_x_*0.3,0);
	draw_text_kl_scale(xx-v_x_*436,__yyyy-v_x_*130+v_x_*32,"돌진 베기["+string(global.s_key)+"] (지상)",v_x_*64,-1,__alpha_set*0.7,c_white,0,-1,font0,v_x_*0.3,v_x_*0.3,0);
	draw_text_kl_scale(xx-v_x_*436,__yyyy-v_x_*130+v_x_*56,"회전베기["+string(global.q_key)+"] (지상/공중)",v_x_*64,-1,__alpha_set*0.7,c_white,0,-1,font0,v_x_*0.3,v_x_*0.3,0);
	draw_text_kl_scale(xx-v_x_*436,__yyyy-v_x_*130+v_x_*80,"올려 베기["+string(global.w_key)+"] (지상/공중)",v_x_*64,-1,__alpha_set*0.7,c_white,0,-1,font0,v_x_*0.3,v_x_*0.3,0);
	draw_text_kl_scale(xx-v_x_*436,__yyyy-v_x_*130+v_x_*104,"아래 베기["+string(global.s_key)+"] (공중)",v_x_*64,-1,__alpha_set*0.7,c_white,0,-1,font0,v_x_*0.3,v_x_*0.3,0);
	

	draw_text_kl_scale(xx-v_x_*8,__yyyy-v_x_*180,"(G키로 가이드 열고 닫기)",v_x_*64,-1,__alpha_set,c_white,0,1,font0,v_x_*0.3,v_x_*0.3,0);
	draw_text_kl_scale(xx-v_x_*236,__yyyy-v_x_*130,"특수 스킬(레이지(Rage) 소모) : ",v_x_*64,-1,__alpha_set,$FF7D47EE,0,-1,font0,v_x_*0.3,v_x_*0.3,0);
	draw_text_kl_scale(xx-v_x_*236,__yyyy-v_x_*130+v_x_*32,"레이지 모드 ["+string(global.e_key)+" 지속 누르기]",v_x_*64,-1,__alpha_set*0.7,c_white,0,-1,font0,v_x_*0.3,v_x_*0.3,0);
	draw_text_kl_scale(xx-v_x_*236,__yyyy-v_x_*130+v_x_*80,"특수 능력 (좌/우/하 지속 누르기 + "+string(global.e_key)+")",v_x_*64,-1,__alpha_set*0.7,c_white,0,-1,font0,v_x_*0.3,v_x_*0.3,0);
	//draw_text_kl_scale(xx-v_x_*236,yy2-v_x_*170+v_x_*114,"특수 능력 (좌/우/하 방향키 + E)",v_x_*64,-1,__alpha_set,c_white,0,-1,font0,v_x_*0.35,v_x_*0.35,0);
	}
	
	
	if global.guide != 1 || global.playing_scene > 0 || global.b_alpha > 0.1 || (instance_exists(player) && player.attack_laser+player.attack_laser_sec > 0) || global.show_guide_mes != -4
	{
	guide_g_alpha = 1
	}
}


if global.show_guide_mes != -4
{
show_guide_mes_alpha += (1 - show_guide_mes_alpha)*0.1
message_can_des_delay ++
global.key_setting_message = 1
global.never_move = 1
var g_xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5
var g_yy_before = yy+v_x_*170
var g_yy = g_yy_before+v_x_*guide_gif_y

if guide_gif_alpha > 0
{
draw_set_color(c_black)
draw_set_alpha(0.4*guide_gif_alpha)
draw_rectangle(camera_get_view_x(view_camera[0]),yy,xx,yy+camera_get_view_height(view_camera[0]),false)
}

code.option = 0
instance_destroy(setting_parents)

	if global.show_guide_mes_spr != 6
	{
	draw_set_color(c_black)
	draw_set_alpha(0.7*show_guide_mes_alpha)
	draw_rectangle(g_xx-v_x_*200,g_yy-v_x_*32,g_xx+v_x_*200,g_yy+v_x_*(220-guide_gif_y*0.5),false)
	draw_sprite_ext(spr_icon,global.show_guide_mes_spr,g_xx-v_x_*170,g_yy-v_x_*11,v_x_*0.6,v_x_*0.6,0,c_white,0.8*show_guide_mes_alpha)
	draw_text_kl_scale(g_xx,g_yy-v_x_*20,string(global.show_guide_mes),v_x_*73,-1,0.67*show_guide_mes_alpha,c_white,0,0,font0,v_x_/3.5,v_x_/3.5,0);
	
		if !audio_is_playing(boss_bgm) && !audio_is_playing(quake_sfx) && global.show_ui = 1
		{
		draw_text_kl_scale(g_xx+v_x_*190,g_yy-guide_gif_y*0.5*v_x_,"\n\n\n\n\n\n\n\n\n\n\n\n\n("+string(global.skip_key)+"키를 눌러 넘기기)",v_x_*64,-1,0.5*show_guide_mes_alpha,c_white,0,1,font0,v_x_*0.3,v_x_*0.3,0);
		}
	}
	else
	{
	message_can_des_delay ++
	draw_set_color(c_black)
	draw_set_alpha(0.7*show_guide_mes_alpha)
	draw_rectangle(g_xx-v_x_*200,g_yy-v_x_*12,g_xx+v_x_*200,g_yy+v_x_*23,false)
	draw_text_kl_scale(g_xx,g_yy,string(global.show_guide_mes),v_x_*73,-1,0.67,c_white,0,0,font0,v_x_/3.5,v_x_/3.5,0);
	
		if !audio_is_playing(boss_bgm) && !audio_is_playing(quake_sfx) && global.show_ui = 1
		{
		draw_text_kl_scale(g_xx+v_x_*190,g_yy,"\n\n"+string(global.skip_key)+"키를 눌러 넘기기",v_x_*64,-1,0.5*show_guide_mes_alpha,c_white,0,1,font0,v_x_*0.3,v_x_*0.3,0);
		}
	}
	
	
	
	if sprite_exists(global.guide_gif)
	{
	message_can_des_delay -= 0.5
	guide_gif_y_timer += 0.2

		if guide_gif_y_timer > 5
		{
		guide_gif_y += (180 - guide_gif_y)*0.1
		}
	
		if guide_gif_y_timer > 10
		{
		guide_gif_alpha += (1.01 - guide_gif_alpha)*0.1
		}
	draw_sprite_ext(global.guide_gif,guide_gif_y_timer,g_xx,g_yy_before+v_x_*25,v_x_*0.7,v_x_*0.7,0,c_white,guide_gif_alpha)
	}
	
	
	
	if keyboard_check_released(ord(string(global.skip_key))) && message_can_des_delay > 60
	{
	global.never_move = 0
	global.key_setting_message = 0
	global.show_guide_mes = -4
	global.guide_gif = -4
	guide_sfx = 0
	message_can_des_delay = 0
	show_guide_mes_alpha = 0
	}
	
	if guide_sfx = 0 && global.show_guide_mes_spr != 6
	{
	var sfx = audio_play_sound(activate_sfx,0,0)
	audio_sound_gain(sfx,0.5*global.master_volume*2*global.sfx_volume,0)
	
	guide_sfx = 1
	}
}


	
	draw_set_color(c_red)
	draw_set_alpha(global.r_alpha)
	draw_rectangle(0,0,room_width,room_height,0)
	draw_set_alpha(1)

	if global.fps_draw = 0
	{
	draw_set_color(c_black)
	draw_set_alpha(global.b_alpha*global.ending_b_alpha)
	//draw_text(32,32,global.ending_b_alpha)
	draw_rectangle(0,0,room_width,room_height,0)
	draw_set_alpha(1)


	draw_set_color(c_black)
	draw_set_alpha(global.b_alpha_prt)
	draw_rectangle(0,0,room_width,room_height,0)
	draw_set_alpha(1)
	}


var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])
var xxx = camera_get_view_width(view_camera[0])
var yyy = camera_get_view_height(view_camera[0])
if global.gameover > 0
{
audio_stop_sound(boss_bgm)
	if !audio_is_playing(it_s_over)
	{
	var sfx = audio_play_sound(it_s_over,0,0)
	audio_sound_gain(sfx,0.25*global.master_volume*2*global.bgm_volume,0)
	}
var xx_g = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5
var yy_g = camera_get_view_y(view_camera[0])+v_x_*250
if show_ending_var = 0
{
draw_text_kl_scale(xx_g,yy_g-v_x_*global.gameover*32,"Project Wak",v_x_*64,-1,global.gameover,c_white,0,0,font_title,v_x_*0.5,v_x_*0.5,0);
draw_text_kl_scale(xx_g,yy_g+v_x_*100-v_x_*(global.gameover-0.5)*64,"-The end-",v_x_*190,-1,(global.gameover-0.5)*2,c_white,0,0,font_title,v_x_*0.25,v_x_*0.25,0)
}
else
{
global.w_alpha -= 0.1
draw_text_kl_scale(xx_g,yy_g,global.gameover_reason_title,v_x_*64,-1,global.gameover,c_white,0,0,font_title,v_x_*0.3,v_x_*0.3,0);
draw_text_kl_scale(xx_g,yy_g+v_x_*100,global.gameover_reason,v_x_*190,-1,global.gameover*0.5,c_white,0,0,font_title,v_x_*0.15,v_x_*0.15,0)
}

draw_text_kl_scale(xx+xxx-32*v_x_,yy+yyy-(70)*v_x_,"("+string(global.skip_key)+"키를 눌러 다음으로)",v_x_*64,-1,global.gameover*0.5,c_white,0,1,font0,v_x_*0.3,v_x_*0.3,0);

	if global.gameover >= 0.98 && keyboard_check_released(ord(string(global.skip_key)))
	{
	//global.w_alpha = 0.6
	show_ending_var ++

		if show_ending_var > 1
		{
		game_restart()
		}
	}
}



if global.playing_scene > 0
{
var std_value = 110

	if global.show_credits > 0
	{
	std_value = 80
	}
	

	if global.playing_scene_black_bg < std_value
	{
	global.playing_scene_black_bg ++
	}
global.playing_scene_black_bg += (std_value - global.playing_scene_black_bg)*0.1
}
else
{
	if global.playing_scene_black_bg > 0
	{
	global.playing_scene_black_bg --
	}
global.playing_scene_black_bg += (-1 - global.playing_scene_black_bg)*0.1
}

if global.playing_scene_black_bg > 0
{
draw_set_alpha(1)
draw_set_color(c_black)
draw_rectangle(xx-32,yy-32,xx+xxx+32,yy-32+global.playing_scene_black_bg*v_x_,0)
draw_rectangle(xx-32,yy+yyy+32,xx+xxx+32,yy+yyy+32-global.playing_scene_black_bg*v_x_,0)

	if global.hp > 0 && instance_exists(player_message) && global.show_ui = 1
	{
		if audio_is_playing(boss_bgm) || audio_is_playing(final_battle)
		{
		draw_text_kl_scale(xx+xxx-32*v_x_,yy+yyy-(-64+global.playing_scene_black_bg)*v_x_,"("+string(global.skip_key)+"키 꾹 눌러 눌러 빨리 감기)",v_x_*64,-1,0.5,c_white,0,1,font0,v_x_*0.3,v_x_*0.3,0);
		}
		else
		{
		draw_text_kl_scale(xx+xxx-32*v_x_,yy+yyy-(-64+global.playing_scene_black_bg)*v_x_,""+string(global.skip_key)+"키를 눌러 넘기기)",v_x_*64,-1,0.5,c_white,0,1,font0,v_x_*0.3,v_x_*0.3,0);
		}
	}
}




if global.clock_alpha > 0 && global.none_wakgood_mode = false
{

var xx__ = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5
var yy__ = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])*0.5
var scale___ = global.clock_scale
	if scale___ < 0
	{
	scale___ = 0
	}
	

draw_sprite_ext(spr_rewind_clock,4,xx__,yy__,scale___,scale___,0,c_gray,global.clock_alpha*0.5)
draw_sprite_ext(spr_rewind_clock,5+global.broken_clock,xx__-global.clock_far_from,yy__,scale___,scale___,0,c_white,global.clock_alpha)

if global.broken_clock = 3
{
draw_sprite_ext(spr_rewind_clock,6+global.broken_clock,xx__+global.clock_far_from,yy__-global.clock_far_from*0.8,scale___,scale___,0,c_white,global.clock_alpha)
draw_sprite_ext(spr_rewind_clock,7+global.broken_clock,xx__+global.clock_far_from*0.8,yy__+global.clock_far_from,scale___,scale___,0,c_white,global.clock_alpha)
}


	if global.graphics_for_code >= 2
	{
	draw_sprite_ext(spr_rewind_clock,3,xx__,yy__,scale___,scale___,global.clock_angle,c_white,global.clock_alpha)
	draw_sprite_ext(spr_rewind_clock,3,xx__,yy__,scale___*0.8,scale___*0.8,global.clock_angle_sec,c_white,global.clock_alpha)
	}
	
	if global.graphics_for_code >= 2
	{
		for(var i = 0; i < 9; i += 0.3*(global.graphics_for_code/3))
		{
		draw_sprite_ext(spr_rewind_clock,4,xx__+v_x_*i*global.clock_shading,yy__,scale___,scale___,0,c_gray,global.clock_alpha*0.5*0.03)
		draw_sprite_ext(spr_rewind_clock,5+global.broken_clock,xx__-global.clock_far_from+v_x_*i*global.clock_shading,yy__,scale___,scale___,0,c_white,global.clock_alpha*0.03)
		draw_sprite_ext(spr_rewind_clock,3,xx__+v_x_*i*global.clock_shading,yy__,scale___,scale___,global.clock_angle,c_white,global.clock_alpha*0.03)
		draw_sprite_ext(spr_rewind_clock,3,xx__+v_x_*i*global.clock_shading,yy__,scale___*0.8,scale___*0.8,global.clock_angle_sec,c_white,global.clock_alpha*0.03)
	
		draw_sprite_ext(spr_rewind_clock,4,xx__-v_x_*i*global.clock_shading,yy__,scale___,scale___,0,c_gray,global.clock_alpha*0.5*0.03)
		draw_sprite_ext(spr_rewind_clock,5+global.broken_clock,xx__-global.clock_far_from-v_x_*i*global.clock_shading,yy__,scale___,scale___,0,c_white,global.clock_alpha*0.03)
		draw_sprite_ext(spr_rewind_clock,3,xx__-v_x_*i*global.clock_shading,yy__,scale___,scale___,global.clock_angle,c_white,global.clock_alpha*0.03)
		draw_sprite_ext(spr_rewind_clock,3,xx__-v_x_*i*global.clock_shading,yy__,scale___*0.8,scale___*0.8,global.clock_angle_sec,c_white,global.clock_alpha*0.03)
	
		draw_sprite_ext(spr_rewind_clock,4,xx__,yy__+v_x_*i*global.clock_shading,scale___,scale___,0,c_gray,global.clock_alpha*0.5*0.03)
		draw_sprite_ext(spr_rewind_clock,5+global.broken_clock,xx__-global.clock_far_from,yy__+v_x_*i*global.clock_shading,scale___,scale___,0,c_white,global.clock_alpha*0.03)
		draw_sprite_ext(spr_rewind_clock,3,xx__,yy__+v_x_*i*global.clock_shading,scale___,scale___,global.clock_angle,c_white,global.clock_alpha*0.03)
		draw_sprite_ext(spr_rewind_clock,3,xx__,yy__+v_x_*i*global.clock_shading,scale___*0.8,scale___*0.8,global.clock_angle_sec,c_white,global.clock_alpha*0.03)
	
		draw_sprite_ext(spr_rewind_clock,4,xx__,yy__-v_x_*i*global.clock_shading,scale___,scale___,0,c_gray,global.clock_alpha*0.5*0.03)
		draw_sprite_ext(spr_rewind_clock,5+global.broken_clock,xx__-global.clock_far_from,yy__-v_x_*i*global.clock_shading,scale___,scale___,0,c_white,global.clock_alpha*0.03)
		draw_sprite_ext(spr_rewind_clock,3,xx__,yy__-v_x_*i*global.clock_shading,scale___,scale___,global.clock_angle,c_white,global.clock_alpha*0.03)
		draw_sprite_ext(spr_rewind_clock,3,xx__,yy__-v_x_*i*global.clock_shading,scale___*0.8,scale___*0.8,global.clock_angle_sec,c_white,global.clock_alpha*0.03)
		
			if global.broken_clock = 3
			{
			draw_sprite_ext(spr_rewind_clock,6+global.broken_clock,xx__+v_x_*i*global.clock_shading+global.clock_far_from,yy__-global.clock_far_from*0.8,scale___,scale___,0,c_white,global.clock_alpha*0.03)
			draw_sprite_ext(spr_rewind_clock,7+global.broken_clock,xx__+v_x_*i*global.clock_shading+global.clock_far_from*0.8,yy__+global.clock_far_from,scale___,scale___,0,c_white,global.clock_alpha*0.03)
			draw_sprite_ext(spr_rewind_clock,6+global.broken_clock,xx__+global.clock_far_from,yy__+v_x_*i*global.clock_shading-global.clock_far_from*0.8,scale___,scale___,0,c_white,global.clock_alpha*0.03)
			draw_sprite_ext(spr_rewind_clock,7+global.broken_clock,xx__+global.clock_far_from*0.8,yy__+v_x_*i*global.clock_shading+global.clock_far_from,scale___,scale___,0,c_white,global.clock_alpha*0.03)
			draw_sprite_ext(spr_rewind_clock,6+global.broken_clock,xx__-v_x_*i*global.clock_shading+global.clock_far_from,yy__-global.clock_far_from*0.8,scale___,scale___,0,c_white,global.clock_alpha*0.03)
			draw_sprite_ext(spr_rewind_clock,7+global.broken_clock,xx__-v_x_*i*global.clock_shading+global.clock_far_from*0.8,yy__+global.clock_far_from,scale___,scale___,0,c_white,global.clock_alpha*0.03)
			draw_sprite_ext(spr_rewind_clock,6+global.broken_clock,xx__+global.clock_far_from,yy__-v_x_*i*global.clock_shading-global.clock_far_from*0.8,scale___,scale___,0,c_white,global.clock_alpha*0.03)
			draw_sprite_ext(spr_rewind_clock,7+global.broken_clock,xx__+global.clock_far_from*0.8,yy__-v_x_*i*global.clock_shading+global.clock_far_from,scale___,scale___,0,c_white,global.clock_alpha*0.03)
			}
		}
	}
}





if global.story_text_alpha > 0
{
	if global.story_next = 0
	{
	draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5,yy+300*v_x_,"어느날, 도파민 박사가 음모를 꿈꾸고",188*v_x_,-1,global.story_text_alpha,c_white,0,0,font0,v_x_/2.5,v_x_/2.5,0)
	}
	
	if global.story_next = 1
	{
	draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5,yy+300*v_x_,string(global.nickname)+"의 모습을 본딴 '왁드로이드'와 함께 로봇 병기를 제작하여\n세계를 위협하려 하고...",188*v_x_,-1,global.story_text_alpha,c_white,0,0,font0,v_x_/2.5,v_x_/2.5,0)
	}
	
	if global.story_next = 2
	{
	draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5,yy+300*v_x_,string(global.nickname)+"은/는 그 계획을 저지하기 위해\n왁드로이드의 완성 전, 박사의 연구소로 향했습니다",188*v_x_,-1,global.story_text_alpha,c_white,0,0,font0,v_x_/2.5,v_x_/2.5,0)
	}
}

if global.shine_ef = 0
{
draw_set_color(c_white)
draw_set_alpha(global.w_alpha)
draw_rectangle(0,0,room_width,room_height,0)
draw_set_alpha(1)
}





