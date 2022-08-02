/// @description Insert description here
// You can write your code in this editor
//command_buffer = buffer_create(3, buffer_grow, 1);
t_x = player.x
movement_speed = 0
cannot_move = 0
image_speed = 0
image_index = 0
hit_cooltime = 0
last_hit = 0
gravity_ignore = 0
hit_stand_up = 0
knocked_down_ef = 0
hit_motion = 0
can_attack = 0
hp = 1000
max_hp = 1000
hp_bar_alpha = 0
damage_calcul__ = 0
t_hp_bar_alpha = 0
armored_level = 2
draw_hp = 0
rage_mode = 0
rage_active = 0
hp_min = hp

global.gumseong_met_time++

move_sprite = spr_move
run_sprite = spr_move_run
hurt_sprite = pl_hurt
attack_sprite = pl_move_hyumpanchi_attack_based1
spin_sprite = pl_move_skeleton_spin
attack_ = 0
attack_dilay = 0
random_attack_chance = 0
attack_sound_effect = 0
attack_delay_timer = 0

force_move = 0
run_delay = 0


if global.gumseong_tuto = 0
{
global.show_guide_mes_spr = 4
global.show_guide_mes = "검성의 그림자\n\n검성의 그림자는 플레이어를 흉내 내는 일종의 히든몹으로,\n처치시 특수한 무기를 드랍한다.\n\n(tip : 해당 몹은 매우 강력하므로 무시하고 지나쳐도 상관없으며\n 검성의 그림자가 레이지 모드 상태가 되었을때는\n레이지 모드가 끝날때 까지 최대한 도망다니는것이 좋다)"
global.gumseong_tuto = 1
}


spin = 0
spin_delay = 0

targeted = -4
targeting_delay = 0

damaged_hp = 0
damaged_time = 0

check_floor = 0