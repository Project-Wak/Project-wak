/// @description Insert description here
// You can write your code in this editor
if depth > player.depth
{
w_alpha = 0.6
}

image_angle -= hspeed*0.7


if place_meeting(x,y-10,obj_floor_tile1)
{
gravity = 0
vspeed += (0 - vspeed)*0.1
hspeed += (0 - hspeed)*0.1
}
else
{
	if place_meeting(x,y,outside_water)
	{
	gravity = 0.08
	}
	else
	{
	gravity = 0.02
	}
}



if water_placed = 0 && place_meeting(x,y,outside_water)
{
var sfx__ = audio_play_sound(water_in_sfx,0,false)
audio_sound_gain(sfx__,1.3,0)
	
water_placed = 1
vspeed = 0
var effect_ = instance_create_depth(x,1150,depth-10,down_effect)
effect_.t_image_xscale = 0.7
effect_.t_image_yscale = 0.05
effect_.received = 0
effect_.image_alpha = 0.8

	repeat(irandom_range(7,10))
	{
	var _ef = instance_create_depth(x+irandom_range(-16,16),1150,depth,effect_spark_rain)
	_ef.hspeed = irandom_range(-20,20)*0.35
	_ef.vspeed = irandom_range(-40,-15)/20
	}
}
