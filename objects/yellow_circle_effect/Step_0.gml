/// @description Insert description here
// You can write your code in this editor
_light_.image_xscale = image_xscale*3
_light_.image_yscale = image_yscale*3
_light_.alpha = image_alpha
_light_.x = x
_light_.y = y

if image_xscale > t_scale
{
image_xscale -= 0.012
image_yscale -= 0.012
}
else
{
global.black_bg_ef = 0
image_xscale -= 0.005
image_yscale -= 0.005
}

image_xscale += (t_scale - image_xscale)*0.01
image_yscale += (t_scale - image_yscale)*0.01

if scale_plus > 0
{
scale_plus -= 0.01
}

if image_xscale <= 0
{
instance_destroy()
}

if des > 0
{
	if des = 1
	{
	scale_plus = 0.2
	des = 2
	}
t_scale = -0.01
image_alpha -= 0.1
}
else
{
image_alpha += 0.1
}

if hp < 0
{
hp = 0
}

if timer > 60
{
	if instance_exists(obj_angel)
	{
	image_xscale = 4
	image_yscale = 4
	timer = 0
	var effect_ = instance_create_depth(player.x,obj_angel.y+170,player.depth+1,down_effect)
	effect_.t_image_xscale = 0.7*6
	effect_.t_image_yscale = 0.05*6
	effect_.received = 0
	}
}


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
