/// @description Insert description here
// You can write your code in this editor
if global.key_setting_message = 0 && global.n_to_setting__ = 0
{
var _c_x = obj_camera.v_x/1280
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5-250*_c_x
var yy = camera_get_view_y(view_camera[0])+(160+150)*_c_x


var n_window_size = "1280x720"
image_index = 0
if global.full_screen = 1
{
n_window_size = "1680x945"
image_index = 5
}
if global.full_screen = 3
{
n_window_size = "1920x1080 [full screen]"
image_index = 2
	if global.korean_text = 1
	{
	n_window_size = "1920x1080 [전체화면]"
	}
}
if global.full_screen = 2
{
n_window_size = "1920x1080 [borderless windowed]"
image_index = 1
	if global.korean_text = 1
	{
	n_window_size = "1920x1080 [창없는 전체화면 창모드]"
	}
}
draw_sprite_ext(sprite_index,image_index,xx,yy,image_xscale,image_xscale,0,c_white,1)
draw_text_kl_scale(xx+32*_c_x,yy-10*_c_x,"해상도 조정",16,999,0.8,image_blend,0,-1,font0,1/3*_c_x,1/3*_c_x,image_angle)
draw_text_kl_scale(xx+160*_c_x,yy-10*_c_x,"현재 해상도 : "+string(n_window_size),64*_c_x,999,0.7,image_blend,0,-1,font0,1/3.3*_c_x,1/3.3*_c_x,image_angle)

	if global.full_screen <= 1
	{
	var xx2 = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5
	var yy2 = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-60*_c_x
	draw_text_kl_scale(xx2,yy2,"게임 창 위치를 이동하려면 Ctrl키를 꾹 누른상태로 마우스 커서를 움직여주세요",64*_c_x,999,0.7,image_blend,0,0,font0,1/3.5*_c_x,1/3.5*_c_x,image_angle)
	}
}