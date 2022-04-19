/// @description Insert description here
// You can write your code in this editor
if abs(global.platform_speed) > 0
{
x -= global.platform_speed
}

if !instance_exists(_light_)
{
_light_ = instance_create_depth(x,y,depth,obj_light)
_light_.p_id = id
_light_.alpha = 0.2
_light_.sprite_index = sprite64
_light_.image_blend = $FFFFEDB2
_light_.light_type = 0
_light_.image_xscale = 10
_light_.image_yscale = 10
}
else
{
_light_.x = x+318/2
_light_.y = y+13
}
