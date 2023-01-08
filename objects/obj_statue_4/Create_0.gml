/// @description Insert description here
// You can write your code in this editor
depth = 995
image_speed = 0
image_index = 2

_light_ = instance_create_depth(x,y-100,depth,obj_light)
_light_.p_id = id
_light_.alpha = 0
_light_.sprite_index = sprite64
_light_.image_blend = $FF75F2FF
_light_.light_type = 0
_light_.image_xscale = 3*(1 - abs(player.x - x)/256)
_light_.image_yscale = 3*(1 - abs(player.x - x)/256)