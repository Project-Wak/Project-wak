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
_light_ = instance_create_depth(x+p_xscale*129,y-30,depth,obj_light)
_light_.p_id = id
_light_.alpha = 0.7
_light_.sprite_index = sprite64
_light_.image_blend = $FF75F2FF
_light_.light_type = 0
_light_.image_xscale = 21
_light_.image_yscale = 21
}
else
{
_light_.x = x+p_xscale*150+image_xscale*60
_light_.y = y-200-40*image_yscale
_light_.alpha = image_alpha*0.55
}



if hp <= 0
{
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
	
	dead_scene = 0
	
	var test_mob = instance_create_depth(xstart-1100,ystart+600,player.depth+3,mob_spawn_here)
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
	depth = 1000
	portential_xscale += (1.7 - portential_xscale)*0.1
	image_yscale += (1.7 - image_yscale)*0.1
	sprite_index = simhae_doo_none_clip
	alpha += (1 - alpha)*0.1
	image_xscale = p_xscale*portential_xscale
	}
	else
	{
	depth = player.depth+1
	image_xscale = p_xscale*portential_xscale
	portential_xscale += (2 - portential_xscale)*0.1
	image_yscale += (2 - image_yscale)*0.1
	sprite_index = simhae_doo
	alpha += (0 - alpha)*0.1
	}
	
	

	if scene__ > 0 && activated != 2
	{
		if global.show_credits = 0
		{
		obj_camera.tv_x = 1280*0.9
		obj_camera.tv_y = 720*0.9
		obj_camera.t_x = xstart
		obj_camera.t_y = y+180
		}
	}
	else
	{
		if activated = 2
		{
			if global.show_credits = 0
			{
			global.boss_target = id
			global.boss_name = "암흑속의 심해두"
			obj_camera.tv_x = 1280
			obj_camera.tv_y = 720
			obj_camera.t_x = xstart
			obj_camera.t_y = player.y
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
	

	if bgm != -4
	{
	audio_sound_gain(bgm,0.1*global.master_volume*global.bgm_volume*scene__,0)
	}

	if activated = 1
	{
		if !instance_exists(wall1)
		{
		instance_destroy(normal_mob)
		wall1 = instance_create_depth(xstart-520,576,player.depth+3,obj_floor_tile3)
		wall1.image_xscale = -1
		wall1.image_yscale = 5

		wall2 = instance_create_depth(xstart+520,576,player.depth+3,obj_floor_tile3)
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
		if keyboard_check(ord(string(global.skip_key)))
		{
		scene__ += 0.0032
		y -= scene__*2.3
		}
	
		if bgm = -4 && global.show_credits = 0
		{
		var sfx = audio_play_sound(laser_skill_ready,0,0)
		audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
		bgm = audio_play_sound(boss_bgm,0,1)
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
			timer ++
			}
	
			if timer > 300
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
		vspeed -= 1
		}
		
		if patturn >= 3.2 && patturn < 3.3
		{
			if patturn != 3.3
			{
			patturn = 3.3
			var effect_ = instance_create_depth(player.x,player.y+27,player.depth+1,down_effect_for_laser)
			effect_.image_blend = c_white
			effect_.t_image_xscale = 2.5*0.4
			effect_.t_image_yscale = 0.8*0.4
			effect_.image_alpha = 0.7
			effect_.alarm[1] = 3
			effect_.image_angle = 0
			effect_.image_xscale = 2.5*0.1
			effect_.image_yscale = 0.8*0.1
			
				repeat(5)
				{
				var bullet__ = instance_create_depth(player.x+irandom_range(-120,120),player.y-200+irandom_range(-120,120),player.depth-1,simhae_doo_bullet)
				bullet__.bullet_speed = 0.7
				}
			}
		vspeed = 0
		}
		
		if patturn >= 3.3 && patturn < 3.6
		{
		patturn += 0.001
		var check_ = 0
			with(simhae_doo_bullet)
			{
				if object_index = simhae_doo_bullet
				{
					if des_time = 0
					{
					check_ = 1
					}
				}
			}
			
			if check_ = 1
			{
			saved_player_x = player.x
			}
			
			if patturn = 3.45
			{
			var __ins__ = instance_create_depth(saved_player_x,1083,player.depth-1,effect_special_skill_attacked)
			__ins__.color_1 = c_white
			__ins__.color_2 = $FF2C75FF
			__ins__.color_3 = $FF75F2FF
			}
		}
		
		if patturn >= 3.6
		{
		patturn += 0.005
		x += (saved_real_x - x)*0.1
		y += (saved_real_y - y)*0.1
			if patturn > 3.9
			{
			patturn = 0
			}
		}
	}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
}