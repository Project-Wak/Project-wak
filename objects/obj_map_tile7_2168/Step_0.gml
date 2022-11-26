/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_twin_eye) && obj_twin_eye.activated = 0
{
global.room_brightness = 0.35
}


if player.y < 6217 && player.x < 6590 && player.x > 5952 && !instance_exists(gumseong_shadow) && cre_gumseong = 0 && global.b_alpha < 1
{
var test_mob = instance_create_depth(6018,992,player.depth+3,gumseong_shadow)
test_mob.test_mob_type = 0
test_mob.image_xscale = -1
test_mob.image_yscale = 1
cre_gumseong = 1
}

if global.b_alpha >= 1
{
instance_destroy(gumseong_shadow)
ball_timer = 440
cre_gumseong = 0
}

if global.never_move = 0 && global.never_move_in_setting = 0
{
ball_timer++
}

if ball_timer > 500 && instance_exists(obj_twin_eye)
{
	if (player.x > 3650 && player.y > 686 && player.x < 5609)
	{
	var test_mob = instance_create_depth(4889-64,356,player.depth+3,obj_ball)
	test_mob.test_mob_type = 1
	show_debug_message("ball created2")
	ball_timer = 320
	}
	else
	{
	var test_mob = instance_create_depth(3919,-100,player.depth+3,obj_ball)
	test_mob.test_mob_type = 1
	show_debug_message("ball created1")
	ball_timer = 0
	}
}