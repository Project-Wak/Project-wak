/// @description Insert description here
// You can write your code in this editor
if global.select_dev_setting > 0
{
var _ins = instance_create_depth(player.x-player.image_xscale*32,player.y,player.depth,effect_saber)
_ins.image_xscale = player.image_xscale
}