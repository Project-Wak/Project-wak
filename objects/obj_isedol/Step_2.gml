/// @description Insert description here
// You can write your code in this editor



if player.x < 668
{
var __i = sign(x - player.x)
	if __i = 0
	{
	__i = choose(-1,1)
	}








	if place_meeting(x,y,obj_lightning_player) && obj_lightning_player.image_index < 8
	{
		if hit_cooltime = 0
		{
		var _attacker_ef = instance_place(x,y,obj_lightning_player)
		var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
	
	
		t_hp_bar_alpha = 1
		alarm[5] = 3
	
		hp_minus_for_mob(1,150)
		bloody(_attacker_ef.x,_attacker_ef.y,1)
		hit_cooltime = 30
		last_hit = 30
		}
	}

		if place_meeting(x,y,lightning_spear)
		{
			if hit_cooltime = 0
			{
			var _attacker_ef = instance_place(x,y,lightning_spear)
			var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
			audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
	
	
			t_hp_bar_alpha = 1
			alarm[5] = 3
	
			hp_minus_for_mob(1,8)
			bloody(_attacker_ef.x,_attacker_ef.y,1)
			hit_cooltime = 2
			last_hit = 30
			}
		}
	



	if place_meeting(x,y,obj_bullet_for_player)
	{
		if hit_cooltime = 0
		{
		var _attacker_ef = instance_place(x,y,obj_bullet_for_player)
		var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
	
	
		t_hp_bar_alpha = 1
		alarm[5] = 3
	
		hp_minus_for_mob(1,16)
		bloody(_attacker_ef.x,_attacker_ef.y,1)
		hit_cooltime = 1
		last_hit = 1
		instance_destroy(_attacker_ef)
		}
	}


	if place_meeting(x,y,effect)
	{
		if hit_cooltime = 0
		{
		var _attacker_ef = instance_place(x,y,effect)
		var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	

		var sfx = audio_play_sound(sparking_sound,0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)

	
	
		t_hp_bar_alpha = 1
		alarm[5] = 3
	
		hp_minus_for_mob(0,22+global.skill_turning_attack*2)
		bloody(_attacker_ef.x,_attacker_ef.y,1)
		hit_cooltime = 1
		last_hit = 1
		}
	}

	if place_meeting(x,y,effect_jump_attack)
	{
		if hit_cooltime = 0
		{
		var _attacker_ef = instance_place(x,y,effect_jump_attack)
		var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
		var sfx = audio_play_sound(sparking_sound,0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)

	
		t_hp_bar_alpha = 1
		alarm[5] = 3
		view_shake(3,3,3)
	
		hp_minus_for_mob(0,21+global.skill_jump_attack*2)
		bloody(_attacker_ef.x,_attacker_ef.y,1)
		hit_cooltime = 1
		last_hit = 1
		}
	}


	if place_meeting(x,y,effect_down_attack)
	{
		if hit_cooltime = 0
		{
		var _attacker_ef = instance_place(x,y,effect_down_attack)
		var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
		var sfx = audio_play_sound(sparking_sound,0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
		t_hp_bar_alpha = 1
		alarm[5] = 3
	
		hp_minus_for_mob(0,18)
	
		bloody(_attacker_ef.x,_attacker_ef.y,1)
		hit_cooltime = 1
		last_hit = 1
		}
	}





	if place_meeting(x,y,effect_attack1)
	{
		if hit_cooltime = 0
		{
		var _attacker_ef = instance_place(x,y,effect_attack1)
		var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	

		var sfx = audio_play_sound(sparking_sound,0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)

	
		t_hp_bar_alpha = 1
		alarm[5] = 16
	
		hp_minus_for_mob(0,16)
		bloody(_attacker_ef.x,_attacker_ef.y,1)
		last_hit = 1
		hit_cooltime = 1
		}
	}




	if place_meeting(x,y,effect_attack2)
	{
		if hit_cooltime = 0
		{
		var _attacker_ef = instance_place(x,y,effect_attack2)
		var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
		var sfx = audio_play_sound(sparking_sound,0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
	
		t_hp_bar_alpha = 1
		alarm[5] = 13
		view_shake(7,13.5,4)
	
		hp_minus_for_mob(0,19)
		bloody(_attacker_ef.x,_attacker_ef.y,1)
		last_hit = 1
		hit_cooltime = 1
		}
	}





	if place_meeting(x,y,effect_attack3)
	{
		if hit_cooltime = 0
		{
		var _attacker_ef = instance_place(x,y,effect_attack3)
		var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
		var sfx = audio_play_sound(sparking_sound,0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
	
		t_hp_bar_alpha = 1
		alarm[5] = 13
	
		view_shake(7,60,4)
	
		hp_minus_for_mob(0,26)
		bloody(_attacker_ef.x,_attacker_ef.y,1)
		last_hit = 1
		hit_cooltime = 1
		}
	}

	if place_meeting(x,y,effect_attack4)
	{
		if hit_cooltime = 0
		{
		var _attacker_ef = instance_place(x,y,effect_attack4)
		var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	

		var sfx = audio_play_sound(sparking_sound,0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)

	
		t_hp_bar_alpha = 1
		alarm[5] = 13
	
		hp_minus_for_mob(0,74)
		bloody(_attacker_ef.x,_attacker_ef.y,1)
		last_hit = 1
		hit_cooltime = 1
		}
	}



	if place_meeting(x,y,effect_attack_s)
	{
		if hit_cooltime = 0
		{
		var _attacker_ef = instance_place(x,y,effect_attack_s)
		var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
		var sfx = audio_play_sound(sparking_sound,0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
	
		t_hp_bar_alpha = 1
		alarm[5] = 3
	
		var skill_red_ball_effect_rage = instance_create_depth(x,y,depth-1,red_circle_effect)
		skill_red_ball_effect_rage.image_xscale = 0.45
		skill_red_ball_effect_rage.image_yscale = 0.45
		skill_red_ball_effect_rage.t_scale = 0.65
		skill_red_ball_effect_rage.alarm[11] = 7
	
		view_shake(7,12,4)
	
		hp_minus_for_mob(0,32)
		bloody(_attacker_ef.x,_attacker_ef.y,1)
		last_hit = 1
		hit_cooltime = 1
		}
	}






	if place_meeting(x,y,ef_blood_dash_attack)
	{
		if hit_cooltime = 0
		{
		var _attacker_ef = instance_place(x,y,ef_blood_dash_attack)
		var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	

		var sfx = audio_play_sound(sparking_sound,0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
	
		t_hp_bar_alpha = 1
		alarm[5] = 3
	
	
		bloody(_attacker_ef.x,_attacker_ef.y,1)
		view_shake(7,12,4)
		hp_minus_for_mob(0,92)
		last_hit = 1
		hit_cooltime = 1
		}
	}


	if place_meeting(x,y,charging_attack)
	{
		if hit_cooltime = 0
		{
		var _attacker_ef = instance_place(x,y,charging_attack)
		var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)

		t_hp_bar_alpha = 1
		bloody(_attacker_ef.x,_attacker_ef.y,0)
		view_shake(1,4,2)
		hp_minus_for_mob(0,62)
		last_hit = 1
		hit_cooltime = 1
	
		alarm[5] = 3
		}
	}


	if place_meeting(x,y,effect_special_skill_sec)
	{
		if hit_cooltime = 0
		{
		var _attacker_ef = instance_place(x,y,effect_special_skill_sec)
		var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	

		var sfx = audio_play_sound(sparking_sound,0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
	
		t_hp_bar_alpha = 1
		var skill_red_ball_effect_rage = instance_create_depth(x,y,depth-1,red_circle_effect)
		skill_red_ball_effect_rage.image_xscale = 0.45
		skill_red_ball_effect_rage.image_yscale = 0.45
		skill_red_ball_effect_rage.t_scale = 0.65
		skill_red_ball_effect_rage.alarm[11] = 7
	
	
		bloody(_attacker_ef.x,_attacker_ef.y,0)
		view_shake(1,4,2)
		hp_minus_for_mob(0,14)
		last_hit = 1
		hit_cooltime = 1
	
		alarm[5] = 3
		}
	}




	if place_meeting(x,y,effect_special_skill)
	{
		if hit_cooltime = 0
		{
		var _attacker_ef = instance_place(x,y,effect_special_skill)
		var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	

		var sfx = audio_play_sound(sparking_sound,0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
	
		t_hp_bar_alpha = 1
		var skill_red_ball_effect_rage = instance_create_depth(x,y,depth-1,red_circle_effect)
		skill_red_ball_effect_rage.image_xscale = 0.45
		skill_red_ball_effect_rage.image_yscale = 0.45
		skill_red_ball_effect_rage.t_scale = 0.65
		skill_red_ball_effect_rage.alarm[11] = 7
	
	
		bloody(_attacker_ef.x,_attacker_ef.y,0)
		view_shake(1,4,2)
		hp_minus_for_mob(0,44)
		last_hit = 1
		hit_cooltime = 1
	
		alarm[5] = 3
		}
	}







	if hit_cooltime = 0
	{
	var _attacker_ef = instance_place(x,y,obj_bullet)
		if (_attacker_ef >= 0 && _attacker_ef.turn_dir != 0)
		{
		var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	

		var sfx = audio_play_sound(sparking_sound,0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
		t_hp_bar_alpha = 1

	
		bloody(_attacker_ef.x,_attacker_ef.y,0)
		view_shake(1,4,2)
		hp_minus_for_mob(0,84)
		last_hit = 1
		hit_cooltime = 1
	
		alarm[5] = 3

		repeat(8)
		{
		var _ef = instance_create_depth(x,y,depth-1,effect_spark)
		_ef.hspeed = irandom_range(5,20)*sign(_attacker_ef.bullet_speed)
		_ef.vspeed = irandom_range(-4,2)
		}
		instance_destroy(_attacker_ef)
		}
	}
	}