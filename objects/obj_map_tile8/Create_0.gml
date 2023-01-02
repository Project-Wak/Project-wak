/// @description Insert description here
// You can write your code in this editor
image_index = 0
depth = 999

var ele__ = instance_create_depth(-1000,2336,0,obj_elevator)
ele__.t_x = -1000
ele__.t_y = 2336
ele__.real_t_x = 400
ele__.real_t_y = 2336
ele__.activated = 1
ele__.cannot_active_more = 1
ele__.destination = 0
ele__.line_length = 2500

var droped_item__ = instance_create_depth(3295,0,0,obj_droped_item)
droped_item__.item_var = 108

var droped_item__ = instance_create_depth(572,306,0,obj_droped_item)
droped_item__.item_var = 117

var warning_guide = instance_create_depth(2713,2261,0,obj_warning)
warning_guide.warning_message = "이 앞, 올려 베기["+string(keyconverter(global.w_key))+"]를 통한 상승을 적절히 활용할 것"





var door__ = instance_create_depth(2331,1398,0,obj_tp_door_basement)
door__.sprite_index = tp_door
door__.connected_with = 0

var door__ = instance_create_depth(1319,1397,0,obj_tp_door_basement)
door__.sprite_index = tp_door
door__.connected_with = 1



var door__ = instance_create_depth(631,1397,0,obj_tp_door_basement)
door__.sprite_index = tp_door
door__.connected_with = 2

var door__ = instance_create_depth(771,694,0,obj_tp_door_basement)
door__.sprite_index = tp_door
door__.connected_with = 3



global.save_point_x = 250
global.save_point_y = 2336

global.platform_speed = 0

//alarm[1] = 100




alpha = 0