/// @description Insert description here
// You can write your code in this editor
image_blend = c_white

if bgm != -4
{
audio_sound_gain(bgm,0.1*global.master_volume*global.bgm_volume*global.certain_music_volume*scene__,0)
}

if global.none_wakgood_mode = true
{
sprite_index = spr_ssab_bulrae263
}
//global.boss_target = id
//global.boss_name = "쌉벌레두"

//obj_camera.tv_x = 1280*0.9
//obj_camera.tv_y = 720*0.9

if t_x != -4
{
x += (t_x - x)*0.32
}

if t_y != -4
{
y += (t_y - y)*0.32
}

if !instance_exists(_light_)
{
_light_ = instance_create_depth(x,y-90,depth,obj_light)
_light_.p_id = id
_light_.alpha = 0.7
_light_.sprite_index = sprite64
_light_.image_blend = $FF75F2FF
_light_.light_type = 0
_light_.image_xscale = 8
_light_.image_yscale = 8
}
else
{
_light_.x = x
_light_.y = y
	if patturn = 0
	{
	_light_.alpha = image_alpha*0.55
	}
}



if cannot_step = 1
{
depth = 1000
image_xscale += (0.95 - image_xscale)*0.1
image_yscale += (0.95 - image_yscale)*0.1
alpha += (1 - alpha)*0.1
}
else
{
depth = player.depth+1
image_xscale += (1.1 - image_xscale)*0.1
image_yscale += (1.1 - image_yscale)*0.1
alpha += (0 - alpha)*0.1
}


if breathing = 1
{
view_shake(0.1,0.1,1)
var xx_ = x+lengthdir_y(42,image_angle)
var yy_ = y+lengthdir_y(42,image_angle)
	repeat(6)
	{
	var random_val___ = percentage_k(50)
		if random_val___ = 1
		{
		create_buble_effect(0.8,image_angle+irandom_range(-12,12),image_angle,image_xscale*irandom_range(1,150)/5,0.05,0.05,$FF70FFDC,$FF4CE083,2,$FF5A8539,xx_,yy_,player.depth-1,0,false,false)
		}
	}
	
	var max_length = 400
	for(var i = 0; i < max_length; i ++)
	{
		for(var ii = 42; ii < 56; ii++)
		{
		var x2 = x + lengthdir_x(i,image_angle+ii)
		var y2 = y + lengthdir_y(i,image_angle+ii)

			
			if collision_point(x2,y2,player,true,0)
			{
				if player.hurt_cooltime = 0 && global.hp > 0 && player.dash_attack = 0 && player.spin = 0
				{
				global.movement_speed = player.image_xscale
				player.vspeed = 3
				player.hurt = 1
				player.hurt_cooltime = 3
				hp_minus_for_player(452,player.id)
					if global.show_credits = 0
					{
					var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
					audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
					}
				}
			break;
			break;
			}
		}
	}
}








if hp <= 0
{
	if global.achievement[15] != 1
	{
	var _achievement = instance_create_depth(x,y,depth,bg_achievement)
	_achievement.text = string(global.achievement_name[15])
	_achievement.icon_num = 4
	global.achievement[15] = 1
	}
	
player.x += (3545 - player.x)*0.3
global.boss_target = -4
global.playing_scene = 1
global.never_move = 1
hp = 0
dead_scene ++
patturn = 0


cannot_step = 1

if dead_scene > 120
{
gravity = 0.15
}

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

	dead_scene = 0
	var test_mob = instance_create_depth(xstart-1300,ystart+200,player.depth+3,mob_spawn_here)
	test_mob.t_y = -900
	test_mob.mob_type = obj_worm
	test_mob.xscale = 1.1
	test_mob.yscale = 1.1
	test_mob.mob_var = -6
	
	give_item(0,10)
	
	var random_drop_ = percentage_k(50)
	if random_drop_ = 1
	{
	give_item(0,0)
	}
	else
	{
	give_item(0,1)
	}

	global.gold += 14000
	global.left_time += 6*global.time_plusment
	for(var i = 0; i < 32; i++)
	{
	instance_destroy(worm_body[i])
	}
	instance_destroy(wall1)
	instance_destroy(_light_)
	instance_destroy()
	}
}
else
{
	if scene__ > 0 && activated != 2
	{
		if global.show_credits = 0
		{
		obj_camera.t_x = xstart
		obj_camera.t_y = y
		}
	
		if !instance_exists(_light_)
		{
		total_died_from_here ++
		_light_ = instance_create_depth(x,y,depth,obj_light)
		_light_.p_id = id
		_light_.alpha = 0.4
		_light_.sprite_index = sprite64
		_light_.image_blend = $FF4E50E5
		_light_.light_type = 0
		_light_.image_xscale = 10
		_light_.image_yscale = 10
	
		_light_1 = instance_create_depth(x,y,depth,obj_light)
		_light_1.p_id = id
		_light_1.alpha = 0.2
		_light_1.sprite_index = sprite64
		_light_1.image_blend = $FF4EE5A3
		_light_1.light_type = 0
		_light_1.image_xscale = 10
		_light_1.image_yscale = 10
		}
	}
	else
	{
		if activated = 2
		{
			if global.show_credits = 0
			{
			global.boss_target = id
			global.boss_name = "하수도 속의 거대 쌉벌레두"
				if global.none_wakgood_mode = true
				{
				global.boss_name = "하수도 속의 거대 벌레"
				}
			obj_camera.t_x = 3300
			obj_camera.t_y = player.y
			}
	
			if saved_real_x = -4
			{
			global.save_point_x = xstart-1000
			global.save_point_y = player.y
			saved_real_x = xstart
			saved_real_y = y
			}
		}
	}


	if activated = 1
	{
		if !instance_exists(wall1)
		{

		if global.show_credits <= 0
		{
		np_setpresence_more("", "보스전", false);
		np_setpresence("하수도 속의 거대 쌉벌레두","", "spr_icon325", "");
		}
		
		wall1 = instance_create_depth(xstart-1300,ystart-1200,player.depth+3,obj_floor_tile3)
		wall1.image_yscale = 32
		instance_destroy(normal_mob)
		instance_destroy(simhae_doo_bullet)
		}
		
		if !audio_is_playing(quake_sfx) && global.show_credits = 0
		{
		var sfx = audio_play_sound(quake_sfx,0,0)
		audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
		}
		
	player.guarding = 2
	y -= scene__*4
	x -= scene__*0.6
		if scene__ > 0.3
		{
			if obj_camera.tv_x < 1280*1.1
			{
			obj_camera.tv_x += 1280*0.002
			obj_camera.tv_y += 720*0.002
			}
		}
	image_angle = point_direction(x,y,player.x,player.y)
	view_shake(0.1,0.1,1)
	scene__ += 0.0032
	image_blend = merge_color(c_black,c_white,scene__)
	global.playing_scene = 1
	global.never_move = 1
	global.room_brightness += 0.0012

	
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
		
		if skip_boss_apearence = 1 && keyboard_check_pressed(global.skip_key)
		{
			repeat(900)
			{
			scene__ += 0.0032
			global.room_brightness += 0.0012
			y -= scene__*4
			x -= scene__*0.6
			alpha -= 0.01
				if scene__ >= 1
				{
				global.b_alpha = 1.2
				break;
				}
			}
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
		
		if instance_exists(first_meet_blocking)
		{
		instance_destroy(first_meet_blocking)
		}
		

		if patturn = 0
		{
			if player.attack_laser_sec = 0 && player.attack_laser = 0 && player.suicide = 0 && player.sting_attack = 0
			{
			obj_camera.tv_x = 1280*1.1
			obj_camera.tv_y = 720*1.1
			}
		cannot_step = 0
		
			if abs(y - saved_real_y) > 32
			{
			image_angle += (point_direction(x,y,x,0) - image_angle)*0.03
			}
			else
			{
			image_angle += (point_direction(x,y,player.x,player.y) - image_angle)*0.03
			}
		
			if abs(y - saved_real_y) > 3
			{
			view_shake(0.1,0.1,1)
			x += (saved_real_x-100 - x)*0.04
			y += (saved_real_y - y)*0.04
			}
	
			if global.hp > 0
			{
			timer += 1+sign(global.replayed)
			}
			
			
			var cal_ = (hp/max_hp)*1.2
	
			if cal_ < 0.7
			{
			cal_ = 0.7
			}
	
			if cal_ > 1
			{
			cal_ = 1
			}

			if timer > 250*cal_
			{
			var random_patturn = choose(1,1,2,2,3,4,4)
			
			if global.replayed > 0
			{
			random_patturn = choose(1,1,2,2,3,4,4,6,6,7,7,7)
			}
			
			if hp < 3000
			{
			random_patturn = choose(1,1,2,2,3,4,5,5,6,6,6)
				if global.replayed > 0
				{
				random_patturn = choose(1,1,2,2,3,4,4,6,6,7,7,7)
				}
			}
			
				if random_patturn != b_patturn
				{
				patturn = random_patturn
				b_patturn = random_patturn
				}
				else
				{
					repeat(99)
					{
					random_patturn = choose(1,1,2,2,3,4,4)
					
						if global.replayed > 0
						{
						random_patturn = choose(1,1,2,2,3,4,4,6,6,7,7,7)
						}
			
					
						if hp < 3000
						{
						random_patturn = choose(1,1,2,2,3,4,5,5)
						
							if global.replayed > 0
							{
							random_patturn = choose(1,1,2,2,3,4,4,6,6,7,7,7)
							}
						}
					
						if random_patturn != b_patturn
						{
						patturn = random_patturn
						b_patturn = random_patturn
						break;
						}
					}
				}
			timer = 0
			}
		}
		
		
		
		if patturn >= 1 && patturn < 2
		{
			if player.attack_laser_sec = 0 && player.attack_laser = 0 && player.suicide = 0 && player.sting_attack = 0
			{
			obj_camera.tv_x = 1280*1.1
			obj_camera.tv_y = 720*1.1
			}
		patturn += 0.001
			
			if patturn < 1.3
			{
			image_angle += (point_direction(x,y,x,0) - image_angle)*0.1
			cannot_step = 1
			y += (-400 - y)*0.01
			}
			
			if patturn = 1.3
			{
			cannot_step = 0
			t_y = 2050
			t_x = 4307
			image_angle = 300
				for(var i = 0; i < 32; i++)
				{
				worm_body[i].x = 4307
				worm_body[i].y = 2050+i*11
				}
			x = 4307
			y = 2050
			}
			
			if patturn >= 1.3
			{
				if abs(x - player.x) < 600
				{
					if breathing = 0 && global.show_credits = 0
					{
					breathing = 1
					var sfx = audio_play_sound(fire_sfx,0,0)
					audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
					audio_sound_pitch(sfx,0.6)
					}
				
					if abs(x - 3419) < 200
					{
					image_angle -= patturn*1.3
					}
				}
			t_x -= 14
			}
			
			if patturn >= 1.7
			{
			breathing = 0
			t_x = -4
			t_y = -4
			x = xstart
			y = ystart+500
				for(var i = 0; i < 32; i++)
				{
				worm_body[i].x = xstart+i*10
				worm_body[i].y = ystart+500
				}
			patturn = 0
			}
		}
		
		
		if patturn >= 2 && patturn < 3
		{
			if player.attack_laser_sec = 0 && player.attack_laser = 0 && player.suicide = 0 && player.sting_attack = 0
			{
			obj_camera.tv_x = 1280*1.1
			obj_camera.tv_y = 720*1.1
			}
		patturn += 0.001
			
			if patturn < 2.3
			{
			image_angle += (point_direction(x,y,x,y+100) - image_angle)*0.1
			cannot_step = 1
			x += (xstart+100 - x)*0.01
			y += (room_height+1000 - y)*0.01
			}
			
			if patturn = 2.3
			{
			cannot_step = 0
			image_angle = 300
				for(var i = 0; i < 32; i++)
				{
				worm_body[i].x = player.x
				worm_body[i].y = room_height+300
				}
			x = player.x
			y = room_height+300
			t_y = room_height+300
			view_shake(5,8,1)
			}
			
			if patturn = 2.24
			{
			var dust = instance_create_depth(player.x,player.y+32,player.depth-1,obj_dust_ef)
			dust.image_xscale = -1.5
			
			var dust = instance_create_depth(player.x,player.y+32,player.depth-1,obj_dust_ef)
			dust.image_xscale = 1.5
			}
			
			if patturn = 2.25
			{
			var dust = instance_create_depth(player.x,player.y+32,player.depth-1,obj_dust_ef)
			dust.image_xscale = -1.6
			
			var dust = instance_create_depth(player.x,player.y+32,player.depth-1,obj_dust_ef)
			dust.image_xscale = 1.6
			}
			
			if patturn = 2.26
			{
			var dust = instance_create_depth(player.x,player.y+32,player.depth-1,obj_dust_ef)
			dust.image_xscale = -1.75
			
			var dust = instance_create_depth(player.x,player.y+32,player.depth-1,obj_dust_ef)
			dust.image_xscale = 1.75
			}
			
			if patturn = 2.27
			{
			var dust = instance_create_depth(player.x,player.y+32,player.depth-1,obj_dust_ef)
			dust.image_xscale = -1.9
			
			var dust = instance_create_depth(player.x,player.y+32,player.depth-1,obj_dust_ef)
			dust.image_xscale = 1.9
			}
			
			if patturn = 2.28
			{
			var dust = instance_create_depth(player.x,player.y+32,player.depth-1,obj_dust_ef)
			dust.image_xscale = -2
			
			var dust = instance_create_depth(player.x,player.y+32,player.depth-1,obj_dust_ef)
			dust.image_xscale = 2
			}
			
			
			if patturn >= 2.3
			{
			view_shake(0.1,0.1,1)
			var a___ = instance_create_depth(x,y,depth,rage_mode_knockback_attacked)
			a___.image_xscale = 3.5
			a___.image_yscale = 3.5
			
			image_angle += (point_direction(x,y,x,y-100) - image_angle)*0.1
			
				if point_distance(x,y,player.x,player.y) <= 200 && y < room_height-100
				{
				var bullet__ = instance_create_depth(x+irandom_range(-120,120),y-150+irandom_range(-120,120),player.depth-1,simhae_doo_bullet)
				bullet__.bullet_speed = 0.7
				bullet__.attack_type = 0
				bullet__._color_ = $FF75F2FF
				}
			t_y -= 20
			}

			
			
			if patturn >= 2.7
			{
			t_x = -4
			t_y = -4
			x = xstart
			y = ystart+500
				for(var i = 0; i < 32; i++)
				{
				worm_body[i].x = xstart+i*10
				worm_body[i].y = ystart+500
				}
			patturn = 0
			}
		}

	
	
		if patturn >= 3 && patturn < 4
		{
			if patturn = 3.15
			{
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
			
			if patturn > 3.15
			{
			image_angle += (point_direction(x,y,x-30,y-30)+360 - image_angle)*0.1
			}
			else
			{
			image_angle += (point_direction(x,y,player.x,player.y) - image_angle)*0.03
			}
			
			if player.attack_laser_sec = 0 && player.attack_laser = 0 && player.suicide = 0 && player.sting_attack = 0
			{
			obj_camera.tv_x = 1280*1.1
			obj_camera.tv_y = 720*1.1
			}
		patturn += 0.001
			
			if patturn < 3.2
			{
			_light_.alpha += (1 - _light_.alpha)*0.07
			}
			
			if patturn > 3.2
			{
			bullet_time ++
				if start_cre_dir < 360 && bullet_time%6 = 0
				{
				var xx = x+lengthdir_x(128,start_cre_dir)
				var yy = y+lengthdir_y(128,start_cre_dir)
				var bullet__ = instance_create_depth(xx,yy-100,player.depth-1,simhae_doo_bullet)
				bullet__.bullet_speed = 0.7
				bullet__.attack_type = 0
				bullet__._color_ = $FF75F2FF
				start_cre_dir += 15
				}
				else
				{
				image_angle += (point_direction(x,y,player.x,player.y)+360 - image_angle)*0.1
				}
			}
			
			if patturn > 3.5
			{
			bullet_time = 0
			start_cre_dir = 0
			patturn = 0
			timer = 300
			}
		}
		
		
		if patturn >= 4 && patturn < 5
		{
			if player.attack_laser_sec = 0 && player.attack_laser = 0 && player.suicide = 0 && player.sting_attack = 0
			{
			obj_camera.tv_x = 1280*1.1
			obj_camera.tv_y = 720*1.1
			}
		patturn += 0.001
			
			if patturn < 4.05
			{
				if __sfx = 0 && global.show_credits = 0
				{
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
		
				var sfx = audio_play_sound(laser_skill_ready,0,0)
				audio_sound_gain(sfx,0.15*global.master_volume*2*global.sfx_volume,0)
				__sfx = 1
				}
			
			_light_.alpha += (1 - _light_.alpha)*0.07
			}
			
			if patturn > 4.1
			{
				if !instance_exists(_aaa) && patturn < 4.13
				{
				_aaa = instance_create_depth(x,y+32,depth-20,effect_special_skill_sec_attacked)
				_aaa.image_angle = 90+bullet_time+300
				_aaa.direction = 90+bullet_time+300
				_aaa.color_1 = $FFCCFFF2
				_aaa.color_2 = $FF5A8539
				_aaa.color_3 = $FF4CE083
				_aaa.maximum_size = 0.7

			
				view_shake(11,11,1)
				
					if global.show_credits = 0
					{
					var sfx = audio_play_sound(laser_sfx_sec,0,0)
					audio_sound_gain(sfx,0.06*global.master_volume*2*global.sfx_volume,0)
					}
				}
			}
			
			if instance_exists(_aaa)
			{
			bullet_time --
			_aaa.image_angle = 90+bullet_time+300+150
			_aaa.direction = 90+bullet_time+300+150
			}
			
			if patturn > 4.2
			{
				if !instance_exists(_aaa)
				{
				image_angle += (90+150 - image_angle)*0.1
				}
			}
			else
			{
			image_angle += (90+bullet_time+180 - image_angle)*0.1
			}
			
			if patturn > 4.3
			{
			bullet_time = 0
			start_cre_dir = 0
			patturn = 0
			timer = 300
			__sfx = 0
			}
		}
		
		
		
		if patturn >= 5 && patturn < 6
		{
			if player.attack_laser_sec = 0 && player.attack_laser = 0 && player.suicide = 0 && player.sting_attack = 0
			{
			obj_camera.tv_x = 1280*1.1
			obj_camera.tv_y = 720*1.1
			}
		patturn += 0.001
			
			if patturn < 5.3
			{
			image_angle += (point_direction(x,y,x,0) - image_angle)*0.1
			cannot_step = 1
			y += (-400 - y)*0.01
			}
			
			if patturn = 5.3
			{
			cannot_step = 0
			t_y = 2050
			t_x = 4307
			image_angle = 300
				for(var i = 0; i < 32; i++)
				{
				worm_body[i].x = 4307
				worm_body[i].y = 2050+i*11
				}
			x = 4307
			y = 2050
			}
			
			if patturn = 5.3
			{
			w_alpha = 3
			saved_x = player.x
			}
			
			if patturn >= 5.3
			{
			w_alpha += (-0.1 - w_alpha)*0.1
			}

			if patturn = 5.4
			{
			instance_create_depth(saved_x,2329,depth-1,effect_special_skill_attacked)
				repeat(irandom_range(2,5))
				{
				var bullet__ = instance_create_depth(saved_x,2329-150+irandom_range(-120,120),player.depth-1,simhae_doo_bullet)
				bullet__.bullet_speed = 0.7
				bullet__.attack_type = 0
				bullet__._color_ = $FF75F2FF
				}
			}
			
			if patturn = 5.45
			{
			w_alpha = 3
			saved_x = player.x
			}
			
			if patturn = 5.55
			{
			instance_create_depth(saved_x,2329,depth-1,effect_special_skill_attacked)
			
				repeat(irandom_range(2,5))
				{
				var bullet__ = instance_create_depth(saved_x,2329-150+irandom_range(-120,120),player.depth-1,simhae_doo_bullet)
				bullet__.bullet_speed = 0.7
				bullet__.attack_type = 0
				bullet__._color_ = $FF75F2FF
				}
			}
			
			if patturn >= 5.75
			{
			breathing = 0
			t_x = -4
			t_y = -4
			x = xstart
			y = ystart+500
				for(var i = 0; i < 32; i++)
				{
				worm_body[i].x = xstart+i*10
				worm_body[i].y = ystart+500
				}
			patturn = 0
			}
		}
		
		
		
		
		
		
		if patturn >= 6 && patturn < 7
		{
		patturn += 0.001
		obj_camera.tv_x = 1280*1.1
		obj_camera.tv_y = 720*1.1
			
			if patturn = 6.01
			{
				for(var i = 0; i < 360; i += 20)
				{
				var xx = x+lengthdir_x(48,i)
				var yy = y+lengthdir_y(48,i)
				bullet__ = instance_create_depth(xx,yy-100,player.depth-1,simhae_doo_bullet)
				bullet__.bullet_speed = 0.2
				bullet__.attack_type = 0
				bullet__._color_ = $FF75F2FF
				}
			}
			
			if patturn = 6.11
			{
			bullet__creator = instance_create_depth(x,y-100,player.depth-1,simhae_doo_bullet)
			bullet__creator.bullet_speed = 0.01
			bullet__creator.attack_type = 0
			bullet__creator._color_ = $FF75F2FF
			
				for(var i = 0; i < 360; i += 60)
				{
				var xx = x+lengthdir_x(16,i)
				var yy = y+lengthdir_y(16,i)
				var bullet__ = instance_create_depth(xx,yy-100,player.depth-1,simhae_doo_bullet)
				bullet__.bullet_speed = 0.01
				bullet__.attack_type = 0
				bullet__._color_ = $FF75F2FF
				}
			}
			
			if patturn >= 6.2
			{
			bullet_time ++
				if instance_exists(bullet__creator) && bullet_time%15 = 0
				{
					repeat(choose(1,2))
					{
					var xx = bullet__creator.x+irandom_range(-32,32)
					var yy = bullet__creator.y+irandom_range(-32,32)
				
					var bullet__ = instance_create_depth(xx,yy-100,player.depth-1,simhae_doo_bullet)
					bullet__.bullet_speed = 0.7
					bullet__.attack_type = 0
					bullet__._color_ = $FF75F2FF
					}
				}
			}
			
			if instance_exists(bullet__creator)
			{
			var xx_ = bullet__creator.x+choose(-4,4)
			var yy_ = bullet__creator.y+choose(-4,4)
				repeat(2)
				{
					var random_val___ = percentage_k(5+global.graphics_for_code*7)
					if random_val___ = 1
					{
					create_buble_effect(1,irandom_range(0,359),0,choose(-1)*irandom_range(1,20)/7,0.1,0.1,$FF3E2D24,$FF473021,2,$FF513524,xx_,yy_,depth+10,0,false,false)
					}
				}
	
				var random_val___ = percentage_k(global.graphics_for_code*3)
				if random_val___ = 1
				{
				var random_val___2 = percentage_k(1)
				create_buble_effect(0.3,irandom_range(0,359),0,choose(-1)*irandom_range(1,20)/7,0.07,0.07,$FF62D1F7,$FF6C60CD,2,$FF191919,xx_,yy_,depth-random_val___2,1,false,false)
				}
			}
			else
			{
				if patturn >= 6.25
				{
				bullet__creator = -4
				patturn = 0
				bullet_time = 0
				}
			}
		}
		
		
		
		
		if patturn >= 7 && patturn < 8
		{
		bullet_time ++
		obj_camera.tv_x = 1280*1.1
		obj_camera.tv_y = 720*1.1
		
			if bullet_time = 41
			{
			random_empty_sword = irandom_range(0,8)
			sword_pattern_dir = choose(-1,1)
			}
		
			if bullet_time%5 = 0 && bullet_time <= 180 && bullet_time >= 60
			{
				if sword_pattern_dir = 1 && random_empty_sword != sword_xpos
				{
				var falling_s = instance_create_depth(2700+sword_xpos*64,y-128,depth-10,falling_sword)
				falling_s.image_index = 0
				}
			
				if sword_pattern_dir = -1 && random_empty_sword != sword_xpos
				{
				var falling_s = instance_create_depth(x-64-sword_xpos*64,y-128,depth-10,falling_sword)
				falling_s.image_index = 0
				}
			sword_xpos ++
			}
			
			if bullet_time > 300
			{
			sword_xpos = 0
			bullet_time = 40
			repeat_sword_pattern ++
			
				if repeat_sword_pattern <= 2
				{
				patturn = 7
				}
				else
				{
				patturn = 0
				repeat_sword_pattern = 0
				}
			}
		}
	}
/////////////////////////////////////////////////////////////////////////////////////////////////////
}

if !instance_exists(obj_worm_body)
{
event_user(0)
}
