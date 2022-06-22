/// @description Insert description here
// You can write your code in this editor
var xx_ = x+irandom_range(-16,16)
var yy_ = y+irandom_range(-16,16)
repeat(2)
{
	var random_val___ = percentage_k(5+global.graphics_for_code*7)
	if random_val___ = 1
	{
	create_buble_effect(1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.1,0.1,$FF3E2D24,$FF473021,2,$FF513524,xx_,yy_,depth+30,0,false,false)
	}
}
	
var random_val___ = percentage_k(global.graphics_for_code*3)
if random_val___ = 1
{
var random_val___2 = percentage_k(1)
create_buble_effect(0.3,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.07,0.07,$FF62D1F7,$FF6C60CD,2,$FF191919,xx_,yy_,depth-random_val___2,1,false,false)
}

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
image_xscale = 4
image_yscale = 4
timer = 0
var effect_ = instance_create_depth(player.x,2363,player.depth+1,down_effect)
effect_.t_image_xscale = 0.7*6
effect_.t_image_yscale = 0.05*6
effect_.received = 0
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
