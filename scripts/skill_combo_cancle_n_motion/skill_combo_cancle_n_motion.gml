// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function skill_combo_cancle_n_motion(argument0)
{
	if (argument0 = 1) || (hurt > 0 || cancled_attack > 0)
	{
		if sting_attack > 0
		{
		global.movement_speed *= 0.5
		movement_speed *= 0.5
		sting_attack = 0
		attack_sting_sfx = 0
		sting_attack_effect = 0
		gravity = 0
		vspeed = 0
		cannot_move = 0
		cooltime = 0
		}
		
		if spin > 0
		{
		sprite_index = move_sprite
		spin = 0
		cooltime = 1
		alarm[1] = 8
		cannot_move = 0
		}
	
		if charge_attack > 0
		{
		global.movement_speed = 0
		movement_speed *= 0.5
		attack_charge_sfx = 0
		cannot_move = 0
		cooltime = 0
		charge_attack = 0
		charge_attack_effect = 0
		}
	
		if attack_ > 0
		{
		attack_ = 0
		keep_attack = 0
		keep_attacking = 0
		attack_sfx_on = 0
		cooltime = 0
		cannot_move = 0
		}
	
		if attack_in_air > 0
		{
		attack_in_air = 0
		attack_sfx_on = 0
		cooltime = 0
		cannot_move = 0
		}
	
		if down_attack > 0
		{
		cooltime = 0
		down_attack_motion_dilay = 0
		down_attack_gravity = 0
		down_attack_sfx_on = 0
		down_attack_plusing = 0
		down_attack = 0
		cannot_move = 0
		y -= 1
		}
	
		if spin_attack > 0
		{
		image_angle = 0
		image_alpha = 1
		spin_attack = 0
		cannot_move = 0
		spin_attack_angle_p = 0
		spin_attack_sfx_on = 0
		cooltime = 1
		pressing_key__ = 0
		pressing_key__s = 0
		alarm[1] = 14
		}
	
		if jump_attack > 0
		{
		jump_attack = 999
		}
	
		//if attack_laser > 0
		//{
		//attack_laser_sfx = 0
		//down_attack_plusing = 0
		//attack_laser = 0
		//down_attack_with_rage_dis = 0
		//cannot_move = 0
		//cooltime = 0
		//global.never_move = 0
		//}
	
		//if attack_laser_sec > 0
		//{
		//attack_laser_sfx = 0
		//down_attack_plusing = 0
		//attack_laser_sec = 0
		//down_attack_with_rage_dis = 0
		//cannot_move = 0
		//cooltime = 0
		//global.never_move = 0
		//}
	
		if down_attack_with_rage > 0
		{
		cooltime = 0
		down_attack_motion_dilay = 0
		down_attack_gravity = 0
		down_attack_sfx_on = 0
		down_attack_plusing = 0
		down_attack_with_rage = 0
		cannot_move = 0
		down_attack_with_rage_dis = 0
		y -= 1
		}
	
		if dash_attack > 0
		{
		dash_attack = 0
		double_pressed_run_key = 0
		double_pressed_run_key = 0
		cannot_move = 0
		}
	
		if instance_exists(skill_red_ball_effect)
		{
		instance_destroy(skill_red_ball_effect)
		}
	
		if guarding > 0
		{
		sprite_index = move_sprite
		cooltime = 0
		cannot_move = 0
		guarding = -1
		paring = 1

		}
	}
}