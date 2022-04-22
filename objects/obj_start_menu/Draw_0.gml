/// @description Insert description here
// You can write your code in this editor
var v_x = global.camera_vx
var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])
var wid = camera_get_view_width(view_camera[0])
var hei = camera_get_view_height(view_camera[0])

if set_brightness = 0
{
var alpha_____ = 1 - global.b_alpha
draw_text_k_scale(xx+wid*0.5,yy+v_x*120,"게임을 플레이 하기 전, 게임 내 밝기 정도를 설정해주세요",99,-1,alpha_____,c_white,0,0,font_title,v_x/5,v_x/5,0)
draw_text_k_scale(xx+wid*0.5,yy+v_x*160,"(화살표의 형태만은 뚜렷하게 보임과 동시에 색은 조금 알아 볼수 없을 정도가 적당합니다)",99,-1,alpha_____*0.7,c_white,0,0,font_title,v_x/6,v_x/6,0)
draw_text_k_scale(xx+wid*0.5,yy+v_x*190,"(잘 모르겠으면 그냥 보통(0.5)으로 설정해주세요)",99,-1,alpha_____*0.7,c_white,0,0,font_title,v_x/6.5,v_x/6.5,0)
draw_text_k_scale(xx+wid*0.5,yy+v_x*600,"(설정이 완료되었으면 'D'키를 눌러 넘어갑니다)",99,-1,alpha_____*brightness_set_alpha,c_white,0,0,font_title,v_x/6.5,v_x/6.5,0)
}

if global.never_move_in_setting = 0 && global.show_credits = 0 && set_brightness = 1
{
//draw_text(300,300,dis)
dis = point_distance(xx+wid*0.5,400,mouse_x,mouse_y)

draw_text_k_scale(xx+wid*0.5,yy+v_x*120,"Project wak",99,-1,start_alpha,c_white,0,0,font_title,v_x*0.7,v_x*0.7,0)
draw_text_k_scale(xx+wid*0.6,yy+v_x*185,"프로젝트 왁",99,-1,start_alpha,c_white,1,0,font_title,v_x/5,v_x/5,0)

draw_text_k_scale(xx+v_x*16,yy+hei-v_x*32,"-"+string(global.game_ver)+" ver",99,-1,menu_alpha*0.5,c_white,-1,-1,font_title,v_x/7,v_x/7,0)
var scale__ = 1
var scale__sec = 1
var message_1 = "Start Game"
var message_2 = "Setting"
var message_3 = "Credits"
var message_4 = "Support"
var message_5 = "Quit"
var message_6 = ""
var text_scale = 1
if global.korean_text = 1
{
message_1 = "게임 시작"
message_2 = "환경 설정"
message_3 = "크레딧"
message_4 = "서포트"
message_5 = "종료"
}

if go_start >= 3
{
message_1 = "하드 코어\n\n[받는 피해량이 2.5배 및 초기 D-day가 1일로 된다]\n\n(다회차 플레이어에게 추천)"
message_2 = "매우 어려움\n\n[받는 피해량이 2배가 된다]\n\n(소울류 겜에 자신있는 사람에게 추천)"
message_3 = "어려움\n\n[받는 피해량이 1.5배가 된다]\n\n(매우 어려움은 싫지만, 보통도 싫은 사람에게 추천)"
message_4 = "보통\n\n[아무런 보정치도 없다]"
message_5 = "쉬움\n\n[첫 시작시 특수 악세사리를 얻고 시작한다. 이외에 난이도를 낮추는 여러 부가적인 보정이 적용된다]"
message_6 = "매우 쉬움\n\n[첫 시작시 강력한 특수 악세사리를 얻고 시작 및 피해량 0.5배. 이외에 난이도를 낮추는 여러 부가적인 보정이 적용된다]"
scale__ = 2.2
scale__sec = 1.7
text_scale = 0.75
}



var set_yy = 400+set_menu_choose*50*scale__
var my_yy = 400
var my_yy_for_draw = my_yy-set_menu_choose*50*scale__
draw_text_k_scale(xx+wid*0.5,yy+v_x*(my_yy_for_draw),message_1,99,-1,menu_alpha*(1-abs(my_yy - set_yy)/(75*scale__sec)),c_white,0,0,font_title,v_x/5*text_scale,v_x/5*text_scale,0)
draw_sprite_ext(Sprite162,2,xx+wid*0.5-v_x*80,yy+v_x*(my_yy_for_draw+10),v_x*0.5,v_x*0.5,-45,c_white,menu_alpha*0.8*(1-abs(my_yy - set_yy)/(32*scale__sec)))

var set_yy = 400+set_menu_choose*50*scale__
var my_yy = 400+50*1*scale__
var my_yy_for_draw = my_yy-set_menu_choose*50*scale__
draw_text_k_scale(xx+wid*0.5,yy+v_x*(my_yy_for_draw),message_2,99,-1,menu_alpha*(1-abs(my_yy - set_yy)/(75*scale__sec)),c_white,0,0,font_title,v_x/5*text_scale,v_x/5*text_scale,0)
draw_sprite_ext(Sprite162,2,xx+wid*0.5-v_x*60,yy+v_x*(my_yy_for_draw+10),v_x*0.5,v_x*0.5,-45,c_white,menu_alpha*0.8*(1-abs(my_yy - set_yy)/(32*scale__sec)))

var set_yy = 400+set_menu_choose*50*scale__
var my_yy = 400+50*2*scale__
var my_yy_for_draw = my_yy-set_menu_choose*50*scale__
draw_text_k_scale(xx+wid*0.5,yy+v_x*(my_yy_for_draw),message_3,99,-1,menu_alpha*(1-abs(my_yy - set_yy)/(75*scale__sec)),c_white,0,0,font_title,v_x/5*text_scale,v_x/5*text_scale,0)
draw_sprite_ext(Sprite162,2,xx+wid*0.5-v_x*60,yy+v_x*(my_yy_for_draw+10),v_x*0.5,v_x*0.5,-45,c_white,menu_alpha*0.8*(1-abs(my_yy - set_yy)/(32*scale__sec)))

var set_yy = 400+set_menu_choose*50*scale__
var my_yy = 400+50*3*scale__
var my_yy_for_draw = my_yy-set_menu_choose*50*scale__
draw_text_k_scale(xx+wid*0.5,yy+v_x*(my_yy_for_draw),message_4,99,-1,menu_alpha*(1-abs(my_yy - set_yy)/(75*scale__sec)),c_white,0,0,font_title,v_x/5*text_scale,v_x/5*text_scale,0)
draw_sprite_ext(Sprite162,2,xx+wid*0.5-v_x*60,yy+v_x*(my_yy_for_draw+10),v_x*0.5,v_x*0.5,-45,c_white,menu_alpha*0.8*(1-abs(my_yy - set_yy)/(32*scale__sec)))

var set_yy = 400+set_menu_choose*50*scale__
var my_yy = 400+50*4*scale__
var my_yy_for_draw = my_yy-set_menu_choose*50*scale__
draw_text_k_scale(xx+wid*0.5,yy+v_x*(my_yy_for_draw),message_5,99,-1,menu_alpha*(1-abs(my_yy - set_yy)/(75*scale__sec)),c_white,0,0,font_title,v_x/5*text_scale,v_x/5*text_scale,0)
draw_sprite_ext(Sprite162,2,xx+wid*0.5-v_x*45,yy+v_x*(my_yy_for_draw+10),v_x*0.5,v_x*0.5,-45,c_white,menu_alpha*0.8*(1-abs(my_yy - set_yy)/(32*scale__sec)))

var set_yy = 400+set_menu_choose*50*scale__
var my_yy = 400+50*5*scale__
var my_yy_for_draw = my_yy-set_menu_choose*50*scale__
draw_text_k_scale(xx+wid*0.5,yy+v_x*(my_yy_for_draw),message_6,99,-1,menu_alpha*(1-abs(my_yy - set_yy)/(75*scale__sec)),c_white,0,0,font_title,v_x/5*text_scale,v_x/5*text_scale,0)
draw_sprite_ext(Sprite162,2,xx+wid*0.5-v_x*60,yy+v_x*(my_yy_for_draw+10),v_x*0.5,v_x*0.5,-45,c_white,menu_alpha*0.8*(1-abs(my_yy - set_yy)/(32*scale__sec)))
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

