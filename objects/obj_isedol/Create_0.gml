/// @description Insert description here
// You can write your code in this editor
image_speed = 0
gravity = 0.3

can_interect = 0
message_phase = 0
check__ = -4
can_give_item = 0
interecting_now = 0
first_tuto = 0
give_healitem = 0
wall_1 = -4
warning_night = 0

depth = 960
set_time = 1
betted_gold = 0
global.coin_flip = 0
coin_flip_speed = 0
global.coin_flip_n = 0
keep_pressing = 0
random_coin = 0
timer = 0
global.your_page = 0
wall2 = -4

do_not_warn = 0
if global.tutorial = 0
{
wall2 = instance_create_depth(736,160,depth,obj_floor_tile3)
wall2.image_yscale = 6
}

if global.real_ending = 0 && instance_exists(obj_wakdroid_ending)
{
wall_1 = instance_create_depth(1565,160,depth,obj_floor_tile3)
wall_1.image_yscale = 4.75
}

