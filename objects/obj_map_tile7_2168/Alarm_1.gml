/// @description Insert description here
// You can write your code in this editor
if player.x < 4519 && instance_exists(obj_twin_eye)
{
var test_mob = instance_create_depth(3830,-500,player.depth+3,obj_ball)
test_mob.test_mob_type = 1

	if player.x > 3900
	{
	var test_mob = instance_create_depth(4300,-900,player.depth+3,obj_ball)
	test_mob.test_mob_type = 1
	}
}

alarm[1] = 500


