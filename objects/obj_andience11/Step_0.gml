/// @description Insert description here
// You can write your code in this editor
if global.hp <= 1
{
time = 1
}




if instance_number(down_effect) > 0
{
	if gravity = 0
	{
	y --
	gravity = 0.3
	vspeed = -irandom_range(30,50)/10
	time = 0
	image_index = 0
	max_time = 9099999
	}
}



if time > max_time
{
y --
gravity = 0.3
vspeed = -irandom_range(30,50)/10
time = 0
max_time = 999999
}


if instance_number(player) > 0
{
	if player.x > x
	{
	image_xscale = -1
	}
	else
	{
	image_xscale = 1
	}
}
else
{
	if obj_camera.x > x
	{
	image_xscale = -1
	}
	else
	{
	image_xscale = 1
	}
}



if y >= global.p_floor-48
{
image_index = 1
gravity = 0
y = global.p_floor-48
	if time = 0
	{
	time = 1
	max_time = t_max_time+irandom_range(-40,40)
	}
}

if y < global.p_floor-48
{
image_index = 0
gravity = 0.3
}

if time >= 1
{
time ++
}
