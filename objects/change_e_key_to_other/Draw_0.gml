/// @description Insert description here
// You can write your code in this editor
if (global.key_setting_message = 0 || pressed = 1) && global.n_to_setting__ = 2
{
var _c_x = obj_camera.v_x/1280
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5-250*_c_x
var yy = camera_get_view_y(view_camera[0])+(160+48+48+48+48+80)*_c_x

var console_key = global.e_key
var img_ind__ = 0
if global.console_mode = 1
{
console_key = "좌상단\n\n\n버튼"
img_ind__ = 4
}

draw_text_kl_scale(xx,yy-10*_c_x,string(console_key),16,999,0.8,image_blend,1,0,font0,1/3*_c_x,1/3*_c_x,image_angle)

draw_sprite_ext(sprite_index,image_index+img_ind__,xx,yy,image_xscale,image_xscale,0,c_white,1)
draw_text_kl_scale(xx+32*_c_x,yy-10*_c_x,"레이지 모드",16,999,0.8,image_blend,0,-1,font0,1/3*_c_x,1/3*_c_x,image_angle)

draw_text_kl_scale(xx-10*_c_x,yy-60*_c_x,"전투 기술)",16,999,0.8,image_blend,0,-1,font0,1/3*_c_x,1/3*_c_x,image_angle)
}