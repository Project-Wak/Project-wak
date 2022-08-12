/// @description Insert description here
// You can write your code in this editor
var v_x = global.camera_vx
var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])
var wid = camera_get_view_width(view_camera[0])
var hei = camera_get_view_height(view_camera[0])


if surface_exists(owner_surface)
{
var surf__ = owner_surface
draw_outline(surf__,1.5)
}
else
{
owner_surface = surface_create(1920,1080)
}

if set_brightness = 0
{
var alpha_____ = 1 - global.b_alpha
draw_text_k_scale(xx+wid*0.5,yy+v_x*120,"게임을 플레이 하기 전, 게임 내 밝기 정도를 설정해주세요",99,-1,alpha_____,c_white,0,0,font_title,v_x/5,v_x/5,0)
draw_text_k_scale(xx+wid*0.5,yy+v_x*160,"화살표와 배경이 구별 가능한 정도로 보임과 동시에 배경은 조금 어두운 정도가 적당합니다",99,-1,alpha_____*0.7,c_white,0,0,font_title,v_x/6,v_x/6,0)
draw_text_k_scale(xx+wid*0.5,yy+v_x*190,"(잘 모르겠으면 보통(50%)으로 설정해주세요. 나중에 환경 설정에서 변경가능합니다)",99,-1,alpha_____*0.7,c_white,0,0,font_title,v_x/6.5,v_x/6.5,0)
draw_text_k_scale(xx+wid*0.5,yy+v_x*600,"(설정이 완료되었으면 'D'키를 눌러 넘어갑니다)",99,-1,alpha_____*brightness_set_alpha,c_white,0,0,font_title,v_x/6.5,v_x/6.5,0)
}

if set_brightness = 0.5
{
var alpha_____ = 1 - global.b_alpha
draw_text_k_scale(xx+wid*0.5,yy+v_x*120,"일부 영어로 표기되는 텍스트들을 전부 한국어로 바꿀까요?",99,-1,alpha_____,c_white,0,0,font_title,v_x/5,v_x/5,0)
draw_text_k_scale(xx+wid*0.5,yy+v_x*160,"설정 체크시, HP, Stamina, Gold -> 체력, 스테미나, 골드로 표기하며,",99,-1,alpha_____*0.7,c_white,0,0,font_title,v_x/6,v_x/6,0)
draw_text_k_scale(xx+wid*0.5,yy+v_x*190,"지금 설정하지 않아도 나중에 환경 설정에서 변경가능합니다",99,-1,alpha_____*0.7,c_white,0,0,font_title,v_x/6.5,v_x/6.5,0)
draw_text_k_scale(xx+wid*0.5,yy+v_x*600,"(설정이 완료되었으면 'D'키를 눌러 넘어갑니다)",99,-1,alpha_____*brightness_set_alpha,c_white,0,0,font_title,v_x/6.5,v_x/6.5,0)
}

if global.never_move_in_setting = 0 && global.show_credits = 0 && global.show_achievement = 0 && set_brightness = 1
{
//draw_text(300,300,dis)
dis = point_distance(xx+wid*0.5,400,mouse_x,mouse_y)

if go_start >= 3
{
draw_text_k_scale(xx+wid*0.5,yy+v_x*100,"Difficulty",99,-1,start_alpha,c_white,0,0,font_title,v_x/3.5,v_x/3.5,0)
draw_text_k_scale(xx+wid*0.5,yy+v_x*145,"(전체적인 난이도가 높은 편이니, 쉬움 혹은 보통 난이도를 권장합니다)",99,-1,start_alpha,c_white,0,0,font_title,v_x/6.5,v_x/6.5,0)
}
else
{
draw_text_k_scale(xx+wid*0.5,yy+v_x*120,"Project Wak",99,-1,start_alpha,c_white,0,0,font_title,v_x*0.7,v_x*0.7,0)
draw_text_k_scale(xx+wid*0.6,yy+v_x*185,"프로젝트 왁",99,-1,start_alpha,c_white,1,0,font_title,v_x/5,v_x/5,0)
	if use_keyboard_guide_alpha > 0
	{
	draw_text_k_scale(mouse_x+v_x*24,mouse_y+v_x*32,"(키보드 방향키 / D키로 선택)",200,-1,0.8,c_white,0,-1,font_title,v_x/7,v_x/7,0)
	}
}

draw_text_k_scale(xx+v_x*16,yy+hei-v_x*32,"-"+string(global.game_ver)+" ver",99,-1,menu_alpha*0.5,c_white,-1,-1,font_title,v_x/7,v_x/7,0)
var scale__ = 1
var scale__sec = 1
var message_1 = "Start Game"
var message_2 = "Setting"
var message_3 = "Achievement"
var message_4 = "Credits"
var message_5 = "Contact"
var message_6 = "Quit"
var text_scale = 1
if global.korean_text = 1
{
message_1 = "게임 시작"
message_2 = "환경 설정"
message_3 = "도전 과제"
message_4 = "크레딧"
message_5 = "문의"
message_6 = "종료"
}

if go_start >= 3
{
message_1 = "하드 코어\n\n[받는 피해량이 2.5배 및 초기 D-day가 1일로 된다]\n\n(다회차 플레이어에게 추천)"
message_2 = "매우 어려움\n\n[받는 피해량이 2배가 된다]\n\n(소울류 겜에 자신있는 사람에게 추천)"
message_3 = "어려움\n\n[받는 피해량이 1.5배가 된다]\n\n(매우 어려움은 싫지만, 보통도 싫은 사람에게 추천)"
message_4 = "보통\n\n[아무런 보정치도 없다]"
message_5 = "쉬움\n\n[첫 시작시 특수 탈리스만를 얻고 시작한다. 이외에 난이도를 낮추는 여러 부가적인 보정이 적용된다]"
message_6 = "매우 쉬움\n\n[첫 시작시 강력한 특수 탈리스만를 얻고 시작 및 피해량 0.5배. 이외에 난이도를 낮추는 여러 부가적인 보정이 적용된다]"
scale__ = 2.2
scale__sec = 1.7
text_scale = 0.75
}



var set_yy = 400+set_menu_choose*50*scale__
var my_yy = 400
var my_yy_for_draw = my_yy-set_menu_choose*50*scale__
draw_text_k_scale(xx+wid*0.5,yy+v_x*(my_yy_for_draw),message_1,99,-1,menu_alpha*(1-abs(my_yy - set_yy)/(128*scale__sec)),c_white,0,0,font_title,v_x/5*text_scale,v_x/5*text_scale,0)
draw_sprite_ext(Sprite162,2,xx+wid*0.5-v_x*80,yy+v_x*(my_yy_for_draw+10),v_x*0.5,v_x*0.5,-45,c_white,menu_alpha*0.8*(1-abs(my_yy - set_yy)/(32*scale__sec)))

var set_yy = 400+set_menu_choose*50*scale__
var my_yy = 400+50*1*scale__
var my_yy_for_draw = my_yy-set_menu_choose*50*scale__
draw_text_k_scale(xx+wid*0.5,yy+v_x*(my_yy_for_draw),message_2,99,-1,menu_alpha*(1-abs(my_yy - set_yy)/(128*scale__sec)),c_white,0,0,font_title,v_x/5*text_scale,v_x/5*text_scale,0)
draw_sprite_ext(Sprite162,2,xx+wid*0.5-v_x*60,yy+v_x*(my_yy_for_draw+10),v_x*0.5,v_x*0.5,-45,c_white,menu_alpha*0.8*(1-abs(my_yy - set_yy)/(32*scale__sec)))

var set_yy = 400+set_menu_choose*50*scale__
var my_yy = 400+50*2*scale__
var my_yy_for_draw = my_yy-set_menu_choose*50*scale__
draw_text_k_scale(xx+wid*0.5,yy+v_x*(my_yy_for_draw),message_3,99,-1,menu_alpha*(1-abs(my_yy - set_yy)/(128*scale__sec)),c_white,0,0,font_title,v_x/5*text_scale,v_x/5*text_scale,0)
draw_sprite_ext(Sprite162,2,xx+wid*0.5-v_x*80,yy+v_x*(my_yy_for_draw+10),v_x*0.5,v_x*0.5,-45,c_white,menu_alpha*0.8*(1-abs(my_yy - set_yy)/(32*scale__sec)))

var set_yy = 400+set_menu_choose*50*scale__
var my_yy = 400+50*3*scale__
var my_yy_for_draw = my_yy-set_menu_choose*50*scale__
draw_text_k_scale(xx+wid*0.5,yy+v_x*(my_yy_for_draw),message_4,99,-1,menu_alpha*(1-abs(my_yy - set_yy)/(128*scale__sec)),c_white,0,0,font_title,v_x/5*text_scale,v_x/5*text_scale,0)
draw_sprite_ext(Sprite162,2,xx+wid*0.5-v_x*60,yy+v_x*(my_yy_for_draw+10),v_x*0.5,v_x*0.5,-45,c_white,menu_alpha*0.8*(1-abs(my_yy - set_yy)/(32*scale__sec)))

var set_yy = 400+set_menu_choose*50*scale__
var my_yy = 400+50*4*scale__
var my_yy_for_draw = my_yy-set_menu_choose*50*scale__
draw_text_k_scale(xx+wid*0.5,yy+v_x*(my_yy_for_draw),message_5,99,-1,menu_alpha*(1-abs(my_yy - set_yy)/(128*scale__sec)),c_white,0,0,font_title,v_x/5*text_scale,v_x/5*text_scale,0)
draw_sprite_ext(Sprite162,2,xx+wid*0.5-v_x*60,yy+v_x*(my_yy_for_draw+10),v_x*0.5,v_x*0.5,-45,c_white,menu_alpha*0.8*(1-abs(my_yy - set_yy)/(32*scale__sec)))

var set_yy = 400+set_menu_choose*50*scale__
var my_yy = 400+50*5*scale__
var my_yy_for_draw = my_yy-set_menu_choose*50*scale__
draw_text_k_scale(xx+wid*0.5,yy+v_x*(my_yy_for_draw),message_6,99,-1,menu_alpha*(1-abs(my_yy - set_yy)/(128*scale__sec)),c_white,0,0,font_title,v_x/5*text_scale,v_x/5*text_scale,0)
draw_sprite_ext(Sprite162,2,xx+wid*0.5-v_x*50,yy+v_x*(my_yy_for_draw+10),v_x*0.5,v_x*0.5,-45,c_white,menu_alpha*0.8*(1-abs(my_yy - set_yy)/(32*scale__sec)))
}


if global.show_credits > 0
{
global.show_credits ++
var alpha = (global.show_credits-40)*0.8
	if alpha > 0.8
	{
	alpha = 0.8
	}
	
draw_text_k_scale(xx+wid*0.5,yy-v_x*(global.show_credits-940),"Credits"+string(global.credit_message)+"\n\n\n\n\n\n\n\n(아무키나 눌러 나가기)",200,-1,alpha,c_white,0,0,font_title,v_x/5,v_x/5,0)

	if (keyboard_check_released(vk_anykey) || mouse_check_button_released(mb_any)) && global.show_credits > 30
	{
	global.show_credits = 0
	}
}


if global.show_achievement > 0
{
achievement_delay ++

var main_text_alpha = 1-abs(global.achievement_yy)/96
draw_text_k_scale(xx+wid*0.5,yy+v_x*64,"달성한 도전과제",200,-1,main_text_alpha,c_white,0,0,font_title,v_x/5,v_x/5,0)


var cleared_achievement = 0
	for(var i = 0; i <= 20; i++)
	{
	draw_text_k_scale(xx+wid*0.3,yy+v_x*(180+i*60-global.achievement_yy),string(global.achievement_name[i])+"  ("+string(floor(global.achievement_percentage[i]))+"%)",200,-1,0.5+global.achievement_percentage[i]/500,c_white,0,-1,font_title,v_x/6,v_x/6,0)
	draw_rectangle(xx+wid*0.3,yy+v_x*(215+i*60-global.achievement_yy),xx+wid*0.3+global.achievement_percentage[i]*4.5*v_x,yy+v_x*(220+i*60-global.achievement_yy),false)
	draw_text_k_scale(xx+wid*0.3,yy+v_x*(200+i*60-global.achievement_yy),global.achievement_desc[i],200,-1,0.45+global.achievement_percentage[i]/650,c_white,0,-1,font_title,v_x/8,v_x/8,0)
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

draw_text_k_scale(xx+wid*0.7,yy+v_x*(100-yy_for_total_achievement*0.65),"총 달성한 도전과제",200,-1,0.8,c_white,0,0,font_title,v_x/7,v_x/7,0)
draw_text_k_scale(xx+wid*0.7,yy+v_x*(128-yy_for_total_achievement*0.65),string(cleared_achievement)+"/20",200,-1,0.8,c_white,0,0,font_title,v_x/8,v_x/8,0)

draw_text_k_scale(xx+wid-v_x*24,yy+hei-v_x*32,"(마우스 휠을 통해 둘러보기 / 아무키나 눌러 나가기)",200,-1,0.8,c_white,0,1,font_title,v_x/7,v_x/7,0)

	if (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_any)) && achievement_delay > 30 && !keyboard_check_pressed(vk_up) && !keyboard_check_pressed(vk_down)
	{
	global.show_achievement = 0
	}
}