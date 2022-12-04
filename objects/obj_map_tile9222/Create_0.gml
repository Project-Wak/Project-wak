/// @description Insert description here
// You can write your code in this editor
image_index = 0
depth = 1030
if global.show_credits = 0
{
global.t_b_alpha = -0.01
}
global.never_move = 0
//alarm[1] = 30
alarm[2] = 100

if global.simhaedoo_stage = 1
{
timer = 1
}
else
{
timer = 0
player.x = 547
player.y = 448

obj_camera.x = 547
obj_camera.y = 448

obj_camera.t_x = 547
obj_camera.t_y = 448
}

var warning_guide = instance_create_depth(5600,647,0,obj_warning)
warning_guide.warning_message = "이 앞, '움직이는 그림자'가 등장하니 아래로 우회할 것"


//var ele__ = instance_create_depth(-2100,448,0,obj_elevator)
//ele__.t_x = -1000
//ele__.t_y = 448
//ele__.real_t_x = 224
//ele__.real_t_y = 448
//ele__.activated = 1
//ele__.cannot_active_more = 1
//ele__.destination = 0
//ele__.line_length = 2500


var door__ = instance_create_depth(1719,640,0,obj_tp_door_basement)
door__.connected_with = 0

var door__ = instance_create_depth(2502,522,0,obj_tp_door_basement)
door__.connected_with = 1




var door__ = instance_create_depth(3646,644,0,obj_tp_door_basement)
door__.connected_with = 2

var door__ = instance_create_depth(4411,637,0,obj_tp_door_basement)
door__.connected_with = 3


//var door__ = instance_create_depth(920,166,0,obj_tp_door_basement)
//door__.connected_with = 5


global.save_point_x = 547
global.save_point_y = 449

global.platform_speed = 0



var warning_guide = instance_create_depth(540,340,0,obj_warning)
warning_guide.warning_message = "물이 깊으니 익사 주의"



if global.guisanga_doo_event = 1 && !instance_exists(obj_wakdroid_ending)
{
instance_create_depth(0,0,0,broken_platfrom)
}
else
{
var ele__ = instance_create_depth(-750,440,9999,obj_elevator)
ele__.t_x = -750
ele__.t_y = 440
ele__.real_t_x = 200
ele__.real_t_y = 440
ele__.activated = 1
ele__.cannot_active_more = 1
ele__.destination = 0
ele__.line_length = 1200
}


var droped_item__ = instance_create_depth(497,774,0,obj_droped_item)
droped_item__.item_var = 110



var door__ = instance_create_depth(3097,1603,0,obj_tp_door_basement)
door__.connected_with = 4

var door__ = instance_create_depth(5764,640,0,obj_tp_door_basement)
door__.connected_with = 5

