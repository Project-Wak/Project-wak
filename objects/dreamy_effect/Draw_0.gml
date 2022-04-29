/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_angel)
{
depth = 9999900
}
else
{
depth = player.depth+9999
}

var cm_width = camera_get_view_width(view_camera[0])*2
if global.dreamy_alpha > 0
{
draw_set_alpha(global.dreamy_alpha)
draw_set_color($FF2E221E)
draw_rectangle(player.x-cm_width,player.y-cm_width,player.x+cm_width,player.y+cm_width,false)
}



