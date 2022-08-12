/// @description Insert description here
// You can write your code in this editor
if global.full_screen <= 1
{
var v_x_ = obj_camera.v_x/1280
window_set_position(display_mouse_get_x()-960*v_x_,display_mouse_get_y()-540*v_x_)
}