/// @description Insert description here
// You can write your code in this editor
var wid_ = camera_get_view_width(view_camera[0])*0.4
var hei_ = camera_get_view_height(view_camera[0])*0.5
image_xscale = wid_
image_yscale = hei_

var ins_door = instance_place(x,y,obj_door)
if instance_exists(ins_door) && ins_door.opened = 0
{
global.fix_camera = 1
global.can_close = 0
}
else
{
global.fix_camera = 0
global.can_close = 1
}