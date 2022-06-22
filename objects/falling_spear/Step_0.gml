/// @description Insert description here
// You can write your code in this editor
w_alpha += (-0.01 - w_alpha)*0.06
if place_meeting(x,y+1,floor_parents)
{
gravity = 0
vspeed = 0
timer ++
var _ef = instance_create_depth(x+irandom_range(-16,16),y,depth-1,effect_spark)
_ef.hspeed = irandom_range(-20,20)
_ef.vspeed = irandom_range(-4,2)

	if timer = 1
	{
	sfx_for_multiplayer(critical_sfx,0,0.01)
	sfx_for_multiplayer(guard,0,0.04)
	w_alpha = 2
	
		repeat(4)
		{
		var _ef = instance_create_depth(x+irandom_range(-16,16),y,depth-1,effect_spark)
		_ef.hspeed = irandom_range(-20,20)
		_ef.vspeed = irandom_range(-4,2)
		}
	}
	
	if timer = 120
	{
	w_alpha = 2
	}
	
	if timer > 120
	{
	image_alpha += (-0.1 - image_alpha)*0.1
		if image_alpha <= 0
		{
		instance_destroy()
		}
	}
}
else
{
gravity = 0.23
}

repeat(100)
{
	if place_meeting(x,y+0.2,floor_parents)
	{
	y -= 0.1
	}
	else
	{
	break;
	}
}




