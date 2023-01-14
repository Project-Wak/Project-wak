/// @description Insert description here
// You can write your code in this editor
image_blend = c_white
if image_alpha <= 0
{
	if sign(player.x - x) != 0
	{
	p_xscale = sign(player.x - x)
	}
}



if bgm != -4
{
audio_sound_gain(bgm,0.1*global.master_volume*global.bgm_volume*global.certain_music_volume*scene__,0)
}



if hp <= 0
{
	if global.achievement[12] != 1
	{
	var _achievement = instance_create_depth(x,y,depth,bg_achievement)
	_achievement.text = string(global.achievement_name[12])
	_achievement.icon_num = 4
	global.achievement[12] = 1
	}
	
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
	audio_stop_sound(global.boss_bgm_file)
	var a___ = audio_play_sound(bomb_sfx,0,0)
	audio_sound_gain(a___,0.12*global.master_volume*2*global.sfx_volume,0)

	give_item(0,7)
	
	give_item(0,2)
	
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
	portential_xscale += (1.7 - portential_xscale)*0.1
	image_yscale += (1.7 - image_yscale)*0.1
	sprite_index = simhae_doo_none_clip
	if global.none_wakgood_mode = true
	{
	sprite_index = simhae_doo_none_clip268
	}
	alpha += (1 - alpha)*0.1
	image_xscale = p_xscale*portential_xscale
	}
	else
	{
	depth = player.depth+15
	image_xscale = p_xscale*portential_xscale
	portential_xscale += (2 - portential_xscale)*0.1
	image_yscale += (2 - image_yscale)*0.1
	sprite_index = simhae_doo
	if global.none_wakgood_mode = true
	{
	sprite_index = simhae_doo265
	}
	
		if patturn >= 3 || patturn < 2
		{
		alpha += (0 - alpha)*0.1
		}
	}
	
	
	
	if scene__ > 0 
	{
		if !instance_exists(_light_)
		{
		total_died_from_here ++
		_light_ = instance_create_depth(x+p_xscale*129,y-30,depth,obj_light)
		_light_.p_id = id
		_light_.alpha = 0.7
		_light_.sprite_index = sprite64
		_light_.image_blend = $FF75F2FF
		_light_.light_type = 0
		_light_.image_xscale = 11
		_light_.image_yscale = 11
		}
		else
		{
		_light_.x = x+p_xscale*150+image_xscale*60
		_light_.y = y-200-40*image_yscale
		_light_.alpha = image_alpha*0.55*global.boss_opening_light_alpha
		}
	}
	

	if scene__ > 0 && activated != 2
	{
		if player.attack_laser_sec = 0 && player.attack_laser = 0 && player.suicide = 0 && player.sting_attack = 0
		{
			if global.show_credits = 0
			{
			image_xscale = -abs(image_xscale)
			obj_camera.tv_x = 1280*0.9
			obj_camera.tv_y = 720*0.9
			obj_camera.t_x = xstart
			obj_camera.t_y = player.y
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
			global.boss_name = "암흑 속의 심해두"
			if global.none_wakgood_mode = true
			{
			global.boss_name = "암흑 속의 심해어"
			}
			
			if player.attack_laser_sec = 0 && player.attack_laser = 0 && player.suicide = 0 && player.sting_attack = 0
			{
			obj_camera.tv_x = 1280
			obj_camera.tv_y = 720
			}
			obj_camera.t_x = xstart
			obj_camera.t_y = ystart
			}
	
			if saved_real_x = -4
			{
			global.save_point_x = x-600
			global.save_point_y = player.y
			saved_real_x = x
			saved_real_y = y
			}
		}
	}

	if activated = 1
	{
		if !instance_exists(wall1)
		{
		instance_destroy(normal_mob)

		if global.show_credits <= 0
		{
		np_setpresence_more("", "보스전", false);
		np_setpresence("암흑 속의 심해두","", "spr_icon325", "");
		}
		
		wall1 = instance_create_depth(xstart-520,992,player.depth+3,obj_floor_tile3)
		wall1.image_xscale = -1
		wall1.image_yscale = 5

		wall2 = instance_create_depth(xstart+520,992,player.depth+3,obj_floor_tile3)
		wall2.image_yscale = 5
		}
		
		if !audio_is_playing(quake_sfx) && global.show_credits = 0
		{
		var sfx = audio_play_sound(quake_sfx,0,0)
		audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
		}
	player.guarding = 2
	y -= scene__*2.3
	view_shake(0.1,0.1,1)
	scene__ += 0.0032
	image_blend = merge_color(c_black,c_white,scene__)
	global.playing_scene = 1
	global.never_move = 1

		if skip_boss_apearence = 1 && keyboard_check_pressed(global.skip_key)
		{
			repeat(900)
			{
			scene__ += 0.0032
			global.room_brightness += 0.0012
			y -= scene__*2.3
			alpha -= 0.01
				if scene__ >= 1
				{
				global.b_alpha = 1.2
				break;
				}
			}
		}
	
		if bgm = -4 && global.show_credits = 0
		{
		var sfx = audio_play_sound(laser_skill_ready,0,0)
		audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
		bgm = audio_play_sound(global.boss_bgm_file,1,1)
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
	skip_boss_apearence = 1
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
		p_xscale = sign_k(player.x - x)
		global.room_brightness += (0.26 - global.room_brightness)*0.05
			if saved_real_x != -4
			{
				if x != saved_real_x
				{
				image_alpha += (-0.01 - image_alpha)*0.08
					if image_alpha < 0
					{
					x = saved_real_x
					y = saved_real_y
					}
				}
				else
				{
				image_alpha += (1.1 - image_alpha)*0.05
				}
			}
		cannot_step = 0
	
			if global.hp > 0
			{
			timer += set_value_case(global.replayed*0.5,1,2,true)
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
			var random_patturn = choose(1,1,2,2,3)
				if random_patturn != b_patturn
				{
				patturn = random_patturn
				b_patturn = random_patturn
				}
				else
				{
					repeat(99)
					{
					random_patturn = choose(1,1,2,2,3)
					
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
	
	if patturn >= 1
	{
	t_b_alpha_ = 1.01
	}
	else
	{
	t_b_alpha_ = -0.01
	}



	if patturn >= 1 && patturn < 2
	{
	cannot_step = 0
		if patturn = 1
		{
		image_alpha += (-0.01 - image_alpha)*0.08
			if image_alpha < 0
			{
			p_xscale = sign_k(player.x - x)
			cannot_step = 1
			x = xstart
			y = ystart-100
			patturn = 1.1
			}
		}
		
		if patturn >= 1.1
		{
		patturn += 0.001
			if patturn < 1.4
			{
			bullet_cre ++
				if bullet_cre%6 = 0
				{
				var bullet__ = instance_create_depth(x+irandom_range(-120,120),y-150+irandom_range(-120,120),player.depth-1,simhae_doo_bullet)
				bullet__.bullet_speed = 0.7
				bullet__.attack_type = 0
				bullet__._color_ = $FF75F2FF
				}
			}
		}
		
		if patturn > 1.4
		{
			if !instance_exists(simhae_doo_bullet)
			{
			y = ystart+150
			patturn = 0
			}
		}
	}
	
	if patturn >= 2 && patturn < 3
	{
	cannot_step = 0
		if patturn = 2
		{
		image_alpha += (-0.01 - image_alpha)*0.08
			if image_alpha < 0
			{
			x = player.x+choose(300,-300)
			y = ystart+300
			patturn = 2.1
				repeat(2)
				{
				var __i = choose(-1,1)
				var bl_ef = instance_create_depth(x,y,depth-1,ef_blood)
				var img_scale = -__i*2
				bl_ef.image_xscale = img_scale
				bl_ef.image_yscale = abs(img_scale)
				bl_ef.t_x = __i
				bl_ef.image_angle = irandom_range(-90,90)
				bl_ef.sfx_play = true
				}
			}
		}
		
		if patturn >= 2.1
		{
		alpha = 2
			if patturn = 2.1
			{
			p_xscale = sign_k(player.x - x)
			}
		image_alpha += (1.1 - image_alpha)*0.08
		patturn += 0.005
		}
		
		if patturn >= 2.3 && patturn < 2.4
		{
			if abs(hspeed) < 4
			{
				if global.show_credits = 0
				{
				var a___ = audio_play_sound(charging_sfx,0,0)
				audio_sound_gain(a___,0.1*global.master_volume*2*global.sfx_volume,0)
				}

			hspeed = p_xscale*15
			}
		hspeed += p_xscale*2
		patturn += 0.01
			if patturn >= 2.38
			{
			patturn = 2.5
			}
		}
		
		if abs(hspeed) > 1
		{
		var a___ = instance_create_depth(x,y-90,depth,rage_mode_knockback_attacked)
		a___.image_xscale = 4
		a___.image_yscale = 7
		}
		
		if patturn >= 2.5
		{
		hspeed += (0 - hspeed)*0.1
			if abs(hspeed) < 1
			{
			hspeed = 0
			patturn = 0
			bullet_cre = 0
			}
		}
	}
	
	if patturn >= 3 && patturn < 4
	{
	cannot_step = 0
		if patturn < 3.2
		{
		patturn += 0.001
			if patturn > 3.1
			{
			vspeed -= abs(vspeed)*0.1
			}
			else
			{
			vspeed -= 0.01
			}
			
			if patturn < 3.1 && patturn > 3.05
			{
			bullet_cre ++
				if bullet_cre%6 = 0
				{
				var bullet__ = instance_create_depth(x+irandom_range(-120,120),y-150+irandom_range(-120,120),player.depth-1,simhae_doo_bullet)
				bullet__.bullet_speed = 0.7
				bullet__.attack_type = 0
				bullet__._color_ = $FF75F2FF
				}
			}
		}
		
		if patturn >= 3.2 && patturn < 3.7
		{
			if patturn < 3.61
			{
			patturn += 0.001
			}
		var cal = 1
		
			if hp < max_hp*0.8
			{
			cal = 2
			}
			
			if hp < max_hp*0.5
			{
			cal = 3
			}
			
			if hp < max_hp*0.3
			{
			cal = 4
			}
			

			if patturn = 3.2 || patturn = 3.3 || patturn = 3.4 || patturn = 3.5
			{
			instance_create_depth(xstart,player.y,player.depth-32,obj_simhaedoo_ring)
			created_ring_once++
			}

			
			if patturn > (3.13+cal/10) && !instance_exists(obj_simhaedoo_ring)
			{
				repeat(irandom_range(2,5))
				{
				var bullet__ = instance_create_depth(xstart,1625-150+irandom_range(-120,120),player.depth-1,simhae_doo_bullet)
				bullet__.bullet_speed = 0.7
				bullet__.attack_type = 0
				bullet__._color_ = $FF75F2FF
				}
				
				if created_ring_once > 0
				{
				var __ins__ = instance_create_depth(xstart,1625,player.depth-1,effect_special_skill_attacked)
				__ins__.color_1 = c_white
				__ins__.color_2 = $FF2C75FF
				__ins__.color_3 = $FF75F2FF
				}
			patturn = 3.7
			created_ring_once = 0
			}
		vspeed = 0
		}
		
		if patturn >= 3.7
		{
		patturn += 0.002
			if patturn > 3.75
			{
			x += (saved_real_x - x)*0.1
			y += (saved_real_y - y)*0.07
			}
			
			if patturn > 3.99
			{
			patturn = 0
			}
		}
		else
		{
			if patturn < 3.55
			{
			var xx_ = xstart + irandom_range(-24,24)
			var yy_ = 1600 + irandom_range(-16,16)
			var random_val___ = percentage_k(global.graphics_for_code*3)
				if random_val___ = 1
				{
				var random_val___2 = percentage_k(1)
				create_buble_effect(0.2,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.07,0.07,$FF62D1F7,$FF6C60CD,2,$FF191919,xx_,yy_,player.depth-random_val___2,1,false,false)
				}
			}
		}
	}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
}