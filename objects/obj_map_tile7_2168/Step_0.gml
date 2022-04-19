/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_twin_eye) && obj_twin_eye.activated = 0
{
global.room_brightness = 0.2
}


if player.y > 1113 && player.x < 2955 && player.x > 2486 && !instance_exists(gumseong_shadow)
{
var test_mob = instance_create_depth(2533,1478,player.depth+3,gumseong_shadow)
test_mob.test_mob_type = 0
test_mob.image_xscale = -1
test_mob.image_yscale = 1
}
