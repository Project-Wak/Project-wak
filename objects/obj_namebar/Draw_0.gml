var cm_vx = global.camera_vx
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5
var yy = camera_get_view_y(view_camera[0])+cm_vx*350

//draw_text_kl_scale(x,y-v_x*64,"스페이스바를 눌러 서버 참가",v_x*64,-1,1,c_white,0,-1,font0,v_x*0.8,v_x*0.8,0);
if image_alpha > 0
{
draw_set_color(c_white)
draw_set_alpha(image_alpha)
draw_rectangle(xx-cm_vx*120,yy-cm_vx*12,xx+cm_vx*120,yy+cm_vx*20,true)

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
}