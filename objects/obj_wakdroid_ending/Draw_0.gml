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
	
draw_text_k_scale(xx+wid*0.5,yy-v_x*(global.show_credits-940),"Credits\n\n\n\nDirector\n아버\n\n\nProgramer\n아버\n\n\nStory\n아버\n\n\nEnemy design\n아버\n\n\nBoss design\n아버\n\n\nStage design\n아버\n\n\nEffect design\n아버\n\n\n\n\n\nBoss theme\nSymphony of Specters - Intense Cinematic Trailer\n\n\nEnding theme\nSharo - Atorie to denno sekai\nBrightwaltz - Touch a flower softly\n\n\nGameover theme\nBrightwaltz - Trifolium repens f. roseum\n\n\nTrailer theme\nak+q - Ignotus\nZekk - Libertas\n\n\n\n\n\n\n\n[개발에 크게 영향을 미친 게임들]\n\n\n레전드 오브 곡괭이 - 공격 모션이나 스킬 제작, 스토리 및 이펙트 디자인\n\n록멘 시리즈 - 맵 디자인\n\n엘든링 - 보스 패턴 및 맵 디자인\n\n테라리아 - 객관안 및 쌉벌래두\n\n\n\n\n[이외에 참고한 디자인]\n\n\n심해두 팬아트 - 보스 및 잡몹\n\n메시 팬아트 - 보스\n\n왁두 팬아트 - 주인공 디자인 및 보스\n\n말레니아(엘든링)와 캬루(프리코네) - 엔젤로이드 보스\n\n니어 오토마타 - 드론형 터렛\n\n이세돌 팬아트 - 이세돌 NPC 및 악세사리 디자인\n\nRe:wind 뮤비 - Re:wind 시계 악세사리 디자인\n\nSword art online - 여러 이펙트 디자인 및 도탄 시스템\n\nTakt op destiny - 스킬 이펙트 디자인\n\n\n\n\n\nBeta Tester\n(피드백 주신분들)\n\n\nStellarSea\n\n서장님\n\n오코츠유타\n\n옥수수칲\n\n탄창\n\n황금뿌리\n\n러머\n\nSsab\n\n공벌\n\n화염뽱어\n\n젓가락아저씨\n\n진성e\n\n벼슬\n\n페르마벤\n\n댐쿵이\n\n쓰레기맛캔디\n\n1잡탕1\n\nzun\n\nDillionaire\n\nalpamin\n\nBackSang\n\nNANFREE\n\n쥬기\n\n참이프\n\n광부\n\nContra\n\nQuiettBee\n\n사미니\n\n(이외의 많은 여러 사람들)\n\n\n\n\nSpecial Thanks\n(개발에 큰 도움 주신분들과 추가 아이디어 제공자)\n\n\n\nBackSang\n\n쓰레기맛캔디\n\nzun\n\nDillionaire\n\nNANFREE\n\nalpamin\n\n1잡탕1\n\n쥬기\n\n댐쿵이\n\n\n\n\n\n\n\nThanks for playing\n\n\n\n\n\n\n\nMade with Gamemaker studio 2\n\n\n\n\n\n\n\n(아무키나 눌러 나가기)",200,-1,alpha,c_white,0,0,font_title,v_x/5,v_x/5,0)

	if (keyboard_check_released(vk_anykey) || mouse_check_button_released(mb_any)) && global.show_credits > 30
	{
	global.show_credits = 0
	}
}

