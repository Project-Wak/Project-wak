/// @description Insert description here
// You can write your code in this editor
if activated = 0
{
var test_mob = instance_create_depth(1600,1056,player.depth+3,wak_drone)
test_mob.test_mob_type = 1
test_mob.image_xscale = 0.75
test_mob.image_yscale = 0.75

activated = 1
}