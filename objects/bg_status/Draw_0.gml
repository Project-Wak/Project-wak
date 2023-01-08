/// @description Insert description here
// You can write your code in this editor

var _c_x = obj_camera.v_x/1280
var wid = camera_get_view_width(view_camera[0])
var hei = camera_get_view_height(view_camera[0])
var xx = camera_get_view_x(view_camera[0])+wid*0.5-250*_c_x
var yy = camera_get_view_y(view_camera[0])+(200-10)*0.8

draw_set_alpha(1)
draw_set_color($FF191414)
draw_rectangle(camera_get_view_x(view_camera[0])-128,camera_get_view_y(view_camera[0])-128,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])+128,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])+128,0)



if global.key_setting_message = 0
{
var xx2 = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5-410*_c_x
draw_set_alpha(0.9)
draw_set_color($FF0C0A0A)
draw_rectangle(camera_get_view_x(view_camera[0])-128,camera_get_view_y(view_camera[0])-128,xx2,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])+128,0)
}



if (pressed > 0 && global.key_setting_message > 0) || global.key_setting_message = 0
{
	if global.n_to_setting__ = 0
	{
		if global.key_setting_message = 1
		{
			if pressed > 0
			{
			draw_sprite_ext(sprite_index,10,xx-_c_x*64,yy,-_c_x*0.8,_c_x*0.8,0,c_white,1)
			draw_sprite_ext(sprite_index,10,xx+_c_x*64,yy,_c_x*0.8,_c_x*0.8,0,c_white,1)
			}
		}
		
	draw_sprite_ext(sprite_index,image_index,xx,yy,_c_x*0.8,_c_x*0.8,0,c_white,1)
	//draw_text_kl_scale(xx-24*_c_x,yy-70*_c_x,"장비 중인 무기",16,999,0.8,image_blend,0,-1,font0,1/3*_c_x,1/3*_c_x,image_angle)
	
	//무기 이미지
	var cal__img = global.n_sword
		if pressed > 0
		{
		cal__img = pressed-1
		}
	draw_sprite_ext(item_sword,cal__img,xx,yy,_c_x*0.6,_c_x*0.6,0,c_white,1)
	
	
	var item_name__ = "장착 안함"
	var item_desc__ = "무기를 장착하지 않음\n가드 효율 0%\n\n특수 효과 : 무기를 사용하는 공격은 사용 불가 (단, 달리기를 하지 않아도 "+string(keyconverter(global.a_key))+"키를 누를시 대쉬 스킬 발동)"
	if cal__img = 1
	{
	item_name__ = "양손 광선검 (+"+string(global.weapon_upgraded[cal__img])+")"
	item_desc__ = "양손으로 광선검을 사용한다\n가드 효율 0%\n\n특수 효과 : 익스플로전 사용 가능"
	}
	if cal__img = 2
	{
	item_name__ = "초록 광선검 (+"+string(global.weapon_upgraded[cal__img])+")"
	item_desc__ = "왁굳에디션 광선검\n가드 효율 10%\n\n특수 효과 : 일반 공격 공속 증가"
	}
	if cal__img = 3
	{
	item_name__ = "붉은 광선검 (+"+string(global.weapon_upgraded[cal__img])+")"
	item_desc__ = "푸른 광선검과 함께라면 더욱 강력해진다\n가드 효율 0%"
	}
	if cal__img = 4
	{
	item_name__ = "푸른 광선검 (+"+string(global.weapon_upgraded[cal__img])+")"
	item_desc__ = "붉은 광선검과 함께라면 더욱 강력해진다\n가드 효율 0%"
	}
	if cal__img = 5
	{
	item_name__ = "돌격 소총 (+"+string(global.weapon_upgraded[cal__img])+")"
	item_desc__ = "가디언 팬치들이 사용하던 소총 (예능 무기)\n가드 효율 -50%\n\n특수 효과 : "+string(keyconverter(global.a_key))+"키를 사용한 공격만 가능, 가드 불가, 총알 제한 없음\n적의 방어력을 무시한 고정 데미지 적용"
	}
	if cal__img = 6
	{
	item_name__ = "지옥참마도 (+"+string(global.weapon_upgraded[cal__img])+")"
	item_desc__ = "검성 우왁굳으로 돌아갈 때다\n가드 효율 20%\n\n특수 효과 : '할복' 사용 가능"
	}
	
	draw_text_kl_scale(xx+50*_c_x-global.key_setting_message*_c_x*70,yy-16*_c_x+global.key_setting_message*_c_x*80,item_name__,16,999,0.74,image_blend,0,-1,font0,1/3.5*_c_x,1/3.5*_c_x,image_angle)
	draw_text_kl_scale(xx+50*_c_x-global.key_setting_message*_c_x*70,yy+global.key_setting_message*_c_x*80,item_desc__,54*_c_x,2300*_c_x,0.4,image_blend,0,-1,font0,1/4*_c_x,1/4*_c_x,image_angle)
	draw_text_kl_scale(xx-24*_c_x,yy-70*_c_x,"장비 중인 무기",16,999,0.8,image_blend,0,-1,font0,1/3*_c_x,1/3*_c_x,image_angle)
	}
	//draw_text_kl_scale(xx-10*_c_x,yy-60*_c_x,"공격)",16,999,0.8,image_blend,0,-1,font0,1/3*_c_x,1/3*_c_x,image_angle)
}

	if global.key_setting_message = 1 && pressed > 0
	{
	draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5,camera_get_view_y(view_camera[0])+560*_c_x,"장비할 아이템을 선택해주세요 (방향키와 "+string(keyconverter(global.skip_key))+"키로 선택합니다)",_c_x*64,-1,0.7,c_white,0,0,font0,_c_x*0.3,_c_x*0.3,0);
	draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5,camera_get_view_y(view_camera[0])+615*_c_x,"(ESC키를 누르면 기존값으로 설정됩니다)",_c_x*64,-1,0.5,c_white,0,0,font0,_c_x*0.25,_c_x*0.25,0);
	}
	
	if global.n_to_setting__ = 0
	{
	draw_text_kl_scale(camera_get_view_x(view_camera[0])+32*_c_x,camera_get_view_y(view_camera[0])+32*_c_x,"- 스테이터스",16,999,0.8,image_blend,0,-1,font0,1/2.5*_c_x,1/2.5*_c_x,image_angle)
	}
	
	if global.n_to_setting__ = 1
	{
		if global.key_setting_message = 0
		{
		var play_time__ = global.playtime
		var cal_play_time__ = floor(global.playtime/60)
	
		draw_text_kl_scale(camera_get_view_x(view_camera[0])+32*_c_x,camera_get_view_y(view_camera[0])+32*_c_x,"- 기타",16,999,0.8,image_blend,0,-1,font0,1/2.5*_c_x,1/2.5*_c_x,image_angle)
		draw_sprite_ext(spr_icon,0,camera_get_view_x(view_camera[0])+260*_c_x,camera_get_view_y(view_camera[0])+165*_c_x,_c_x*0.5,_c_x*0.5,0,c_white,0.8)
		draw_text_kl_scale(camera_get_view_x(view_camera[0])+300*_c_x,camera_get_view_y(view_camera[0])+160*_c_x,"플레이 타임 : "+string(cal_play_time__)+"시간 "+string(play_time__-cal_play_time__*60)+"분",16,999,0.8,image_blend,0,-1,font0,1/3.5*_c_x,1/3.5*_c_x,image_angle)
	
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
		
		draw_sprite_ext(spr_icon,4,camera_get_view_x(view_camera[0])+260*_c_x,camera_get_view_y(view_camera[0])+225*_c_x,_c_x*0.7,_c_x*0.7,0,c_white,0.8)

		draw_text_kl_scale(camera_get_view_x(view_camera[0])+300*_c_x,camera_get_view_y(view_camera[0])+200*_c_x,"선택한 난이도 : "+string(difficulty__),16,999,0.8,image_blend,0,-1,font0,1/3.5*_c_x,1/3.5*_c_x,image_angle)
		draw_text_kl_scale(camera_get_view_x(view_camera[0])+300*_c_x,camera_get_view_y(view_camera[0])+230*_c_x,"총 사망 횟수 : "+string(global.total_died)+"회",16,999,0.8,image_blend,0,-1,font0,1/3.5*_c_x,1/3.5*_c_x,image_angle)
		}
	}
	
	

var text_____ = "(ESC키 혹은 Tab키로 창 닫기)"

if !instance_exists(player)
{
text_____ = "(ESC키로 창 닫기)"
}
draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-42*_c_x,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-32*_c_x,text_____,16,999,0.7,$FFCC8E61,0,1,font0,1/3.5*_c_x,1/3.5*_c_x,image_angle)


var yy_ = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-(160-10)*0.8
var yy = camera_get_view_y(view_camera[0])+(160-10)*0.8
if global.key_setting_message = 0
{
///////////////////////////////////////////////////////////////////////////////////
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5-420*_c_x
draw_set_alpha(0.7)
draw_set_color(c_white)
draw_line_width(xx,yy,xx,yy_,2*_c_x)

///////////////////////////////////////////////////////////////////////////////////
}


if global.n_to_setting__ != 2
{
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-280*_c_x

draw_set_alpha(0.7)
draw_set_color(c_white)
draw_line_width(xx,yy,xx,yy_,2*_c_x)
if global.n_to_setting__ = 0 && global.story_next < 100
{
var dmg = global.damage_plus*(16+global.weapon_upgraded[global.n_sword]*3)
var stamina_ = floor(global.stamina*100)/10
var critical_dmg = dmg*1.5
var def_real = global.max_armor_plus
var plus_mes = ""
if def_real > 1.9
{
def_real = 1.9
plus_mes = " (최대 90%)"
}
var def = 100*(def_real-1)
var g_p = (global.guard_power-1)*100
var hp___ = floor(global.hp*10)/10
var critical_per = (global.critical_plus)*100
if critical_per < 0
{
critical_per = 0
}
draw_text_kl_scale(xx+20*_c_x,yy-16*0.8,"플레이어 정보",16,999,0.9,image_blend,0,-1,font0,1/3*_c_x,1/3*_c_x,image_angle)
draw_text_kl_scale(xx+20*_c_x,yy+32*0.8,"HP : "+string(hp___)+"/"+string(player.max_hp)+"\nstamina : "+string(stamina_)+"/100"+"\n\n\nDMG : "+string(dmg)+"\n          +("+string(critical_dmg)+" critical dmg ["+string(critical_per)+"% 확률])\n\nDEF : "+string(def)+string(plus_mes)+"%\n\n\n가드 효율 : "+string(g_p)+"% 만큼\n 가드시 스테미나를 덜 소모합니다\n\n\n보유 중인 골드 :\n"+string(global.gold)+" Gold\n\n\n\n"+"피로도 : "+string(global.tiredness)+"/24\n\n(피로도가 18 이상 쌓였을 경우,\n                   최대 체력이 감소합니다)",54*_c_x,2300*_c_x,0.7,image_blend,0,-1,font0,1/3.5*_c_x,1/3.5*_c_x,image_angle)
}
else
{
	if global.key_setting_message = 0
	{
	draw_text_kl_scale(xx+20*_c_x,yy-16*0.8,"보유 중인 재료아이템",16,999,0.9,image_blend,0,-1,font0,1/3*_c_x,1/3*_c_x,image_angle)
	}

var draw_i = 0
	for(var i = 0; i < 5; i++)
	{
		if global.item_owned[i] > 0
		{
		draw_text_kl_scale(xx+20*_c_x,yy+27*0.8+35*0.8*draw_i,string(global.item_name_owned[i])+" x"+string(global.item_owned[i]),54*_c_x,2300*_c_x,0.7,image_blend,0,-1,font0,1/3.2*_c_x,1/3.2*_c_x,image_angle)
		draw_i ++
		}
	}
}
}






if global.n_to_setting__ = 2
{
global.show_achievement = 1
}
else
{
global.show_achievement = 0
}

if global.show_achievement > 0
{
var main_text_alpha = 1-abs(global.achievement_yy)/96
draw_text_k_scale(xx+wid*0.4,yy-_c_x*96,"달성한 도전과제",200,-1,main_text_alpha,c_white,0,0,font_title,_c_x/5,_c_x/5,0)


var cleared_achievement = 0
	for(var i = 0; i <= 24; i++)
	{
	draw_text_k_scale(xx+wid*0.1,yy+_c_x*(40+i*60-global.achievement_yy),string(global.achievement_name[i])+"  ("+string(floor(global.achievement_percentage[i]))+"%)",200,-1,0.5+global.achievement_percentage[i]/500,c_white,0,-1,font_title,_c_x/6,_c_x/6,0)
	draw_rectangle(xx+wid*0.1,yy+_c_x*(75+i*60-global.achievement_yy),xx+wid*0.1+global.achievement_percentage[i]*4.5*_c_x,yy+_c_x*(80+i*60-global.achievement_yy),false)
	draw_text_k_scale(xx+wid*0.1,yy+_c_x*(60+i*60-global.achievement_yy),global.achievement_desc[i],200,-1,0.45+global.achievement_percentage[i]/650,c_white,0,-1,font_title,_c_x/8,_c_x/8,0)
		if global.achievement[i] > 0
		{
		cleared_achievement ++
		}
	}
	
var yy_for_total_achievement = global.achievement_yy

if yy_for_total_achievement > 96
{
yy_for_total_achievement = 96
}

if yy_for_total_achievement < 0
{
yy_for_total_achievement = 0
}

draw_text_k_scale(xx+wid*0.6,yy+_c_x*(-64-yy_for_total_achievement*0.65),"총 달성한 도전과제",200,-1,0.8,c_white,0,0,font_title,_c_x/7,_c_x/7,0)
draw_text_k_scale(xx+wid*0.6,yy+_c_x*(-32-yy_for_total_achievement*0.65),string(cleared_achievement)+"/24",200,-1,0.8,c_white,0,0,font_title,_c_x/8,_c_x/8,0)

draw_text_k_scale(xx+wid-_c_x*256,yy,"(마우스 휠을 통해 둘러보기)",200,-1,0.8,c_white,0,1,font_title,_c_x/7,_c_x/7,0)
}