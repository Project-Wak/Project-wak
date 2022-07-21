/// @description Insert description here
// You can write your code in this editor

if image_alpha <= 0
{
	if sign(player.x - x) != 0
	{
	p_xscale = sign(player.x - x)
	}
}

if !instance_exists(_light_)
{
_light_ = instance_create_depth(x,y-30,depth,obj_light)
_light_.p_id = id
_light_.alpha = 0.7
_light_.sprite_index = sprite64
_light_.image_blend = $FF473021
_light_.light_type = 0
_light_.image_xscale = 21
_light_.image_yscale = 21
}
else
{
_light_.x = x
_light_.y = y-30
_light_.alpha = image_alpha*0.55
}



if hp <= 0
{
t_b_alpha_ = -0.1
global.boss_target = -4
global.playing_scene = 1
global.never_move = 1
hp = 0
dead_scene ++
patturn = 0


cannot_step = 1

b_alpha_ += (-0.01 - b_alpha_)*0.08
y += 1.2


	if dead_scene%15
	{
	shake_boss *= -1
	x += shake_boss*14
	}
	
	if dead_scene%40 = 0
	{
	var a___ = audio_play_sound(bomb_sfx,0,0)
	audio_sound_gain(a___,0.01*global.master_volume*2*global.sfx_volume,0)
			
	var sfx = audio_play_sound(mob_faint,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
	
	repeat(2)
	{
	var _ef = instance_create_depth(x+irandom_range(-100,100),y+irandom_range(-60,100),depth-1,effect_spark)
	_ef.hspeed = irandom_range(-20,20)
	_ef.vspeed = irandom_range(-4,2)
	}
			
		
		
	view_shake(11,11,1)
		repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
		{
		randomize()
		var random_target = id
		var dust = instance_create_depth(random_target.x+irandom_range(-60,60),random_target.y+irandom_range(-60,60),random_target.depth-1,pepsi_effect_received)
		var scale = irandom_range(20,40)/50
		dust.image_xscale = scale
		dust.image_yscale = scale
		dust.vspeed = irandom_range(-50,50)/25
		dust.hspeed = irandom_range(-50,50)/25
		dust.image_alpha = 1
		}
	}
	
	
	if dead_scene > 400
	{
	global.playing_scene = 0
	global.never_move = 0
	audio_stop_sound(boss_bgm)
	var a___ = audio_play_sound(bomb_sfx,0,0)
	audio_sound_gain(a___,0.12*global.master_volume*2*global.sfx_volume,0)

	give_item(0,7)
	
	give_item(0,2)
	
	give_item(1,19)
	
	
	dead_scene = 0
	
	var test_mob = instance_create_depth(xstart-1100,1625,player.depth+3,mob_spawn_here)
	test_mob.t_y = -900
	test_mob.mob_type = obj_simhae_doo
	test_mob.xscale = 1.1
	test_mob.yscale = 1.1
	test_mob.mob_var = -6
	
	global.gold += 10000
	global.left_time += 6*global.time_plusment

	instance_destroy()
	}
}
else
{
b_alpha_ += (t_b_alpha_ - b_alpha_)*0.08
	if cannot_step = 1
	{
	depth = 1200
	p_xscale = sign_k(player.x - x)
	portential_xscale += (1.8 - portential_xscale)*0.1
	image_yscale += (1.8 - image_yscale)*0.1
	sprite_index = guisanga_doo_noneclip
	alpha += (1 - alpha)*0.1
	image_xscale = p_xscale*portential_xscale
	}
	else
	{
	p_xscale = sign_k(player.x - x)
	portential_xscale += (2.1 - portential_xscale)*0.1
	image_yscale += (2.1 - image_yscale)*0.1
	sprite_index = guisanga_doo
	alpha += (0 - alpha)*0.1
	image_xscale = p_xscale*portential_xscale
	}
	
	

	if scene__ > 0 && activated != 2
	{
		if player.attack_laser_sec = 0 && player.attack_laser = 0 && player.suicide = 0 && player.sting_attack = 0
		{
			if global.show_credits = 0
			{
			obj_camera.tv_x = 1280*0.9
			obj_camera.tv_y = 720*0.9
			obj_camera.t_x = xstart
			obj_camera.t_y = ystart+100
			}
		}
	}
	else
	{
		if activated = 2
		{
			if global.show_credits = 0
			{
			global.boss_target = id
			global.boss_name = "암흑속의 왁귀상어"
				if player.attack_laser_sec = 0 && player.attack_laser = 0 && player.suicide = 0 && player.sting_attack = 0
				{
				obj_camera.tv_x = 1280
				obj_camera.tv_y = 720
				}
			obj_camera.t_x = xstart
			obj_camera.y += (y-96 - obj_camera.y)*0.1
			obj_camera.t_y += (y-96 - obj_camera.t_y)*0.1
			}
	
			if saved_real_x = -4
			{
			global.save_point_x = x-400
			global.save_point_y = player.y
			saved_real_x = x
			saved_real_y = y
			}
		}
	}
	

	if bgm != -4
	{
	audio_sound_gain(bgm,0.1*global.master_volume*global.bgm_volume*scene__,0)
	}

	if activated = 1
	{
		if !instance_exists(wall1)
		{
		instance_destroy(normal_mob)
		wall1 = instance_create_depth(xstart-350,992,player.depth+3,obj_floor_tile3)
		wall1.image_xscale = -1
		wall1.image_yscale = 5

		wall2 = instance_create_depth(xstart+350,992,player.depth+3,obj_floor_tile3)
		wall2.image_yscale = 5
		}
		
		if !audio_is_playing(quake_sfx) && global.show_credits = 0
		{
		var sfx = audio_play_sound(quake_sfx,0,0)
		audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
		}
	player.guarding = 2
	y -= scene__*3.5
	view_shake(0.1,0.1,1)
	scene__ += 0.0032
	image_blend = merge_color(c_black,c_white,scene__)
	global.playing_scene = 1
	global.never_move = 1
		if keyboard_check(ord(string(global.skip_key)))
		{
		alpha -= 0.01
		scene__ += 0.0032
		y -= scene__*3.5
		}
	
		if bgm = -4 && global.show_credits = 0
		{
		var sfx = audio_play_sound(laser_skill_ready,0,0)
		audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
		bgm = audio_play_sound(boss_bgm,1,1)
		}
	
		if !instance_exists(check__) && player.image_alpha > 0
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "!"
		check__.target = player.id
		check__.parents = id
		}
	}

	if scene__ >= 1
	{
	t_b_alpha_ = 1.01
	activated = 2
	
	player.assult_mode = 300
	
		if instance_exists(check__)
		{
		global.playing_scene = 0
		global.never_move = 0
		instance_destroy(check__)
		message_phase ++
		}

		if patturn = 0
		{
		x += (xstart-random_movement*400 - x)*0.08
		global.room_brightness += (0.26 - global.room_brightness)*0.05
		cannot_step = 0
	
			if global.hp > 0
			{
			timer ++
			}
			
			var cal_ = (hp/max_hp)*1.2
	
			if cal_ < 0.5
			{
			cal_ = 0.5
			}
	
			if cal_ > 1
			{
			cal_ = 1
			}
	
			if timer > 300*cal_
			{
			var random_patturn = choose(1,1,2,2)
				if random_patturn != b_patturn
				{
				patturn = random_patturn
				b_patturn = random_patturn
				}
				else
				{
					repeat(99)
					{
					random_patturn = choose(1,1,2,2)
					
						if random_patturn != b_patturn
						{
						patturn = random_patturn
						b_patturn = random_patturn
						break;
						}
					}
				}
			timer = 0
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			}
		}
	}




	if patturn >= 1 && patturn < 2
	{
		if patturn = 1
		{
		set_dir = sign_k(player.x-xstart)
		random_movement = set_dir
		xx_lightning[0] = player.x+global.movement_speed+set_dir*400
			repeat(2)
			{
			var __i = choose(-1,1)
			var bl_ef = instance_create_depth(x-image_xscale*45,y,depth-1,ef_blood)
			var img_scale = -__i*2
			bl_ef.image_xscale = img_scale
			bl_ef.image_yscale = abs(img_scale)
			bl_ef.t_x = __i
			bl_ef.image_angle = irandom_range(-90,90)
			bl_ef.sfx_play = true
			}
		}
		else
		{
		x += (xstart-random_movement*400 - x)*0.08
		}
		
	patturn += 0.001
	w_alpha += (-0.1 - w_alpha)*0.1
	w_alpha_lightning[0] += (-0.1 - w_alpha_lightning[0])*0.1
	xx_lightning[0] += (player.x+global.movement_speed - xx_lightning[3])*0.3

	
		if patturn = 1.015
		{
		xx_lightning[1] = player.x+global.movement_speed+set_dir*450
		}
		
		if patturn > 1.015 && patturn < 1.1
		{
		w_alpha_lightning[1] += (1 - w_alpha_lightning[1])*0.03
		xx_lightning[1] += (player.x+global.movement_speed - xx_lightning[1])*0.1
		}
		else
		{
		w_alpha_lightning[1] += (-0.1 - w_alpha_lightning[1])*0.1
		xx_lightning[1] += (player.x+global.movement_speed - xx_lightning[1])*0.3
		}
		
		if patturn = 1.03
		{
		xx_lightning[2] = player.x+global.movement_speed+set_dir*500
		}
		
		if patturn > 1.03 && patturn < 1.11
		{
		w_alpha_lightning[2] += (1 - w_alpha_lightning[2])*0.03
		xx_lightning[2] += (player.x+global.movement_speed - xx_lightning[2])*0.1
		}
		else
		{
		w_alpha_lightning[2] += (-0.1 - w_alpha_lightning[2])*0.1
		xx_lightning[2] += (player.x+global.movement_speed - xx_lightning[2])*0.3
		}
		
		if patturn = 1.045
		{
		xx_lightning[3] = player.x+global.movement_speed+set_dir*550
		}
		
		if patturn > 1.045 && patturn < 1.12
		{
		w_alpha_lightning[3] += (1 - w_alpha_lightning[3])*0.03
		xx_lightning[3] += (player.x+global.movement_speed - xx_lightning[3])*0.1
		}
		else
		{
		w_alpha_lightning[3] += (-0.1 - w_alpha_lightning[3])*0.1
		xx_lightning[3] += (player.x+global.movement_speed - xx_lightning[3])*0.3
		}
		
		
		if patturn = 1.11
		{
		var a___ = audio_play_sound(sparking_sound,0,0)
		audio_sound_gain(a___,0.1*global.master_volume*2*global.sfx_volume,0)
		
		w_alpha_lightning[0] = 5
		w_alpha = 3
		//instance_create_depth(player.x,1626,player.depth-10,obj_lightning)
		}
		
		if patturn = 1.12
		{
		instance_create_depth(player.x+global.movement_speed+sign(global.movement_speed)*32,1626,player.depth-10,obj_lightning)
		}
		
		if patturn = 1.13
		{
		instance_create_depth(player.x+global.movement_speed+sign(global.movement_speed)*32,1626,player.depth-10,obj_lightning)
		}
		
		if patturn = 1.14
		{
		instance_create_depth(player.x+global.movement_speed+sign(global.movement_speed)*32,1626,player.depth-10,obj_lightning)
		}
		
		if patturn >= 1.15
		{
			if repeat_samepatturn = 0
			{
			patturn = 1
			repeat_samepatturn ++
			}
		}
		
		
		if patturn >= 1.2
		{
		patturn = 0
		repeat_samepatturn = 0
		}
	}
	
	
	
	if patturn >= 2 && patturn < 3
	{
	w_alpha += (-0.1 - w_alpha)*0.1
		if patturn = 2
		{
		w_alpha = 2
		sfx_for_multiplayer(sparking_sound,0,0.1)
		skill_red_ball_effect_rage = instance_create_depth(x,y,depth-1,white_circle_effect)
		skill_red_ball_effect_rage.image_xscale = 0
		skill_red_ball_effect_rage.image_yscale = 0
		skill_red_ball_effect_rage.t_scale = 1
		view_shake(1,1,3)
		}
		else
		{
			if instance_exists(skill_red_ball_effect_rage)
			{
			skill_red_ball_effect_rage.x += (xstart - skill_red_ball_effect_rage.x)*0.08
			skill_red_ball_effect_rage.y += (y-64 - skill_red_ball_effect_rage.y)*0.08
			}
		}
	patturn += 0.001
		
		if patturn = 2.1
		{
		var a___ = audio_play_sound(sparking_sound,0,0)
		audio_sound_gain(a___,0.1*global.master_volume*2*global.sfx_volume,0)
		skill_red_ball_effect_rage.image_xscale = 1.4
		skill_red_ball_effect_rage.image_yscale = 1.4
		}
		
		if patturn = 2.13
		{
		var a___ = audio_play_sound(sparking_sound,0,0)
		audio_sound_gain(a___,0.1*global.master_volume*2*global.sfx_volume,0)
		}
		
		if patturn = 2.14
		{
		var a___ = audio_play_sound(sparking_sound,0,0)
		audio_sound_gain(a___,0.1*global.master_volume*2*global.sfx_volume,0)
		}
		
		if patturn = 2.15
		{
		var a___ = audio_play_sound(sparking_sound,0,0)
		audio_sound_gain(a___,0.1*global.master_volume*2*global.sfx_volume,0)
		skill_red_ball_effect_rage.image_xscale = 2
		skill_red_ball_effect_rage.image_yscale = 2
		var dir_ = point_direction(skill_red_ball_effect_rage.x,skill_red_ball_effect_rage.y,player.x,player.y)-90
		var lightning__ = instance_create_depth(skill_red_ball_effect_rage.x,skill_red_ball_effect_rage.y,player.depth-1,obj_lightning_sec)
		lightning__.image_angle = dir_
		saved_w_x = skill_red_ball_effect_rage.x
		saved_w_y = skill_red_ball_effect_rage.y
		}
		
		if patturn >= 2.2
		{
			if !instance_exists(skill_red_ball_effect_rage)
			{
				if bullet__ = 0
				{
				bullet__ = 1
				var a___ = audio_play_sound(sparking_sound,0,0)
				audio_sound_gain(a___,0.1*global.master_volume*2*global.sfx_volume,0)
				var dir_ = point_direction(saved_w_x,saved_w_y,player.x,player.y)-90
				var lightning__ = instance_create_depth(saved_w_x,saved_w_y,player.depth-1,obj_lightning_sec)
				lightning__.image_angle = dir_
				}
			}
			else
			{
			skill_red_ball_effect_rage.t_scale = -0.1
			}
		}
		
		
		if patturn > 2.3
		{
		bullet__ = 0
		patturn = 0
		}
	}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
}