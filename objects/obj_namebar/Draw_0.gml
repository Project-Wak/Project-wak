var cm_vx = global.camera_vx
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5
var yy = camera_get_view_y(view_camera[0])+cm_vx*350

//draw_text_kl_scale(x,y-v_x*64,"스페이스바를 눌러 서버 참가",v_x*64,-1,1,c_white,0,-1,font0,v_x*0.8,v_x*0.8,0);
if image_alpha > 0 && global.tutorial != 0
{
	if start = 0
	{
	draw_set_color(c_white)
	draw_set_alpha(image_alpha)
	draw_rectangle(xx-cm_vx*120,yy-cm_vx*12,xx+cm_vx*120,yy+cm_vx*20,true)


	draw_text_kl_scale(xx,yy-cm_vx*80,"당신의 이름은?",cm_vx*64,-1,image_alpha,c_white,0,0,font0,cm_vx*0.4,cm_vx*0.4,0);

	if activate = 0
	{
		if already_set_name = 0
		{
		draw_text_kl_scale(xx,yy,string(global.nickname),cm_vx*64,-1,image_alpha,c_white,0,0,font0,cm_vx*0.35,cm_vx*0.35,0);
		}
		else
		{
		draw_text_kl_scale(xx,yy,string(global.nickname),cm_vx*64,-1,image_alpha,c_gray,0,0,font0,cm_vx*0.35,cm_vx*0.35,0);
		}
	
		if cannot_select_name > 0
		{
		draw_text_kl_scale(xx,yy,string(global.nickname),cm_vx*64,-1,image_alpha*cannot_select_name,$FF5B14EE,0,0,font0,cm_vx*0.35,cm_vx*0.35,0);
		}
	}
	else
	{
	draw_text_kl_scale(xx,yy,string(global.nickname)+"|",cm_vx*64,-1,image_alpha,c_white,0,0,font0,cm_vx*0.35,cm_vx*0.35,0);
		if cannot_select_name > 0
		{
		draw_text_kl_scale(xx,yy,string(global.nickname)+"|",cm_vx*64,-1,image_alpha*cannot_select_name,$FF5B14EE,0,0,font0,cm_vx*0.35,cm_vx*0.35,0);
		}
	}



	draw_text_kl_scale(xx,yy+64*cm_vx,"(글자 수 2자 이상 13자 미만 제한 및, 띄어쓰기 안됨 및 일부 한글 깨짐 주의)",16,-1,(image_alpha)*(1 - alpha1),$FF5B14EE,0,0,font0,cm_vx*0.3,cm_vx*0.3,0)
	draw_text_kl_scale(xx,yy+64*cm_vx,"(이름을 정했다면 엔터키를 눌러 시작합니다)",16,-1,(image_alpha)*(alpha1),$FFF7D06D,0,0,font0,cm_vx*0.3,cm_vx*0.3,0)
	}
	
	if start = 1
	{
	draw_text_kl_scale(xx,yy-cm_vx*80,"접속할 서버를 선택해주세요",cm_vx*64,-1,image_alpha,c_white,0,0,font0,cm_vx*0.4,cm_vx*0.4,0);
	draw_text_kl_scale(xx-dis_a_draw*128*cm_vx,yy,"공식 서버",cm_vx*64,-1,1-abs((dis_a_draw)/2)*image_alpha,c_gray,0,0,font0,cm_vx*0.4,cm_vx*0.4,0);
	draw_text_kl_scale(xx-(dis_a_draw-1)*128*cm_vx,yy,"커뮤니티 서버",cm_vx*64,-1,1-abs((1-dis_a_draw)/2)*image_alpha,c_gray,0,0,font0,cm_vx*0.4,cm_vx*0.4,0);
	draw_text_kl_scale(xx-(dis_a_draw-2)*128*cm_vx,yy,"서버 생성",cm_vx*64,-1,1-abs((2-dis_a_draw)/2)*image_alpha,c_gray,0,0,font0,cm_vx*0.4,cm_vx*0.4,0);
	draw_text_kl_scale(xx,yy+64*cm_vx,"(좌우 방향키를 통해 선택할 수 있습니다)",16,-1,image_alpha*alpha1,$FF5B14EE,0,0,font0,cm_vx*0.3,cm_vx*0.3,0)
	}
	
	if start > 1 && (dis_a = 0 || dis_a = 2)
	{
	draw_text_kl_scale(xx,yy-cm_vx*80,"접속할 서버를 선택해주세요",cm_vx*64,-1,image_alpha,c_white,0,0,font0,cm_vx*0.4,cm_vx*0.4,0);
	draw_text_kl_scale(xx-dis_a_draw*128*cm_vx,yy,"공식 서버",cm_vx*64,-1,1-abs((dis_a_draw)/2)*image_alpha,c_gray,0,0,font0,cm_vx*0.4,cm_vx*0.4,0);
	draw_text_kl_scale(xx-(dis_a_draw-1)*128*cm_vx,yy,"커뮤니티 서버",cm_vx*64,-1,1-abs((1-dis_a_draw)/2)*image_alpha,c_gray,0,0,font0,cm_vx*0.4,cm_vx*0.4,0);
	draw_text_kl_scale(xx-(dis_a_draw-2)*128*cm_vx,yy,"서버 생성",cm_vx*64,-1,1-abs((2-dis_a_draw)/2)*image_alpha,c_gray,0,0,font0,cm_vx*0.4,cm_vx*0.4,0);
	draw_text_kl_scale(xx,yy+64*cm_vx,"(좌우 방향키를 통해 선택할 수 있습니다)",16,-1,image_alpha*alpha1,$FF5B14EE,0,0,font0,cm_vx*0.3,cm_vx*0.3,0)
	}
}