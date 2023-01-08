/// @description Insert description here
// You can write your code in this editor

if abs(global.platform_speed) > 0
{
x -= global.platform_speed
}


if global.dreamy_alpha > 0
{
	if instance_exists(_light_)
	{
	_light_.x = x
	_light_.y = y-90
	_light_.alpha = global.dreamy_alpha*0.2*(1 - abs(player.x - x)/512)
	_light_.image_xscale = 3*(1 - abs(player.x - x)/512)
	_light_.image_yscale = 3*(1 - abs(player.x - x)/512)
	}

	
var xx_ = x+choose(-16,16)
var yy_ = y-130
	repeat(2)
	{
		var random_val___ = percentage_k(5+global.graphics_for_code*7)
		if random_val___ = 1
		{
		create_buble_effect(1,270+irandom_range(-20,20),0,choose(-1)*irandom_range(1,20)/7,0.1,0.1,$FF3E2D24,$FF473021,2,$FF513524,xx_,yy_,depth+10,0,false,false)
		}
	}
	
	var random_val___ = percentage_k(global.graphics_for_code*3)
	if random_val___ = 1
	{
	var random_val___2 = percentage_k(1)
	create_buble_effect(0.3,270+irandom_range(-20,20),0,choose(-1)*irandom_range(1,20)/7,0.07,0.07,$FF62D1F7,$FF6C60CD,2,$FF191919,xx_,yy_,depth-random_val___2,1,false,false)
	}
}