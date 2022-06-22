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
_light_.image_blend = $FFB6FB77
_light_.light_type = 0
_light_.image_xscale = 7
_light_.image_yscale = 7
}
else
{
_light_.x = x+318/2
_light_.y = y+13

	timer++
	if timer > 360 && timer < 450
	{
	_light_.alpha += (-0.3 - _light_.alpha)*0.01
	}

	if timer > 550
	{
	_light_.alpha += (0.21 - _light_.alpha)*0.01
	}

	if timer > 1000
	{
	timer = 0
	}
}

