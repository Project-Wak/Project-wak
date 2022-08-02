/// @description Insert description here
// You can write your code in this editor
image_index = 0
depth = 999

var ele__ = instance_create_depth(-1000,2336,0,obj_elevator)
ele__.t_x = -1000
ele__.t_y = 2336
ele__.real_t_x = 330
ele__.real_t_y = 2336
ele__.activated = 1
ele__.cannot_active_more = 1
ele__.destination = 0
ele__.line_length = 2500

var droped_item__ = instance_create_depth(3495,1673,0,obj_droped_item)
droped_item__.item_var = 108


global.save_point_x = 250
global.save_point_y = 2336

global.platform_speed = 0

alarm[1] = 100




alpha = 0