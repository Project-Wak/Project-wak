image_index = 0
depth = 999
player.image_xscale = -1
var ele__ = instance_create_depth(832,-1000,0,obj_elevator)
ele__.t_x = 832
ele__.t_y = -1000
ele__.real_t_x = 832
ele__.real_t_y = 736
ele__.activated = 1
ele__.cannot_active_more = 1
ele__.destination = 0
ele__.line_length = -2500




var ele__ = instance_create_depth(3340,736,0,obj_elevator)
ele__.t_x = 3340
ele__.t_y = 736
ele__.real_t_x = 4096
ele__.real_t_y = 736
ele__.activated = -1
ele__.cannot_active_more = 0
ele__.destination = 1
ele__.line_length = 1200

var droped_item__ = instance_create_depth(485,307,0,obj_droped_item)
droped_item__.item_var = 2


var droped_item__ = instance_create_depth(1166,684,0,obj_droped_item)
droped_item__.item_var = 203

var droped_item__ = instance_create_depth(81,664,0,obj_droped_item)
droped_item__.item_var = 5