/// @description Insert description here
// You can write your code in this editor
command_buffer = buffer_create(3, buffer_grow, 1);
t_x = player.x
movement_speed = 0
cannot_move = 0
image_speed = 0
gravity = 0.2
hit_cooltime = 0
last_hit = 0
gravity_ignore = 0
hit_stand_up = 0
knocked_down_ef = 0
hit_motion = 0
can_attack = 0
hp = 205
max_hp = hp
spin = 0
hp_bar_alpha = 0
damage_calcul__ = 0
t_hp_bar_alpha = 0
armored_level = 1
draw_hp = 0
laser_dis = 300

targeted = -4
random_laser_move = 0
random_laser_move_set = 1
timer_ = 0
move_sprite = spr_wakrugot_turret
hurt_sprite = spr_wakrugot_turret
attack_sprite = spr_wakrugot_turret
if global.none_wakgood_mode = true
{
move_sprite = spr_wakrugot_turret262
hurt_sprite = spr_wakrugot_turret262
attack_sprite = spr_wakrugot_turret262
}
attack_ = 0
attack_dilay = 0
random_attack_chance = 0
attack_sound_effect = 0

damaged_hp = 0
damaged_time = 0


check_floor = 0