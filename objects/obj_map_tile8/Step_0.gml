/// @description Insert description here
// You can write your code in this editor
if y < 900 && alpha = 0
{
global.room_brightness = 0.43

	if audio_is_playing(quake_sfx)
	{
	alpha = 1
	}
}
else
{
	if alpha = 1
	{
	global.room_brightness += (0.3 - global.room_brightness)*0.1
	}
	else
	{
	global.room_brightness = 0.3
	}
}


if global.b_alpha >= 1
{
	if player.x < 1447 && player.y > 952 && player.y < 1440
	{
	var test_mob = instance_create_depth(916,1440,player.depth+3,gumseong_shadow)
	test_mob.test_mob_type = 0
	test_mob.image_xscale = -1
	test_mob.image_yscale = 1
	}
	else
	{
	instance_destroy(gumseong_shadow)
	}
}