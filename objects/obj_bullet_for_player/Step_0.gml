/// @description Insert description here
// You can write your code in this editor
//if sign(x - player.x) = -sign(bullet_speed)
//{
//	for(var i = 0; i < abs(bullet_speed); i ++)
//	{
//		if position_meeting(x+i*sign(bullet_speed),y,player)
//		{
//		global.bullet_attacked = id
//		}
//	}
//}
image_angle = direction
x += lengthdir_x(bullet_speed,direction);
y += lengthdir_y(bullet_speed,direction);


if place_meeting(x,y,effect_attack1) || place_meeting(x,y,effect_attack2) || place_meeting(x,y,effect_attack3) || place_meeting(x,y,effect_attack3)
{
instance_destroy()

sfx_for_multiplayer(guard,0,0.07)
	repeat(2)
	{
	var _ef = instance_create_depth(x,y,depth-1,effect_spark)
	_ef.hspeed = -irandom_range(5,20)*sign(bullet_speed)
	_ef.vspeed = irandom_range(-4,2)
	}
}

if turn_dir = 0
{
var cc__ = instance_place(x,y,effect)
	if cc__ >= 0
	{
	var d_ef = instance_create_depth(player.x,player.y-64,depth-1,draw_hp_m)
	var text__ = "Ricochet!"
	if global.korean_text = 1
	{
	text__ = "도탄!"
	}
	d_ef.d_text = text__
	d_ef.image_blend = $FF6D19FF
	d_ef.image_xscale = 1.2
	d_ef.image_yscale = 1.2
	d_ef.target = -4
	sfx_for_multiplayer(guard,0,0.07)
	var random_val = choose(0,1)
	if random_val = 0
	{
	direction += 180 + irandom_range(10,30)*choose(-1,1)
	}
	else
	{
	direction += 180
	}
	turn_dir = 1
	bullet_speed += 2*sign(bullet_speed)
	
		repeat(8)
		{
		var _ef = instance_create_depth(x,y,depth-1,effect_spark)
		_ef.hspeed = -irandom_range(5,20)*sign(bullet_speed)
		_ef.vspeed = irandom_range(-4,2)
		}
	}
}


if place_meeting(x,y,floor_parents)
{
sfx_for_multiplayer(guard,0,0.07)
instance_destroy()
	repeat(2)
	{
	var _ef = instance_create_depth(x,y,depth-1,effect_spark)
	_ef.hspeed = -irandom_range(5,20)*sign(bullet_speed)
	_ef.vspeed = irandom_range(-4,2)
	}
}