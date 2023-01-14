/// @description Insert description here
// You can write your code in this editor
var v_x = global.camera_vx
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5
var yy = camera_get_view_y(view_camera[0])+v_x*150
if global.choice > 0
{
	for(var i = 0; i < 3; i++)
	{
		if global.choice_name[i] != -4
		{
		draw_set_color(c_black)
		draw_set_alpha(global.choice*0.7)
		draw_rectangle(xx-v_x*180,yy+v_x*(60+i*100),xx+v_x*180,yy+v_x*(100+i*100),false)
		draw_text_kl_scale(xx,yy+v_x*(70+i*100),global.choice_name[i],64*v_x,-1,global.choice,c_white,0,0,font0,1/3.3*v_x,1/3.3*v_x,0)
			if global.choice_now = i
			{
			draw_set_color(c_white)
			draw_rectangle(xx-v_x*180,yy+v_x*(60+i*100),xx+v_x*180,yy+v_x*(100+i*100),true)
			}
		}
	}
	
	if instance_exists(obj_wakdroid_ending)
	{
		if global.show_credits > 0
		{
		draw_text_kl_scale(xx,yy-v_x*54,"다회차 플레이를 하시겠어요? (총 플레이한 회차 : "+string(global.replayed)+"회)",192*v_x,-1,global.choice,c_white,0,0,font0,1/2.5*v_x,1/2.5*v_x,0)
		draw_text_kl_scale(xx,yy-v_x*16,"(플레이어가 '마지막으로 장비한 무기'와, '최대 체력' 및 '도전과제'를 제외하고 모든 데이터를 초기화합니다)",160*v_x,-1,global.choice*0.8,c_white,0,0,font0,1/3.5*v_x,1/3.5*v_x,0)
		draw_text_kl_scale(xx,yy+v_x*16,"[다회차 플레이시, 새로운 보스와 새로운 패턴등, 더욱 강력해진 적을 만나보실 수 있습니다]",160*v_x,-1,global.choice*0.8,c_white,0,0,font0,1/4*v_x,1/4*v_x,0)
		}
		else
		{
			if room = room_sector_B07
			{
			draw_text_kl_scale(xx,yy-v_x*54,"선택지에 따라 엔딩이 달라집니다",192*v_x,-1,global.choice,c_white,0,0,font0,1/2.5*v_x,1/2.5*v_x,0)
			draw_text_kl_scale(xx,yy-v_x*16,"(진엔딩을 보기 위해선 신중하게 선택해주세요)",160*v_x,-1,global.choice*0.8,c_white,0,0,font0,1/3.5*v_x,1/3.5*v_x,0)
			}
		}
	}
}
