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


if instance_exists(target)
{
	if point_distance(x,y,target.x,target.y) > 90*image_xscale
	{
	t_x = target.x
	t_y = target.y

	x += (t_x - x)*0.25
	y += (t_y - y)*0.25
	image_angle = point_direction(x,y,t_x,t_y)
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

