/// @description Insert description here
// You can write your code in this editor
if instance_exists(player)
{
player.show_my_sword = 8
player.draw_my_name = -1


player.guard_sprite = pl_move_skeleton_guard
	if global.n_sword = 1
	{
	player.move_sprite = spr_move
	player.attack_sprite = pl_move_skeleton_attack_beat_saber
	player.spin_attack_sprite = pl_move_skeleton_spin_attack_beat_saber
	player.down_attack_sprite = pl_move_skeleton_down_attack_beat_saber
	player.jump_attack_sprite = pl_move_skeleton_jump_attack_beat_saber
	player.spin_sprite = pl_move_skeleton_spin
	player.jump_sprite = spr_jump
	player.hurt_sprite = pl_hurt
	player.attack_laser_sprite = pl_move_skeleton_laser_skill
	player.guard_sprite = pl_move_skeleton_guard_beat_saber
	player.sting_sprite = pl_move_skeleton_sting_skill
	player.attack_laser_sprite_sec = pl_move_skeleton_laser_skill_sec
	player.rush_sprite = pl_move_skeleton_rush_slice
	player.suicide_sprite = pl_move_skeleton_suicide
	player.pering_sprite = pl_move_skeleton_pering_beat_saber
	}
	if global.n_sword = 2
	{
	player.move_sprite = spr_move
	player.attack_sprite = pl_move_skeleton_attack_beat_saber_green
	player.spin_attack_sprite = pl_move_skeleton_spin_attack_beat_saber_green
	player.down_attack_sprite = pl_move_skeleton_down_attack_beat_saber_green
	player.jump_attack_sprite = pl_move_skeleton_jump_attack_beat_saber_green
	player.spin_sprite = pl_move_skeleton_spin
	player.jump_sprite = spr_jump
	player.hurt_sprite = pl_hurt
	player.attack_laser_sprite = pl_move_skeleton_laser_skill_green
	player.guard_sprite = pl_move_skeleton_guard_green
	player.sting_sprite = pl_move_skeleton_sting_skill
	player.attack_laser_sprite_sec = pl_move_skeleton_laser_skill_sec_green
	player.rush_sprite = pl_move_skeleton_rush_slice_green
	player.suicide_sprite = pl_move_skeleton_suicide_green
	player.pering_sprite = pl_move_skeleton_pering_beat_saber_green
	}
	if global.n_sword = 3
	{
	player.move_sprite = spr_move
	player.attack_sprite = pl_move_skeleton_attack_beat_saber_red
	player.spin_attack_sprite = pl_move_skeleton_spin_attack_beat_saber_red
	player.down_attack_sprite = pl_move_skeleton_down_attack_beat_saber_red
	player.jump_attack_sprite = pl_move_skeleton_jump_attack_beat_saber_red
	player.spin_sprite = pl_move_skeleton_spin
	player.jump_sprite = spr_jump
	player.hurt_sprite = pl_hurt
	player.attack_laser_sprite = pl_move_skeleton_laser_skill_red
	player.guard_sprite = pl_move_skeleton_guard_red
	player.sting_sprite = pl_move_skeleton_sting_skill
	player.attack_laser_sprite_sec = pl_move_skeleton_laser_skill_sec_red
	player.rush_sprite = pl_move_skeleton_rush_slice_red
	player.suicide_sprite = pl_move_skeleton_suicide_red
	player.pering_sprite = pl_move_skeleton_pering_beat_saber_red
	}
	if global.n_sword = 4
	{
	player.move_sprite = spr_move
	player.attack_sprite = pl_move_skeleton_attack_beat_saber_blue
	player.spin_attack_sprite = pl_move_skeleton_spin_attack_beat_saber_blue
	player.down_attack_sprite = pl_move_skeleton_down_attack_beat_saber_blue
	player.jump_attack_sprite = pl_move_skeleton_jump_attack_beat_saber_blue
	player.spin_sprite = pl_move_skeleton_spin
	player.jump_sprite = spr_jump
	player.hurt_sprite = pl_hurt
	player.attack_laser_sprite = pl_move_skeleton_laser_skill_blue
	player.guard_sprite = pl_move_skeleton_guard_blue
	player.sting_sprite = pl_move_skeleton_sting_skill
	player.attack_laser_sprite_sec = pl_move_skeleton_laser_skill_sec_blue
	player.rush_sprite = pl_move_skeleton_rush_slice_blue
	player.suicide_sprite = pl_move_skeleton_suicide_blue
	player.pering_sprite = pl_move_skeleton_pering_beat_saber_blue
	}
	if global.n_sword = 5
	{
	player.suicide_sprite = spr_move
	}
	if global.n_sword = 6
	{
	player.move_sprite = spr_move
	player.attack_sprite = pl_move_skeleton_attack_beat_saber_katana
	player.spin_attack_sprite = pl_move_skeleton_spin_attack_beat_saber_katana
	player.down_attack_sprite = pl_move_skeleton_down_attack_beat_saber_katana
	player.jump_attack_sprite = pl_move_skeleton_jump_attack_beat_saber_katana
	player.spin_sprite = pl_move_skeleton_spin
	player.jump_sprite = spr_jump
	player.hurt_sprite = pl_hurt
	player.attack_laser_sprite = pl_move_skeleton_laser_skill_katana
	player.guard_sprite = pl_move_skeleton_guard_katana
	player.sting_sprite = pl_move_skeleton_sting_skill
	player.attack_laser_sprite_sec = pl_move_skeleton_laser_skill_sec_blue
	player.rush_sprite = pl_move_skeleton_rush_slice_katana
	player.suicide_sprite = pl_move_skeleton_suicide_katana
	player.pering_sprite = pl_move_skeleton_pering_katana
	}
}
		
		
//악세사리
global.clock = sign(check_equipment(global.accessories_equip[0]/2)+check_equipment(global.accessories_equip[1]/2))

global.lockon = sign(check_equipment(global.accessories_equip[0]/3)+check_equipment(global.accessories_equip[1]/3))
		
global.metal_shirts = sign(check_equipment(global.accessories_equip[0]/4)+check_equipment(global.accessories_equip[1]/4))
		
global.ribon = sign(check_equipment(global.accessories_equip[0]/5)+check_equipment(global.accessories_equip[1]/5))

global.burger = sign(check_equipment(global.accessories_equip[0]/6)+check_equipment(global.accessories_equip[1]/6))
		
global.hairpin = sign(check_equipment(global.accessories_equip[0]/7)+check_equipment(global.accessories_equip[1]/7))
		
global.flag_enc = sign(check_equipment(global.accessories_equip[0]/8)+check_equipment(global.accessories_equip[1]/8))
		
global.automatic_guard_plus = sign((check_equipment(global.accessories_equip[0]/9)+check_equipment(global.accessories_equip[1]/9)))*7
		
global.idol_shoes = sign(check_equipment(global.accessories_equip[0]/10)+check_equipment(global.accessories_equip[1]/10))
	
global.blue_flag = sign(check_equipment(global.accessories_equip[0]/11)+check_equipment(global.accessories_equip[1]/11))
	
global.diamond_sword = sign(check_equipment(global.accessories_equip[0]/12)+check_equipment(global.accessories_equip[1]/12))

global.aed = sign(check_equipment(global.accessories_equip[0]/13)+check_equipment(global.accessories_equip[1]/13))

global.medical_slincer1 = sign(check_equipment(global.accessories_equip[0]/14)+check_equipment(global.accessories_equip[1]/14))

global.medical_slincer2 = sign(check_equipment(global.accessories_equip[0]/15)+check_equipment(global.accessories_equip[1]/15))

global.heart_crystal1 = sign(check_equipment(global.accessories_equip[0]/16)+check_equipment(global.accessories_equip[1]/16))

global.heart_crystal2 = sign(check_equipment(global.accessories_equip[0]/17)+check_equipment(global.accessories_equip[1]/17))

global.heart_crystal3 = sign(check_equipment(global.accessories_equip[0]/18)+check_equipment(global.accessories_equip[1]/18))


if global.n_sword != 6
{
	if global.used_suicide_skill = 1
	{
	global.rage_gauge = 0
	global.used_suicide_skill = 0
	global.awakening = 0
	}
}

	
//스텟 적용
global.max_armor_plus = 1
global.max_armor_plus += global.ribon*0.1+global.hairpin*0.1
	
global.critical_plus = 0
global.critical_plus += global.blue_flag*0.15+global.diamond_sword*0.1

if instance_exists(player)
{
player.max_hp = 1000+(global.heart_crystal1*200+global.heart_crystal2*200+global.heart_crystal3*450+global.ribon*100+global.hairpin*100)
}



var _sword = 0
if global.n_sword = 6
{
_sword = 1
}
	
var gun_ = 0
if global.n_sword = 5
{
gun_ = 1
}

global.damage_plus = 1
global.damage_plus += global.flag_enc*0.18+_sword*0.5-gun_*0.5+global.diamond_sword*0.1
	
	
global.guard_power = 1
	if global.n_sword = 2
	{
	global.guard_power += 0.1
	}
		
	if global.n_sword = 5
	{
	global.guard_power -= 0.9
	}
	
	if global.n_sword = 6
	{
	global.guard_power += 0.2
	}
	
	
		
//아래 효과는 아이돌신발에 의해 바뀜
global.jump_plus = global.idol_shoes //점프력 증가
global.low_gravity_plus = 1+global.idol_shoes*0.3 //중력 감소
