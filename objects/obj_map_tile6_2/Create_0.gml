image_index = 0
depth = 999
activated = 0

global.platform_speed = 0
global.room_brightness = 0.2
var laser = instance_create_depth(1097,1112,player.depth-2,block_laser)
laser.width_ = 16
laser.x2 = 1097
laser.y2 = 1112
laser.direction = 0
laser.damage_able = 320
laser.color_ = $FF9F2FED



var ele__ = instance_create_depth(-1000,288,0,obj_elevator)
ele__.t_x = -1000
ele__.t_y = 288
ele__.real_t_x = 416
ele__.real_t_y = 288
ele__.activated = 1
ele__.cannot_active_more = 1
ele__.destination = 0
ele__.line_length = 2500

global.save_point_x = 416
global.save_point_y = 250


var droped_item__ = instance_create_depth(787,537,0,obj_droped_item)
droped_item__.item_var = 3





var test_mob = instance_create_depth(950,384,player.depth+3,mob_spawn_here)
test_mob.t_y = -900
test_mob.mob_type = "B02"
test_mob.xscale = 1.1
test_mob.yscale = 1.1
test_mob.mob_var = -4


var droped_item__ = instance_create_depth(3454,1230,0,obj_droped_item)
droped_item__.item_var = 103