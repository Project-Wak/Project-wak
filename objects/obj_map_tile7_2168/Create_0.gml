/// @description Insert description here
// You can write your code in this editor
image_index = 0
depth = 999

var ele__ = instance_create_depth(-1000,1888,0,obj_elevator)
ele__.t_x = -1000
ele__.t_y = 1888
ele__.real_t_x = 256
ele__.real_t_y = 1888
ele__.activated = 1
ele__.cannot_active_more = 1
ele__.destination = 0
ele__.line_length = 2500

cre_gumseong = 0



var test_mob = instance_create_depth(2016,1344,player.depth+3,mob_spawn_here)
test_mob.t_y = -900
test_mob.mob_type = 1
test_mob.xscale = 1.1
test_mob.yscale = 1.1
test_mob.mob_var = obj_lilla
test_mob.image_yscale = 0.4

var droped_item__ = instance_create_depth(3967,478,0,obj_droped_item)
droped_item__.item_var = 117



global.save_point_x = 250
global.save_point_y = 1888

global.platform_speed = 0



alarm[1] = 500
