/// @description Insert description here
// You can write your code in this editor
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




if knocked_down_ef > 0
{
cannot_move = 1
hit_motion = 1
sprite_index = hurt_sprite
movement_speed += (0 - movement_speed)*0.1
image_alpha -= 0.05
	///////////////////////////////////////////

	var y_set = y+irandom_range(-16,16)
	
	//////////////////////////////////////////////////////
	if image_alpha < 0
	{
		repeat(8)
		{
		var _ef = instance_create_depth(x,y_set,depth-1,effect_spark)
		_ef.hspeed = irandom_range(5,20)*choose(-1,1)
		_ef.vspeed = irandom_range(-8,-3)
		}
		
		repeat(choose(6,7))
		{
		var ins_bb = instance_create_depth(x+irandom_range(-32,32),y+irandom_range(-32,32),depth,bubble_effect)
		ins_bb.t_scale = irandom_range(3,10)*0.3
		ins_bb.can_interect = true
		}
	
	global.gold += 130
	var random_item_drop = percentage_k(15)
		if random_item_drop = 1
		{
		give_item(0,0)
		}

	instance_destroy()
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



if place_meeting(x,y,obj_lightning_player) && obj_lightning_player.image_index < 8
{
	if hit_cooltime = 0
	{
	var _attacker_ef = instance_place(x,y,obj_lightning_player)
	var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
	
	
	t_hp_bar_alpha = 1
	alarm[5] = 200
	
	hp_minus_for_mob(1,250)
	bloody(_attacker_ef.x,_attacker_ef.y,1)
	hit_cooltime = 30
	last_hit = 30
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
	instance_destroy(_attacker_ef)
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
	alarm[1] = 5
	alarm[2] = 24
	alarm[3] = 9
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
	alarm[5] = 200
	
	hp_minus_for_mob(0,18)
	
	bloody(_attacker_ef.x,_attacker_ef.y,1)
	hit_cooltime = 1
	last_hit = 1
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
	hit_cooltime = 1
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
	hit_cooltime = 1
	alarm[1] = 13
	alarm[2] = 24
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
	alarm[5] = 200
	
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
	alarm[1] = 20
	alarm[2] = 48
	}
}





if place_meeting(x,y,rage_mode_knockback) || place_meeting(x,y,down_effect)
{
	if hit_cooltime = 0
	{
	alarm[5] = 200
	
	hp_minus_for_mob(0,0)
	
	last_hit = 1
	hit_cooltime = 1
	alarm[1] = 16
	alarm[2] = 16
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
	hp_minus_for_mob(0,92)
	last_hit = 1
	hit_cooltime = 1
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
	last_hit = 1
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
	

	var sfx = audio_play_sound(sparking_sound,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
	if place_meeting(x,y+1,floor_parents)
	{
	y -= 1
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
	hp_minus_for_mob(0,44)
	last_hit = 1
	hit_cooltime = 1
	alarm[1] = 3
	alarm[2] = 3
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
	alarm[5] = 200
	
	
	bloody(_attacker_ef.x,_attacker_ef.y,0)
	view_shake(1,4,2)
	hp_minus_for_mob(0,84)
	last_hit = 1
	hit_cooltime = 1
	alarm[1] = 3
	alarm[2] = 3
	
	repeat(8)
	{
	var _ef = instance_create_depth(x,y,depth-1,effect_spark)
	_ef.hspeed = irandom_range(5,20)*sign(_attacker_ef.bullet_speed)
	_ef.vspeed = irandom_range(-4,2)
	}
	instance_destroy(_attacker_ef)
	}
}