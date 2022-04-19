/// @description Insert description here
// You can write your code in this editor
if global.n_to_setting__ = 1
{
var _c_x = obj_camera.v_x/1280
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5-80*_c_x
var yy = camera_get_view_y(view_camera[0])+(160-20+64+64)*_c_x

draw_sprite_ext(sprite_index,1,xx,yy,_c_x,_c_x,0,c_white,1)
draw_sprite_ext(sprite_index,image_index,xx+global.sfx_volume*200*_c_x,yy,_c_x,_c_x,0,c_white,1)

draw_text_kl_scale(xx+220*_c_x,yy-10*_c_x,string(floor(global.sfx_volume*100))+"%",16,999,0.8,image_blend,0,-1,font0,1/3*_c_x,1/3*_c_x,image_angle)
draw_text_kl_scale(xx-128*_c_x,yy-10*_c_x,"효과음 볼륨 ",16,999,0.8,image_blend,0,-1,font0,1/3*_c_x,1/3*_c_x,image_angle)
}