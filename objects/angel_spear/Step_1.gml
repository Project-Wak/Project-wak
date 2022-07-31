/// @description Insert description here
// You can write your code in this editor
var xx_ = x+irandom_range(-16,16)
var yy_ = y+irandom_range(-16,16)
repeat(2)
{
	var random_val___ = percentage_k(5+global.graphics_for_code*7)
	if random_val___ = 1
	{
	create_buble_effect(1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.1,0.1,$FF3E2D24,$FF473021,2,$FF513524,xx_,yy_,depth+10,0,false,false)
	}
}
	
var random_val___ = percentage_k(global.graphics_for_code*3)
if random_val___ = 1
{
var random_val___2 = percentage_k(1)
create_buble_effect(0.3,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.07,0.07,$FF62D1F7,$FF6C60CD,2,$FF191919,xx_,yy_,depth-random_val___2,1,false,false)
}

if instance_exists(obj_angel)
{
	if obj_angel.y+240 < y
	{
	vspeed = 0
	gravity = 0
	on_floor = 1
	}
	else
	{
	on_floor = 0
	}
}
else
{
	if 2361 < y
	{
	vspeed = 0
	gravity = 0
	on_floor = 1
	}
	else
	{
	on_floor = 0
	}
}



w_alpha += (-0.01 - w_alpha)*0.04


