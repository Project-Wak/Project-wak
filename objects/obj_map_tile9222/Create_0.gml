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
player.x = 5181
player.y = 1869

obj_camera.x = 5181
obj_camera.y = 1869
}
else
{
player.x = 547
player.y = 448

obj_camera.x = 547
obj_camera.y = 448
}

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
alarm[3] = 5



if global.guisanga_doo_event = 1 && !instance_exists(obj_wakdroid_ending)
{
instance_create_depth(0,0,0,broken_platfrom)
}

