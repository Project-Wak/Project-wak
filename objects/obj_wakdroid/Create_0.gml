/// @description Insert description here
// You can write your code in this editor
//command_buffer = buffer_create(3, buffer_grow, 1);
wall_1 = instance_create_depth(4804,2117,depth,obj_floor_tile3)
wall_1.image_yscale = 2.25

phase = 0

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
hp = 700
check_floor = 0
max_hp = hp
hp_bar_alpha = 0
damage_calcul__ = 0
t_hp_bar_alpha = 0
armored_level = 5
damaged_count = 0
check_hp = 700
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
attack_ = 0
attack_dilay = 0
random_attack_chance = 0
attack_sound_effect = 0
w_alpha = 0
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