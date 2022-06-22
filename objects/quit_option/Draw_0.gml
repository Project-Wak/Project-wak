/// @description Insert description here
// You can write your code in this editor
if global.key_setting_message = 0
{
var _c_x = obj_camera.v_x/1280
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-70*_c_x
var yy = camera_get_view_y(view_camera[0])+50*_c_x

image_index = 3

draw_sprite_ext(sprite_index,image_index,xx,yy,image_xscale,image_xscale,0,c_white,1)
draw_text_kl_scale(xx-32*_c_x,yy-10*_c_x,"게임 종료",16,999,0.8,image_blend,0,1,font0,1/3*_c_x,1/3*_c_x,image_angle)
}