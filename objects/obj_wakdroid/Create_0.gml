/// @description Insert description here
// You can write your code in this editor
//command_buffer = buffer_create(3, buffer_grow, 1);
audio_stop_sound(follower_bgm)
phase = 0
wall_1 = -4
if global.left_time <= 24
{
global.left_time = 24
}


t_x = player.x
t_y = 2459
movement_speed = 0
cannot_move = 0
image_speed = 0
gravity = 0.2
hit_cooltime = 0
last_hit = 0
gravity_ignore = 0
hit_stand_up = 0
scene__ = 0
knocked_down_ef = 0
hit_motion = 0
can_attack = 0
bgm = -4
if global.real_ending = 0
{
hp = 1050
}
else
{
hp = 500
}
check_floor = 0
max_hp = hp
check_hp = hp
hp_bar_alpha = 0
damage_calcul__ = 0
t_hp_bar_alpha = 0
armored_level = 5
damaged_count = 0
dash_attack = 0
draw_hp = 0
rage_mode = 0
attack_laser_sfx = 0
skill_red_ball_effect = noone
attack_laser_sec = 0
spin = 0

move_sprite = spr_move_wakdroid
hurt_sprite = pl_hurt_wakdroid
attack_sprite = pl_move_hyumpanchi_attack_based1
attack_spr = pl_move_skeleton_attack_beat_saber_black
move_spin = pl_move_wakdroid_spin
jump_spr = spr_jump_wakdroid
crouch_spr = spr_crouch_wakdroid
if global.none_wakgood_mode = true
{
move_sprite = spr_move_wakdroid277
hurt_sprite = pl_hurt_wakdroid276
attack_spr = pl_move_skeleton_attack_beat_saber_black280
move_spin = pl_move_wakdroid_spin266
jump_spr = spr_jump_wakdroid272
crouch_spr = spr_crouch_wakdroid275
}
attack_ = 0
attack_dilay = 0
random_attack_chance = 0
attack_sound_effect = 0
w_alpha = 0
global.killed_angel = 1
spin_attack_delay = 0
attack_delay = 0

damaged_hp = 0
damaged_time = 0
attack_paturn = 0
attack_sfx_on = 0
keep_attacking = 0
down_attack_motion_dilay = 0
down_attack_with_rage_dis = 0
attack_target_x = 0

global.boss_target = id
global.boss_name = "왁드로이드"


hurt_motion_time_for_bug = 0