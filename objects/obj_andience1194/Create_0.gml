/// @description Insert description here
// You can write your code in this editor
image_index = 0
image_speed = 0
image_xscale = -1
gravity = 0.3

can_interect = 0
message_phase = 0
check__ = -4
story = 0

interecting_now = 0

depth = 960
cre_boss = 0
b_alpha_ = 0

play_scene__ = 0
bgm = -4

if instance_exists(obj_wakdroid_ending)
{
instance_create_depth(3328,2240,depth,obj_last_boss)
global.never_move = 0
global.playing_scene = 0
obj_camera.t_x = -4
interecting_now = 0
message_phase = 31
sprite_index = pl_hurt_hyumpanchi_hakase
image_index = 1
}


if global.story_next > 100
{
instance_destroy(obj_angel)
instance_destroy(angel_spear)
}