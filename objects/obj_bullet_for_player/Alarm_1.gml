/// @description Insert description here
// You can write your code in this editor
if direction = 0
{
var _ef = instance_create_depth(x,y,depth-2,fire_effect)
_ef.image_xscale = -sign(bullet_speed)
}
else
{
var _ef = instance_create_depth(x,y,depth-2,fire_effect)
_ef.image_angle = direction
}