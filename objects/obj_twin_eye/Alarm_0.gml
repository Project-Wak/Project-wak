/// @description Insert description here
// You can write your code in this editor
var test_mob = instance_create_depth(xstart-300,ystart+400,player.depth+3,mob_spawn_here)
test_mob.t_y = -900
test_mob.mob_type = obj_twin_eye
test_mob.xscale = 1.1
test_mob.yscale = 1.1
test_mob.mob_var = -5
test_mob.image_yscale = 10

x = xstart+500
y = ystart+500

left_eye = instance_create_depth(xstart+500-240,ystart+500+150,depth,obj_twin_eye_another)
left_eye.image_angle = -8
left_eye.image_xscale = 1



x -= 360



