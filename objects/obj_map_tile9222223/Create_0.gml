/// @description Insert description here
// You can write your code in this editor
image_index = 0
depth = 1030
if global.show_credits = 0
{
global.t_b_alpha = -0.01
}
global.never_move = 0
alarm[1] = 5
alarm[2] = 100

player.x = 503
player.y = 96
global.save_point_x = 503
global.save_point_y = 96

obj_camera.x = 503
obj_camera.y = 96

obj_camera.t_x = 503
obj_camera.t_y = 96


mes = 0

//var door__ = instance_create_depth(920,166,0,obj_tp_door_basement)
//door__.connected_with = 5
alarm[0] = 60

global.platform_speed = 0

if global.guisanga_doo_event = 0
{
instance_create_depth(4576,1504,depth,obj_simhae_doo)
}
else
{
instance_create_depth(4608,1440,depth,obj_guisangadoo)
}



var droped_item__ = instance_create_depth(160,1856,0,obj_droped_item)
droped_item__.item_var = 104
