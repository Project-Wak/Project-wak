/// @description Insert description here
// You can write your code in this editor
image_index = 0
depth = 1002
if global.show_credits = 0
{
global.t_b_alpha = -0.01
}
global.never_move = 0
alarm[1] = 30
alarm[2] = 100

player.x = 160
player.y = 2300

obj_camera.x = 160
obj_camera.y = 2300

alarm[0] = 5


var door__ = instance_create_depth(1573,2200,0,obj_tp_door_basement)
door__.connected_with = 0

var door__ = instance_create_depth(915,1569,0,obj_tp_door_basement)
door__.connected_with = 3




var door__ = instance_create_depth(1887,1569,0,obj_tp_door_basement)
door__.connected_with = 2

var door__ = instance_create_depth(920,166,0,obj_tp_door_basement)
door__.connected_with = 1




var door__ = instance_create_depth(1426,801,0,obj_tp_door_basement)
door__.connected_with = 4

var door__ = instance_create_depth(1895,159,0,obj_tp_door_basement)
door__.connected_with = 13




var door__ = instance_create_depth(800,799,0,obj_tp_door_basement)
door__.connected_with = 8

var door__ = instance_create_depth(2395,414,0,obj_tp_door_basement)
door__.connected_with = 7




var door__ = instance_create_depth(1763,801,0,obj_tp_door_basement)
door__.connected_with = 11

var door__ = instance_create_depth(369,1378,0,obj_tp_door_basement)
door__.connected_with = 9




var door__ = instance_create_depth(2397,1058,0,obj_tp_door_basement)
door__.connected_with = 10

var door__ = instance_create_depth(3232,416,0,obj_tp_door_basement)
door__.connected_with = 5




var door__ = instance_create_depth(3285,1058,0,obj_tp_door_basement)
door__.connected_with = 12

var door__ = instance_create_depth(2400,2216,0,obj_tp_door_basement)
door__.connected_with = 6



var door__ = instance_create_depth(2685,2205,0,obj_tp_door_basement)
door__.connected_with = 14

var door__ = instance_create_depth(369,481,0,obj_tp_door_basement)
door__.connected_with = 15


var droped_item__ = instance_create_depth(346,1427,0,obj_droped_item)
droped_item__.item_var = 111



global.save_point_x = 160
global.save_point_y = 2300

global.platform_speed = 0




