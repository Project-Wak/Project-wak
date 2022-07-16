/// @description Insert description here
// You can write your code in this editor



if !instance_exists(obj_worm)
{
instance_destroy()
}

if n_hp != hp
{
obj_worm.hp -= n_hp-hp
n_hp = hp
}


if my_number = 31
{
armored_level = 0.15
image_index = 2

	if !instance_exists(_light_)
	{
	_light_ = instance_create_depth(x,y-90,depth,obj_light)
	_light_.p_id = id
	_light_.alpha = 0.7
	_light_.sprite_index = sprite64
	_light_.image_blend = $FF75F2FF
	_light_.light_type = 0
	_light_.image_xscale = 6
	_light_.image_yscale = 6
	}
	else
	{
	_light_.x = x
	_light_.y = y
		if instance_exists(obj_worm) && obj_worm.patturn = 0
		{
		_light_.alpha = image_alpha*0.55
		}
	}
}


if instance_exists(target)
{
	if my_number != 31
	{
		if point_distance(x,y,target.x,target.y) > 90*image_xscale
		{
		t_x = target.x
		t_y = target.y

		x += (t_x - x)*0.25
		y += (t_y - y)*0.25
		image_angle = point_direction(x,y,t_x,t_y)
		}
	}
	else
	{
		if point_distance(x,y,target.x,target.y) > 128*image_xscale
		{
		t_x = target.x
		t_y = target.y

		x += (t_x - x)*0.25
		y += (t_y - y)*0.25
		image_angle = point_direction(x,y,t_x,t_y)
		}
	}

	

	if target.alpha > 0.2
	{
	alpha += (1 - alpha)*0.1
	}
	
	if target.alpha < 0.8
	{
	alpha += (-0.01 - alpha)*0.1
	}
	
	
	if alpha > 0.8
	{
	depth = 1000
	image_xscale += (0.8 - image_xscale)*0.1
	image_yscale += (0.8 - image_yscale)*0.1
	}
	else
	{
	depth = target.depth+1
	image_xscale += (1 - image_xscale)*0.1
	image_yscale += (1 - image_yscale)*0.1
	}
}

