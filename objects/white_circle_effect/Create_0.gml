/// @description Insert description here
// You can write your code in this editor
//command_buffer = buffer_create(3, buffer_grow, 1);
image_speed = 0
image_alpha = 1

for(var i = 0; i <= 32; i ++)
{
_effect_line[i] = -1
}

_light_ = instance_create_depth(x,y-30,depth,obj_light)
_light_.p_id = id
_light_.alpha = 0.2
_light_.sprite_index = sprite64
_light_.image_blend = c_white
_light_.light_type = 0
_light_.image_xscale = 9
_light_.image_yscale = 9
t_hp_bar_alpha = 0
hp_bar_alpha = 0
draw_hp = 0
scale_plus = 0
damaged_hp = 0
alarm[3] = 15
des = 0
a = 0

hp = 1450
max_hp = 1450
cannot_move = 0
armored_level = 1
cannot_step = 1
test_mob_type = 1
movement_speed = 0
hit_motion = 0
hit_cooltime = 0
last_hit = 1

timer = 0
