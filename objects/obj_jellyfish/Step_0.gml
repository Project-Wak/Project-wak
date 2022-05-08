/// @description Insert description here
// You can write your code in this editor

if floor(damaged_hp) != floor(hp)
{
	if hp_bar_alpha > 0
	{
	damaged_time++
		if damaged_time >= 60
		{
		damaged_hp += (hp - damaged_hp)*0.1
			if abs(damaged_hp - hp) < 2
			{
			damaged_hp = hp
			damaged_time = 0
			}
		}
	}
	else
	{
	damaged_hp = hp
	}
}


gravity = 0
if point_distance(x,y,player.x,player.y) < 450
{
targeted = 1
}



if targeted = 1 && hp > 0
{
timer ++
speed += (0 - speed)*0.07
direction += (point_direction(x,y,player.x,player.y) - direction)*0.03
	if timer > 100
	{
	image_xscale = sign_k(x - player.x)
	speed = 6
	timer = 0
	}
}


if !instance_exists(_light_)
{
_light_ = instance_create_depth(x,y,depth,obj_light)
_light_.p_id = id
_light_.alpha = 0
_light_.sprite_index = sprite64
_light_.image_blend = $FF4EB0F7
_light_.light_type = 0
_light_.image_xscale = 0
_light_.image_yscale = 0
}
else
{
light_timer ++
_light_.x = x
_light_.y = y
	if timer < 60
	{
		if (light_timer > 80 && light_timer < 140)
		{
		_light_.image_xscale += (4.6 - _light_.image_xscale)*0.08
		_light_.image_yscale += (4.6 - _light_.image_yscale)*0.08
		_light_.alpha += (image_alpha*0.2 - _light_.alpha)*0.08
		}
			
		if (light_timer >= 140 && light_timer < 200)
		{
		_light_.image_xscale += (4.2 - _light_.image_xscale)*0.08
		_light_.image_yscale += (4.2 - _light_.image_yscale)*0.08
		_light_.alpha += (image_alpha*0.1 - _light_.alpha)*0.08
		}
	}
	else
	{
	_light_.image_xscale += (4.2 - _light_.image_xscale)*0.08
	_light_.image_yscale += (4.2 - _light_.image_yscale)*0.08
	_light_.alpha += (0 - _light_.alpha)*0.08
	}
			
	if light_timer >= 200
	{
	light_timer = 80
	}
}
