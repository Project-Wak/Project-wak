var v_x = global.camera_vx
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-v_x*(320-16)
var yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-global.camera_vx*24
x = xx
y = yy

if(global.chat_activity)
{
draw_text_kl_scale(xx-v_x*(600-16),yy-20*v_x,string(keyboard_string)+"|",v_x*64,-1,1,c_white,0,-1,font0,v_x*0.4,v_x*0.4,0);
	if cannot_send > 0
	{
	draw_text_kl_scale(xx-v_x*(600-16),yy-20*v_x,string(keyboard_string)+"|",v_x*64,-1,cannot_send,c_red,0,-1,font0,v_x*0.4,v_x*0.4,0);
	}

	if time > 200
	{
	draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-v_x*16,yy-20*v_x,"(Enter 키를 눌러 닫기)",v_x*64,-1,alpha,c_white,0,1,font0,v_x*0.3,v_x*0.3,0);
	}
	else
	{
	draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-v_x*16,yy-20*v_x,"(마우스 휠을 통해 이전 내역 보기)",v_x*64,-1,alpha,c_white,0,1,font0,v_x*0.3,v_x*0.3,0);
	}
	
	
	//if global.guide_sec = 0
	//{
	//draw_text_kl_scale(camera_get_view_x(view_camera[0])+v_x*16,yy-20*v_x,"(V키로 보이스 명령어 보기)",v_x*64,-1,alpha,c_white,0,-1,font0,v_x*0.3,v_x*0.3,0);
	//}
	//else
	//{
	//draw_text_kl_scale(camera_get_view_x(view_camera[0])+v_x*160,yy-200*v_x,"보이스 명령어",v_x*64,-1,1,c_white,0,0,font0,v_x*0.35,v_x*0.35,0);
	//draw_text_kl_scale(camera_get_view_x(view_camera[0])+v_x*160,yy-150*v_x,"!샷업 / !아이시발 / !웨잇 / !앙 / !끼애액 / !테헹\n\n!키타소 / !규성아 / !검성우왁굳 / !죽어버리렴\n\n!나가죽으렴 / !아이폰 / !정치 / !혐팬치 / !기타 / !드럼",v_x*64,-1,1,c_white,0,0,font0,v_x*0.3,v_x*0.3,0);
	//}
	

	if (global.blocked_chat > 0 && global.blocked_pvp = 0)
	{
	draw_sprite_ext(Sprite162,1,xx+2*v_x*(320-16)-32*v_x,yy,image_xscale*0.75,image_yscale*0.75,0,c_white,image_alpha)
	}
	
	if (global.blocked_chat = 0 && global.blocked_pvp > 0)
	{
	draw_sprite_ext(Sprite162,0,xx+2*v_x*(320-16)-32*v_x,yy,image_xscale*0.75,image_yscale*0.75,0,c_white,image_alpha)
	}
	
	if (global.blocked_chat > 0 && global.blocked_pvp > 0)
	{
	draw_sprite_ext(Sprite162,0,xx+2*v_x*(320-16)-32*v_x,yy,image_xscale*0.75,image_yscale*0.75,0,c_white,image_alpha)
	draw_sprite_ext(Sprite162,1,xx+2*v_x*(320-16)-96*v_x,yy,image_xscale*0.75,image_yscale*0.75,0,c_white,image_alpha)
	}
}