/// @description Insert description here
// You can write your code in this editor
global.got_sec_phase = 1
if global.none_wakgood_mode = true
{
sprite_index = pl_hurt_hyumpanchi271
}

image_index = 1
image_speed = 0
image_xscale = -1
gravity = 0.3

global.t_b_alpha = -0.01
global.credit_b_alpha = 0
global.show_credits = 0
can_interect = 0
message_phase = 0
check__ = -4
story = 0


clock_throw_scene = 0
interecting_now = 0

depth = 960
cre_boss = 0
show_ending = 0
b_alpha_ = 0
__sfx__ = 0
speed_pl = 0

play_scene__ = 0
volume__ = 1
ending_mes_timer = 0
timer2 = 0
view_size = 0.7
show_mes_ending = 0
show_cinematic = 0
show_cinematic_sec = 0
bgm = -4
volume_downer = 1
select_end = 0

audio_stop_sound(boss_bgm)

_light_ = instance_create_depth(x,y,depth,obj_light)
_light_.p_id = id
_light_.alpha = 0
_light_.sprite_index = sprite64
_light_.image_blend = $FF4EB0F7
_light_.light_type = 0
_light_.image_xscale = 0
_light_.image_yscale = 0
