/// @description Insert description here
// You can write your code in this editor
var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])
var xxx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])

if alpha > 0
{
draw_set_alpha(alpha*0.2)
draw_set_color($FF191919)
draw_line_width(xx-32,yy,xxx,yy,3000)
draw_set_color(c_white)
draw_set_alpha(1)
}

if alpha2 > 0
{
draw_set_alpha(alpha2*0.2)
draw_set_color($FF191919)
draw_line_width(xx-32,yy,xxx,yy,3000)
draw_set_color(c_white)
draw_set_alpha(1)
}