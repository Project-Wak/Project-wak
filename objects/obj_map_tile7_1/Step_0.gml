/// @description Insert description here
// You can write your code in this editor
if global.boss_target = -4
{
	if instance_exists(BG_light_broken)
	{
	var __light_ = BG_light_broken._light_
	global.room_brightness = 0.45*__light_.alpha
	}
}
else
{
	if boss_met = 0
	{
	global.room_brightness += (0.2 - global.room_brightness)*0.1
	boss_met = 1
	}
}


