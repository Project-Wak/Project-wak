/// @description Insert description here
// You can write your code in this editor


if global.story_next >= 300
{
global.story_next ++

var cal_a = (global.story_next-300)*0.01

if global.story_next > 500
{
cal_a = (600-global.story_next)*0.01
}
else
{
	if cal_a > 1
	{
	cal_a = 1
	}
}



var v_x_ = obj_camera.v_x/1280
var xx_g = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5
var yy_g = camera_get_view_y(view_camera[0])+v_x_*250
draw_text_kl_scale(xx_g,yy_g-v_x_*cal_a*32,"Project Wak",v_x_*64,-1,cal_a,c_white,0,0,font_title,v_x_*0.4,v_x_*0.4,0);
draw_text_kl_scale(xx_g,yy_g+v_x_*100-v_x_*(cal_a-0.5)*64,"프로젝트 왁",v_x_*190,-1,(cal_a-0.5)*2,c_white,0,0,font_title,v_x_*0.25,v_x_*0.25,0)
}