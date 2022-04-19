/// @description Insert description here
// You can write your code in this editor
if spark_cre = 1
{
randomize()
	repeat(irandom_range(2,6))
	{
	var _my_p = get_my_player()
	if (image_angle >= 0 && image_angle <= 90) || (image_angle >= 270 && image_angle <= 360)
	{
	var random_dir = 1
	}
	else
	{
	var random_dir = -1
	}

	var _ef = instance_create_depth(_my_p.x-image_xscale*4,_my_p.y+irandom_range(-13,0),_my_p.depth-1,effect_spark)
	_ef.hspeed = irandom_range(5,20)*random_dir
	_ef.vspeed = irandom_range(-4,2)
	}
spark_cre = 0
}
