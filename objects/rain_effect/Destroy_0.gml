/// @description Insert description here
// You can write your code in this editor
if ignore_floor = 0
{
	if instance_exists(player)
	{
	var depth_ = player.depth
	}
	else
	{
	depth_ = -1
	}
		
var random_dir = choose(-1,1)
var _depth = depth_-choose(-1,1)
	
	if water_placed = 0
	{
		repeat(irandom_range(3,5))
		{
		var _ef = instance_create_depth(x,1150,_depth,effect_spark_rain)
		_ef.hspeed = irandom_range(5,20)*random_dir/10
		_ef.vspeed = irandom_range(-40,-15)/30
		}
	}
}

if water_placed = 1
{
var effect_ = instance_create_depth(x,1150,depth-10,down_effect)
effect_.t_image_xscale = 0.7
effect_.t_image_yscale = 0.05
effect_.received = 0
effect_.image_alpha = 0.8

	if instance_exists(player)
	{
	var depth_ = player.depth
	}
	else
	{
	depth_ = -1
	}


var random_dir = choose(-1,1)
var _depth = depth_-choose(-1,1)
	repeat(irandom_range(3,5))
	{
	var _ef = instance_create_depth(x,1150,_depth,effect_spark_rain)
	_ef.hspeed = irandom_range(5,20)*random_dir/10
	_ef.vspeed = irandom_range(-40,-15)/30
	}
}
