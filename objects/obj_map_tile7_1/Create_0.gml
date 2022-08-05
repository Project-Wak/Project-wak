/// @description Insert description here
// You can write your code in this editor
image_index = 0
depth = 999
var ele__ = instance_create_depth(-1000,1152,0,obj_elevator)
ele__.t_x = -1000
ele__.t_y = 1152
ele__.real_t_x = 480
ele__.real_t_y = 1152
ele__.activated = 1
ele__.cannot_active_more = 1
ele__.destination = 0
ele__.line_length = 2500

global.platform_speed = 0
global.room_brightness = 0.35

global.save_point_x = 480
global.save_point_y = 1122
boss_met = 0

var test_mob = instance_create_depth(900,1248,player.depth+3,mob_spawn_here)
test_mob.t_y = -900
test_mob.mob_type = "B03"
test_mob.xscale = 1.1
test_mob.yscale = 1.1
test_mob.mob_var = -4
test_mob.image_xscale = 2


var test_mob = instance_create_depth(3904,1184,player.depth+3,mob_spawn_here)
test_mob.image_yscale = 4
test_mob.t_y = -900
test_mob.mob_type = 0
test_mob.xscale = 1
test_mob.yscale = 1
test_mob.mob_var = gumseong_shadow

alarm[1] = 60