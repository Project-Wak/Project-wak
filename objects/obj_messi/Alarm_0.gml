/// @description Insert description here
// You can write your code in this editor
var test_mob = instance_create_depth(xstart,ystart+400,player.depth+3,mob_spawn_here)
test_mob.t_y = -900
test_mob.mob_type = obj_messi
test_mob.xscale = 1.1
test_mob.yscale = 1.1
test_mob.mob_var = -5
test_mob.image_yscale = 10


left_hand = instance_create_depth(x-240,y+150,depth,obj_hand)
left_hand.image_angle = -8
left_hand.image_xscale = 1

right_hand = instance_create_depth(x+240,y+150,depth,obj_hand)
right_hand.image_angle = 8
right_hand.image_xscale = -1

