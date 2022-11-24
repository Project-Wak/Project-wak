/// @description Insert description here
// You can write your code in this editor
if global.key_setting_message = 0 && global.n_to_setting__ != 2
{
var _c_x = obj_camera.v_x/1280
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-100*_c_x
var yy = camera_get_view_y(view_camera[0])+570*_c_x

image_index = 4

draw_sprite_ext(sprite_index,image_index,xx,yy,image_xscale,image_xscale,0,c_white,1)
draw_text_kl_scale(xx-32*_c_x,yy-10*_c_x,"자살 (단축키 "+string(global.suicide_key_for_draw)+")",16,999,0.8,image_blend,0,1,font0,1/3*_c_x,1/3*_c_x,image_angle)
draw_text_kl_scale(xx-160*_c_x,yy+40*_c_x,"자살하여 시간을 강제로 과거로 되돌려\n스테이지 진입전의 과거로 되돌아 갑니다",64*_c_x,999,0.6,image_blend,0,-1,font0,1/3.5*_c_x,1/3.5*_c_x,image_angle)
}