image_index = 0
depth = 999
activated = 0

global.platform_speed = 0
global.room_brightness = 0.35
var laser = instance_create_depth(1097,1112,player.depth-2,block_laser)
laser.width_ = 16
laser.x2 = 1097
laser.y2 = 1112
laser.direction = 0
laser.damage_able = 320
laser.color_ = $FF474BE7



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




var warning_guide = instance_create_depth(770,172,0,obj_warning)
warning_guide.warning_message = "이 앞, 올려 베기["+string(keyconverter(global.w_key))+"]를 통한 상승을 적절히 활용할 것"



var test_mob = instance_create_depth(950,384,player.depth+3,mob_spawn_here)
test_mob.t_y = -900
test_mob.mob_type = "B02"
test_mob.xscale = 1.1
test_mob.yscale = 1.1
test_mob.mob_var = -4


var droped_item__ = instance_create_depth(3454,1230,0,obj_droped_item)
droped_item__.item_var = 103



var warning_guide = instance_create_depth(2476,990,0,obj_warning)
warning_guide.warning_message = "녀석의 거대한 '코'를 노려라..."

