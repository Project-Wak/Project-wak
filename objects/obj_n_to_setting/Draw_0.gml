if global.key_setting_message = 0
{
var cal__nset = n_to_set
if cal__nset >= 5
{
cal__nset = cal__nset-5
}

if cal__nset >= 3
{
cal__nset = cal__nset-3
}
var _c_x = obj_camera.v_x/1280
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5-460*_c_x
var yy = camera_get_view_y(view_camera[0])+(160+cal__nset*60)*_c_x

var alpha__ = 0.9
if cal__nset = global.n_to_setting__
{
image_index = 7
}
else
{
image_index = 6
alpha__ = 0.2
}

var text__ = "그래픽 설정"
if n_to_set = 1
{
text__ = "사운드 설정"
}
if n_to_set = 2
{
text__ = "조작키 설정"
}
if n_to_set = 3
{
text__ = "스테이터스"
}
if n_to_set = 4
{
text__ = "기타"
}
if n_to_set = 5
{
text__ = "강화"
}


draw_sprite_ext(sprite_index,image_index,xx,yy,image_xscale,image_xscale,0,c_white,1)
draw_text_kl_scale(xx-32*_c_x,yy-10*_c_x,text__,16,999,alpha__,image_blend,0,1,font0,1/3*_c_x,1/3*_c_x,image_angle)
}