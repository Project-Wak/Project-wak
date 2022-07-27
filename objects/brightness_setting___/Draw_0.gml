/// @description Insert description here
// You can write your code in this editor
if global.n_to_setting__ = 0
{
var _c_x = obj_camera.v_x/1280
if !instance_exists(master_volume_setting)
{
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5-40*_c_x
var yy = camera_get_view_y(view_camera[0])+(500-20)*_c_x
}
else
{
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5-80*_c_x
var yy = camera_get_view_y(view_camera[0])+(230-20)*_c_x
}

draw_sprite_ext(sprite_index,1,xx,yy,_c_x,_c_x,0,c_white,1)
draw_sprite_ext(sprite_index,image_index,xx+global.brightness_setting*200*_c_x,yy,_c_x,_c_x,0,c_white,1)



if global.brightness_setting > 0.5
{
draw_text_kl_scale(xx+220*_c_x,yy-10*_c_x,string(global.brightness_setting*100)+"% (과한 밝기는 게임 분위기를 해칠수 있습니다)",64*_c_x,9999,0.8,image_blend,0,-1,font0,1/3*_c_x,1/3*_c_x,image_angle)
}
else
{
draw_text_kl_scale(xx+220*_c_x,yy-10*_c_x,string(global.brightness_setting*100)+"%",64*_c_x,9999,0.8,image_blend,0,-1,font0,1/3*_c_x,1/3*_c_x,image_angle)
}

draw_text_kl_scale(xx-128*_c_x,yy-10*_c_x,"화면 밝기",16,9999,0.8,image_blend,0,-1,font0,1/3*_c_x,1/3*_c_x,image_angle)
}