/// @description Insert description here
// You can write your code in this editor
depth = -999999
var _c_x = obj_camera.v_x/1280
var cal__nset = n_to_set
if cal__nset >= 5
{
cal__nset = cal__nset-5
}

if cal__nset >= 3
{
cal__nset = cal__nset-3
}
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5-460*_c_x
var yy = camera_get_view_y(view_camera[0])+(160+cal__nset*60)*_c_x

image_xscale = _c_x*0.5
image_yscale = _c_x*0.5
x = xx
y = yy

if check_mouse_place()
{
event_user(0)
}