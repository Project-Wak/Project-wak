/// @description Insert description here
// You can write your code in this editor
can_draw = 1

if target != player.id && instance_exists(target)
{
var cal_yp = (player.y - target.y)*0.5
x += (player.x - target.x)*0.5
y += cal_yp
draw_y = y+cal_yp
t_y = y+cal_yp
}
//if image_blend = $FF82FF90
//{
//sfx_for_multiplayer(hp_up,0,0.07)
//}