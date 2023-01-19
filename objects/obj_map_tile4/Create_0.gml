image_index = 0
depth = 999

global.save_point_x = 896
global.save_point_y = 736

if global.tutorial = 0
{
global.n_time = 20
}


global.item_owned[5] = 1
var ele__ = instance_create_depth(-1000,736,0,obj_elevator)
ele__.t_x = -1000
ele__.t_y = 736
ele__.real_t_x = 896
ele__.real_t_y = 736
ele__.activated = 1
ele__.cannot_active_more = 1
ele__.destination = 0
ele__.line_length = 2500


var inside_ = instance_create_depth(1948,645,0,pl_practice)
inside_.image_index = 0

var inside_ = instance_create_depth(3151,643,0,pl_practice)
inside_.image_index = 2


var droped_item__ = instance_create_depth(2175,167,0,obj_droped_item)
droped_item__.item_var = 116

var inside_ = instance_create_depth(1243,966,0,obj_isedol)
inside_.image_index = 6



