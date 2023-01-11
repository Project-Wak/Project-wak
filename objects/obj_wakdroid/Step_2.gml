/// @description Insert description here
// You can write your code in this editor
if global.guide_gif = -4
{
var __i = sign(x - player.x)
	if __i = 0
	{
	__i = choose(-1,1)
	}
if knocked_down_ef = 0
{
	if hp <= 0
	{
	knocked_down_ef = 1
	}
}


if image_xscale = 3
{
hp = max_hp
	if gravity = 0 && damage_calcul__ != 0
	{
	var d_ef = instance_create_depth(x,y,depth-1,draw_hp_m)
	d_ef.d_text = damage_calcul__
	d_ef.image_blend = $FF1E9DFF
	damage_calcul__ = 0
	}
}

if knocked_down_ef > 0 && attack_pattern = 0
{
knocked_down_ef ++
if rage_mode <= 0
{
cannot_move = 1
hit_motion = 1
}
sprite_index = hurt_sprite
movement_speed += (0 - movement_speed)*0.1

	if place_meeting(x,y+1,floor_parents)
	{
	image_index = 1
	}
	//knocked_down_ef = 999
	if knocked_down_ef = 2
	{
	repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
	{
	randomize()
	var dust = instance_create_depth(x+irandom_range(-5,5),y+irandom_range(-5,5),depth-1,pepsi_effect_received)
	var scale = irandom_range(20,40)/50
	dust.image_xscale = scale
	dust.image_yscale = scale
	dust.vspeed = irandom_range(-50,50)/37
	dust.hspeed = irandom_range(-50,50)/37
	dust.image_alpha = 1
	}
	
	
	var sfx = audio_play_sound(mob_faint,0,0)
	audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
	}
}

if hit_cooltime > 0
{
t_x = x
hit_stand_up = 1
}

if hit_stand_up = 1
{
cannot_move = 1
}



if spin = 0 && dash_attack = 0
{
	if place_meeting(x,y,obj_lightning_player) && obj_lightning_player.image_index < 8
	{
		if hit_cooltime = 0
		{
		var _attacker_ef = instance_place(x,y,obj_lightning_player)
		var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
	
	
		t_hp_bar_alpha = 1
		alarm[5] = 200
	
		hp_minus_for_mob(1,150)
		bloody(_attacker_ef.x,_attacker_ef.y,1)
		hit_cooltime = 30
		last_hit = 30
		alarm[1] = 10
		alarm[2] = 24
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
		alarm[5] = 200
	
		hp_minus_for_mob(1,8)
		bloody(_attacker_ef.x,_attacker_ef.y,1)
		hit_cooltime = 2
		last_hit = 30
		alarm[1] = 10
		alarm[2] = 24
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
		alarm[5] = 200
	
		hp_minus_for_mob(0,22+global.skill_turning_attack*2)
		bloody(_attacker_ef.x,_attacker_ef.y,1)
		hit_cooltime = 1
		last_hit = 1
		if rage_mode <= 0
		{
		movement_speed = __i*1.8
		cannot_move = 1
		vspeed = _attacker_ef.pertential_vspeed-1
			if hit_motion = 0
			{
			hit_motion = 1
			}
		}
		alarm[1] = 10
		alarm[2] = 24
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
		alarm[5] = 200
	
		hp_minus_for_mob(1,16)
		bloody(_attacker_ef.x,_attacker_ef.y,1)
		hit_cooltime = 1
		last_hit = 1
		if rage_mode <= 0
		{
		movement_speed = __i*1.8
		cannot_move = 1
		vspeed = _attacker_ef.pertential_vspeed-1
			if hit_motion = 0
			{
			hit_motion = 1
			}
		}
		instance_destroy(_attacker_ef)
		alarm[1] = 10
		alarm[2] = 24
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
		alarm[5] = 200
		view_shake(3,3,3)
	
		hp_minus_for_mob(0,21+global.skill_jump_attack*2)
		bloody(_attacker_ef.x,_attacker_ef.y,1)
		hit_cooltime = 1
		last_hit = 1
		if rage_mode <= 0
		{
		movement_speed = __i*0.4
		cannot_move = 1
		vspeed = -4.1
			if hit_motion = 0
			{
			hit_motion = 1
			}
		}
		alarm[1] = 5
		alarm[2] = 24
		gravity_ignore = 1
		alarm[3] = 9
		}
	}


	if place_meeting(x,y,effect_down_attack)
	{
		if hit_cooltime = 0
		{
		var _attacker_ef = instance_place(x,y,effect_down_attack)
		if rage_mode <= 0
		{
		movement_speed = __i*0.9
		cannot_move = 1
		vspeed = _attacker_ef.pertential_vspeed
			if hit_motion = 0
			{
			hit_motion = 1
			}
		}
		var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
		var sfx = audio_play_sound(sparking_sound,0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
		t_hp_bar_alpha = 1
		alarm[5] = 200
	
		hp_minus_for_mob(0,18)
	
		bloody(_attacker_ef.x,_attacker_ef.y,1)
		hit_cooltime = 1
		last_hit = 1
		gravity = 0.36
		alarm[1] = 3
		alarm[2] = 24
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
		alarm[5] = 200
	
		hp_minus_for_mob(0,16)
		bloody(_attacker_ef.x,_attacker_ef.y,1)
		last_hit = 1
		gravity = 0.36
		if rage_mode <= 0
		{
		movement_speed = __i*2
		cannot_move = 1
		vspeed += 4
			if hit_motion = 0
			{
			hit_motion = 1
			}
		}
		hit_cooltime = 1
		alarm[1] = 13
		alarm[2] = 24
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
		alarm[5] = 200
		view_shake(7,13.5,4)
	
		hp_minus_for_mob(0,19)
		bloody(_attacker_ef.x,_attacker_ef.y,1)
		last_hit = 1
		gravity = 0.2
		if rage_mode <= 0
		{
		movement_speed = __i*2
		cannot_move = 1
		vspeed -= 1.5
			if hit_motion = 0
			{
			hit_motion = 1
			}
		}
		hit_cooltime = 1
		alarm[1] = 10
		alarm[2] = 24
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
		alarm[5] = 200
	
		view_shake(7,60,4)
	
		hp_minus_for_mob(0,26)
		bloody(_attacker_ef.x,_attacker_ef.y,1)
		last_hit = 1
		gravity = 0.2
		hit_cooltime = 1
		if rage_mode <= 0
		{
		movement_speed = __i*2.5
		cannot_move = 1
		vspeed -= 5
			if hit_motion = 0
			{
			hit_motion = 1
			}
		}
		alarm[1] = 10
		alarm[2] = 18
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
		alarm[5] = 200
	
		hp_minus_for_mob(0,74)
		bloody(_attacker_ef.x,_attacker_ef.y,1)
		last_hit = 1
		gravity = 0.36
		hit_cooltime = 1
		if rage_mode <= 0
		{
		movement_speed = __i*7
		cannot_move = 1
		vspeed += 4
			if hit_motion = 0
			{
			hit_motion = 1
			}
		}
		alarm[1] = 13
		alarm[2] = 24
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
		alarm[5] = 200
	
	
		bloody(_attacker_ef.x,_attacker_ef.y,1)
		view_shake(7,12,4)
		hp_minus_for_mob(0,132)
		last_hit = 1
		hit_cooltime = 1
		gravity = 0.2
		if rage_mode <= 0
		{
		movement_speed += __i*2.5
		vspeed -= 0.5
		cannot_move = 1
			if hit_motion = 0
			{
			hit_motion = 1
			}
		}
		alarm[1] = 20
		alarm[2] = 48
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
		alarm[5] = 200
	
	
		bloody(_attacker_ef.x,_attacker_ef.y,0)
		view_shake(1,4,2)
		hp_minus_for_mob(0,62)
		gravity = 0.2
		y --
		if rage_mode <= 0
		{
		movement_speed = -sign_k(-global.movement_speed)*13
		cannot_move = 1
		vspeed -= 4
			if hit_motion = 0
			{
			hit_motion = 1
			}
		}
		last_hit = 1
		alarm[1] = 25
		hit_cooltime = 1
		alarm[2] = 25
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
		alarm[5] = 200
	
		var skill_red_ball_effect_rage = instance_create_depth(x,y,depth-1,red_circle_effect)
		skill_red_ball_effect_rage.image_xscale = 0.45
		skill_red_ball_effect_rage.image_yscale = 0.45
		skill_red_ball_effect_rage.t_scale = 0.65
		skill_red_ball_effect_rage.alarm[11] = 7
	
	
		bloody(_attacker_ef.x,_attacker_ef.y,0)
		view_shake(1,4,2)
		hp_minus_for_mob(0,14)
		if rage_mode > 0
		{
		rage_mode -= 0.01
		}
		if damaged_count > 0
		{
		damaged_count -= 0.1*150
		}
		last_hit = 1
		gravity = 0.2
		if rage_mode <= 0
		{
		movement_speed = __i*2.5
		vspeed -= 0.1
		cannot_move = 1
			if hit_motion = 0
			{
			hit_motion = 1
			}
		}
		alarm[1] = 3
		alarm[2] = 3
		hit_cooltime = 1
		}
	}




	if place_meeting(x,y,effect_special_skill)
	{
		if hit_cooltime = 0
		{
		var _attacker_ef = instance_place(x,y,effect_special_skill)
		var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
		if rage_mode > 0
		{
		rage_mode -= 0.01
		}
		if damaged_count > 0
		{
		damaged_count -= 0.1*150
		}
		var sfx = audio_play_sound(sparking_sound,0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
		if place_meeting(x,y+1,floor_parents)
		{
		y -= 1
		}
		if rage_mode <= 0
		{
		vspeed -= 0.6
		}
	
		t_hp_bar_alpha = 1
		alarm[5] = 200
	
		var skill_red_ball_effect_rage = instance_create_depth(x,y,depth-1,red_circle_effect)
		skill_red_ball_effect_rage.image_xscale = 0.45
		skill_red_ball_effect_rage.image_yscale = 0.45
		skill_red_ball_effect_rage.t_scale = 0.65
		skill_red_ball_effect_rage.alarm[11] = 7
	
	
		bloody(_attacker_ef.x,_attacker_ef.y,0)
		view_shake(1,4,2)
		hp_minus_for_mob(0,24)
		last_hit = 1
		hit_cooltime = 1
		gravity = 0.2
		if rage_mode <= 0
		{
		movement_speed = __i*4.3
		vspeed -= 1
		cannot_move = 1
			if hit_motion = 0
			{
			hit_motion = 1
			}
		}
		alarm[1] = 3
		alarm[2] = 3
		}
	}
}
}