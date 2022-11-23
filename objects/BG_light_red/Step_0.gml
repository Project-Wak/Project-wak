/// @description Insert description here
// You can write your code in this editor
if abs(global.platform_speed) > 0
{
x -= global.platform_speed*1.5
}

if !instance_exists(_light_)
{
_light_ = instance_create_depth(x,y,depth,obj_light)
_light_.p_id = id
_light_.alpha = 0.4*global.boss_opening_light_alpha
_light_.sprite_index = sprite64
_light_.image_blend = $FF474BE7
_light_.light_type = 0
_light_.image_xscale = 11.2
_light_.image_yscale = 11.2
}
else
{
_light_.x = x+lengthdir_x(159,image_angle)
_light_.y = y+lengthdir_y(13,image_angle)
_light_.alpha = 0.4*global.boss_opening_light_alpha*timer_sec
}


if instance_exists(obj_simhae_doo) && global.boss_opening_light_alpha < 0 && timer_sec = 1
{
timer --
	if timer < 0
	{
	timer_sec = 0
	}
}

if global.b_alpha >= 1
{
timer = irandom_range(100,200)
timer_sec = 1
}