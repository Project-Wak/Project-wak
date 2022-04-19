/// @description Insert description here
// You can write your code in this editor
var test_mob = instance_create_depth(x-300,y+600,player.depth+3,mob_spawn_here)
test_mob.t_y = -900
test_mob.mob_type = obj_angel
test_mob.xscale = 1.1
test_mob.yscale = 1.1
test_mob.image_yscale = 8
test_mob.mob_var = -5


spear__ = instance_create_depth(x-300,y+600,player.depth+3,angel_spear)


