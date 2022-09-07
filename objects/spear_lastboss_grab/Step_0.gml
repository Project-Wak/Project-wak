/// @description Insert description here
// You can write your code in this editor
image_alpha += (1 - image_alpha)*0.1

w_alpha += (-0.01 - w_alpha)*0.06

if stop = 1
{
speed += (0 - speed)*0.3
}
else
{
image_angle += (point_direction(x,y,player.x,player.y)-90 - image_angle)*0.1
}


if speed > 0 && place_meeting(x,y,player)
{
	if stop = 0
	{
		with(player)
		{
			if object_index = player
			{
			view_shake(0,1.1,1)
			bloody(x-image_xscale,y,1)
			sfx_for_multiplayer(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0.2)
			sfx_for_multiplayer(sparking_sound,0,0.1)
			sfx_for_multiplayer(critical_sfx,0,0.01)
			}
		}
		
		
	stop = 1
	w_alpha = 1
	sfx_for_multiplayer(critical_sfx,0,0.1)
		repeat(choose(2,4))
		{
		var _ef = instance_create_depth(x+irandom_range(-16,16),y,depth-1,effect_spark)
		_ef.hspeed = irandom_range(-20,20)
		_ef.vspeed = irandom_range(-4,2)
		}
	}
}
else
{
var _ef = instance_create_depth(x+irandom_range(-16,16),y,depth-1,effect_spark)
_ef.hspeed = irandom_range(-20,20)
_ef.vspeed = irandom_range(-4,2)

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
}


