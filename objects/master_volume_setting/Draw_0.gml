/// @description Insert description here
// You can write your code in this editor
var v_x_ = obj_camera.v_x/1280
alpha_bg = 1



var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5-120*v_x_
var yy = camera_get_view_y(view_camera[0])+(160-10)*v_x_
draw_set_alpha(alpha_bg)
draw_set_color($FF191414)
draw_rectangle(camera_get_view_x(view_camera[0])-128,camera_get_view_y(view_camera[0])-128,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])+128,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])+128,0)

if global.key_setting_message = 0
{
var xx2 = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5-410*v_x_
draw_set_alpha(alpha_bg)
draw_set_color($FF0C0A0A)
draw_rectangle(camera_get_view_x(view_camera[0])-128,camera_get_view_y(view_camera[0])-128,xx2,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])+128,0)
}

if global.n_to_setting__ = 1
{
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5-80*v_x_
var yy = camera_get_view_y(view_camera[0])+160*v_x_
draw_sprite_ext(sprite_index,1,xx,yy,v_x_,v_x_,0,c_white,1)
draw_sprite_ext(sprite_index,image_index,xx+global.master_volume*200*v_x_,yy,v_x_,v_x_,0,c_white,1)

draw_text_kl_scale(xx+220*v_x_,yy-10*v_x_,string(floor(global.master_volume*100))+"%",16,999,0.8,image_blend,0,-1,font0,1/3*v_x_,1/3*v_x_,image_angle)
draw_text_kl_scale(xx-128*v_x_,yy-10*v_x_,"마스터 볼륨 ",16,999,0.8,image_blend,0,-1,font0,1/3*v_x_,1/3*v_x_,image_angle)
}


	if global.key_setting_message = 1
	{
	var my_y = -4
		with(setting_parents)
		{
			if variable_instance_exists(id,"pressed") && pressed > 0
			{
			my_y = y
			}
		}
		
		if my_y != -4
		{
			if my_y < camera_get_view_y(view_camera[0])+200*v_x_
			{
			draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5,camera_get_view_y(view_camera[0])+460*v_x_,"조작키 변경을 위해 원하는 키를 입력해주세요",v_x_*64,-1,0.7,c_white,0,0,font0,v_x_*0.3,v_x_*0.3,0);
			draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5,camera_get_view_y(view_camera[0])+515*v_x_,"(ESC키를 누르면 기존값으로 설정됩니다)",v_x_*64,-1,0.5,c_white,0,0,font0,v_x_*0.25,v_x_*0.25,0);
			}
			else
			{
			draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5,camera_get_view_y(view_camera[0])+160*v_x_,"조작키 변경을 위해 원하는 키를 입력해주세요",v_x_*64,-1,0.7,c_white,0,0,font0,v_x_*0.3,v_x_*0.3,0);
			draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5,camera_get_view_y(view_camera[0])+215*v_x_,"(ESC키를 누르면 기존값으로 설정됩니다)",v_x_*64,-1,0.5,c_white,0,0,font0,v_x_*0.25,v_x_*0.25,0);
			}
		}
	}

draw_text_kl_scale(camera_get_view_x(view_camera[0])+32*v_x_,camera_get_view_y(view_camera[0])+32*v_x_,"- 환경 설정",16,999,0.8,image_blend,0,-1,font0,1/2.5*v_x_,1/2.5*v_x_,image_angle)

draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-42*v_x_,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-32*v_x_,"(ESC키 혹은 Tab키로 창 닫기)",16,999,0.7,$FFCC8E61,0,1,font0,1/3.5*v_x_,1/3.5*v_x_,image_angle)


if global.key_setting_message = 0
{
///////////////////////////////////////////////////////////////////////////////////
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5-420*v_x_
var yy = camera_get_view_y(view_camera[0])+(160-10)*v_x_
var yy_ = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-(160-10)*v_x_
draw_set_alpha(0.7)
draw_set_color(c_white)
draw_line_width(xx,yy,xx,yy_,2*v_x_)

///////////////////////////////////////////////////////////////////////////////////
}