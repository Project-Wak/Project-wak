/// @description Insert description here
// You can write your code in this editor
image_blend = c_white


if bgm != -4
{
audio_sound_gain(bgm,0.1*global.master_volume*global.bgm_volume*global.certain_music_volume*scene__,0)
}

if hp <= 0
{
	if global.achievement[14] != 1
	{
	var _achievement = instance_create_depth(x,y,depth,bg_achievement)
	_achievement.text = string(global.achievement_name[14])
	_achievement.icon_num = 4
	global.achievement[14] = 1
	}
	
global.boss_target = -4
global.playing_scene = 1
global.never_move = 1
hp = 0
dead_scene ++
patturn = 0



	if dead_scene < 200
	{
	obj_camera.t_x = left_eye.x
	obj_camera.t_y = left_eye.y
	}

	if dead_scene < 130
	{
	left_eye.cannot_step = 0
	left_eye.vspeed = 0
	left_eye.hspeed = 0
	}
	
	if dead_scene < 270
	{
	cannot_step = 0
	vspeed = 0
	hspeed = 0
	}
	
	
	
	if dead_scene = 60
	{
	var sfx = audio_play_sound(mob_faint,0,0)
	audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
	///////////////////////////////////////////
	repeat(irandom_range(14,17))
	{
	create_buble_effect(1.2,irandom_range(0,359),0,choose(-1)*irandom_range(1,100)/7,0.08,0.08,$FF00D2FE,$FF076BFE,1.5,$FF737272,left_eye.x,left_eye.y,-depth-32,0,true,false)
	}
	
	repeat(irandom_range(7,10))
	{
	create_buble_effect(1.45,irandom_range(0,359),0,choose(-1)*irandom_range(1,100)/7,0.07,0.07,c_white,$FF00D2FE,1.5,$FF342F32,left_eye.x,left_eye.y,-depth-32,1,true,false)
	}
	
	view_shake(choose(0,0,0,0,1),irandom_range(10,15),choose(0,1))
	var y_set = y+irandom_range(-16,16)
	repeat(8)
	{
	var _ef = instance_create_depth(x,y_set,depth-1,effect_spark)
	_ef.hspeed = irandom_range(5,20)*choose(-1,1)
	_ef.vspeed = irandom_range(-8,-3)
	}
	
	var a___ = audio_play_sound(bomb_sfx,0,0)
	audio_sound_gain(a___,0.04*global.master_volume*2*global.sfx_volume,0)
	}
	
	if dead_scene > 80
	{
	var xx_ = left_eye.x
	var yy_ = left_eye.y

		var random_val___ = percentage_k(5)
		if random_val___ = 1
		{
		create_buble_effect(1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.1,0.1,$FF47BBFF,$FF4C81FF,2,$FF534CFF,xx_,yy_,depth-32,0,false,false)
		}
	
		var random_val___ = percentage_k(10)
		if random_val___ = 1
		{
		create_buble_effect(1.1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.07,0.07,$FF62D1F7,$FF6C60CD,2,$FF191919,xx_,yy_,depth-32,1,false,false)
		}
	

		var random_val___ = percentage_k(5)
		if random_val___ = 1
		{
		var random_val___2 = percentage_k(5)
		create_buble_effect(1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.1,0.1,$FF47BBFF,$FF4C81FF,2,$FF534CFF,xx_,yy_,depth-32,0,false,false)
		}

	
		var random_val___ = percentage_k(10)
		if random_val___ = 1
		{
		create_buble_effect(1.1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.07,0.07,$FF62D1F7,$FF6C60CD,2,$FF191919,xx_,yy_,depth-32,1,false,false)
		}
	}
	
	
	
	
	if dead_scene = 220
	{
	var sfx = audio_play_sound(mob_faint,0,0)
	audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
	///////////////////////////////////////////
	repeat(irandom_range(14,17))
	{
	create_buble_effect(1.2,irandom_range(0,359),0,choose(-1)*irandom_range(1,100)/7,0.08,0.08,$FF00D2FE,$FF076BFE,1.5,$FF737272,x,y,-depth-32,0,true,false)
	}
	
	repeat(irandom_range(7,10))
	{
	create_buble_effect(1.45,irandom_range(0,359),0,choose(-1)*irandom_range(1,100)/7,0.07,0.07,c_white,$FF00D2FE,1.5,$FF342F32,x,y,-depth-32,1,true,false)
	}
	
	view_shake(choose(0,0,0,0,1),irandom_range(10,15),choose(0,1))
	var y_set = y+irandom_range(-16,16)
	repeat(8)
	{
	var _ef = instance_create_depth(x,y_set,depth-1,effect_spark)
	_ef.hspeed = irandom_range(5,20)*choose(-1,1)
	_ef.vspeed = irandom_range(-8,-3)
	}
	
	var a___ = audio_play_sound(bomb_sfx,0,0)
	audio_sound_gain(a___,0.04*global.master_volume*2*global.sfx_volume,0)
	}
	
	if dead_scene > 200
	{
	obj_camera.t_x = x
	obj_camera.t_y = y
	var xx_ = x
	var yy_ = y

		var random_val___ = percentage_k(5)
		if random_val___ = 1
		{
		create_buble_effect(1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.1,0.1,$FF47BBFF,$FF4C81FF,2,$FF534CFF,xx_,yy_,depth-32,0,false,false)
		}
	
		var random_val___ = percentage_k(10)
		if random_val___ = 1
		{
		create_buble_effect(1.1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.07,0.07,$FF62D1F7,$FF6C60CD,2,$FF191919,xx_,yy_,depth-32,1,false,false)
		}
	

		var random_val___ = percentage_k(5)
		if random_val___ = 1
		{
		var random_val___2 = percentage_k(5)
		create_buble_effect(1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.1,0.1,$FF47BBFF,$FF4C81FF,2,$FF534CFF,xx_,yy_,depth-32,0,false,false)
		}

	
		var random_val___ = percentage_k(10)
		if random_val___ = 1
		{
		create_buble_effect(1.1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.07,0.07,$FF62D1F7,$FF6C60CD,2,$FF191919,xx_,yy_,depth-32,1,false,false)
		}
	}
	
	
	if dead_scene > 150
	{
	left_eye.gravity = 0.3
	}
	
	if dead_scene > 200
	{
	left_eye.cannot_step = 1
	}
	
	if dead_scene > 300
	{
	gravity = 0.3
	}
	
	if dead_scene > 350
	{
	cannot_step = 1
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
	
	repeat(2)
	{
	var _ef = instance_create_depth(left_eye.x+irandom_range(-100,100),left_eye.y+irandom_range(-60,100),left_eye.depth-1,effect_spark)
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
		
		repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
		{
		randomize()
		var random_target = left_eye
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
	var test_mob = instance_create_depth(6000,ystart+280,player.depth+3,mob_spawn_here)
	test_mob.t_y = -900
	test_mob.mob_type = obj_twin_eye
	test_mob.xscale = 1.1
	test_mob.yscale = 1.1
	test_mob.mob_var = -6
	
	give_item(0,9)
	
	var random_drop_ = percentage_k(50)
	if random_drop_ = 1
	{
	give_item(0,3)
	}
	else
	{
	give_item(0,4)
	}

	obj_camera.t_x = -4
	obj_camera.t_y = -4
	global.gold += 12000
	global.left_time += 6*global.time_plusment
	instance_destroy(_light_)
	instance_destroy(_light_1)
	instance_destroy(left_eye)
	instance_destroy()
	}
}
else
{
	if instance_exists(_light_)
	{
	_light_.x = left_eye.x
	_light_.y = left_eye.y
	_light_.alpha = (1.5-left_eye.alpha)*0.2
	
	_light_1.x = x
	_light_1.y = y
	_light_1.alpha = (1.5-alpha)*0.2
	}

	if cannot_step = 1
	{
	depth = 1000
	image_xscale += (1.3 - image_xscale)*0.05
	image_yscale += (1.3 - image_yscale)*0.05
	alpha += (1 - alpha)*0.1
	}
	else
	{
	depth = player.depth-1
	image_xscale += (1.5 - image_xscale)*0.05
	image_yscale += (1.5 - image_yscale)*0.05
	alpha += (0 - alpha)*0.1
	}
	
	if instance_exists(left_eye)
	{
		if left_eye.cannot_step = 0
		{
		left_eye.depth = player.depth-1
		left_eye.image_xscale += (1.5 - left_eye.image_xscale)*0.1
		left_eye.image_yscale += (1.5 - left_eye.image_yscale)*0.1
		left_eye.alpha += (0 - left_eye.alpha)*0.1
		}
		else
		{
		left_eye.depth = 1000
		left_eye.image_xscale += (1.3 - left_eye.image_xscale)*0.1
		left_eye.image_yscale += (1.3 - left_eye.image_yscale)*0.1
		left_eye.alpha += (1 - left_eye.alpha)*0.1
		}
	}

	if scene__ > 0 && activated != 2
	{
		if global.show_credits = 0
		{
			if player.attack_laser_sec = 0 && player.attack_laser = 0 && player.suicide = 0 && player.sting_attack = 0
			{
			obj_camera.tv_x = 1280*0.9
			obj_camera.tv_y = 720*0.9
			}
		obj_camera.t_x = xstart
		obj_camera.t_y = y+180
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
			global.boss_name = "객관안과 스킵안"
			
			if global.none_wakgood_mode = true
			{
			global.boss_name = "연구소의 감시자 - 쌍둥이 눈"
			}
			
				if player.attack_laser_sec = 0 && player.attack_laser = 0 && player.suicide = 0 && player.sting_attack = 0
				{
				obj_camera.tv_x = 1280
				obj_camera.tv_y = 720
				}
			obj_camera.t_x = xstart
			obj_camera.t_y = player.y
			}
	
			if saved_real_x = -4
			{
			global.save_point_x = xstart-400
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
			np_setpresence("객관안과 스킵안","", "spr_icon325", "");
			}
			
		wall1 = instance_create_depth(xstart-650,ystart-1200,player.depth+3,obj_floor_tile3)
		wall1.image_yscale = 32

		wall2 = instance_create_depth(xstart+650,ystart-1200,player.depth+3,obj_floor_tile3)
		wall2.image_yscale = 32
		wall2.image_xscale = -1
		
		wall3 = instance_create_depth(6048,2304,player.depth+3,obj_floor_tile1)
		wall3.image_xscale = 3.25
		instance_destroy(normal_mob)
		}
		
		if !audio_is_playing(quake_sfx) && global.show_credits = 0
		{
		var sfx = audio_play_sound(quake_sfx,0,0)
		audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
		}
	player.guarding = 2

	y -= scene__*(9-4*(scene__/0.6))
	if instance_exists(left_eye)
	{
	left_eye.y -= scene__*(8-2.5*(scene__/0.6))
	}
	
	view_shake(0.1,0.1,1)
	scene__ += 0.0032
	

		if scene__ > 0.7
		{
		image_angle += (0 - image_angle)*0.1
		left_eye.image_angle += (0 - left_eye.image_angle)*0.1
		
			if cutscene = 0
			{
			cutscene ++
			var sfx = audio_play_sound(mob_faint,0,0)
			audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
				
			var sfx = audio_play_sound(down_attack_sfx,0,0)
			audio_sound_gain(sfx,0.22*global.master_volume*2*global.sfx_volume,0)
				
			var a___ = audio_play_sound(bomb_sfx,0,0)
			audio_sound_gain(a___,0.05*global.master_volume*2*global.sfx_volume,0)
				
			var sfx = audio_play_sound(gun_sfx_single,0,0)
			audio_sound_gain(sfx,0.22*global.master_volume*2*global.sfx_volume,0)
			view_shake(11,15,5)
			image_angle -= 200
				for(var i = -4; i <= 4; i++)
				{
				var _bullet__ = instance_create_depth(x,y,depth+1,obj_bullet)
				_bullet__.bullet_speed = 14;
				_bullet__.direction = i*6+point_direction(x,y,player.x+sign(floor(global.movement_speed)),player.y)
				}
			}
		
			if scene__ > 0.73
			{
				if cutscene = 1
				{
				cutscene ++
				var sfx = audio_play_sound(mob_faint,0,0)
				audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
				
				var sfx = audio_play_sound(down_attack_sfx,0,0)
				audio_sound_gain(sfx,0.22*global.master_volume*2*global.sfx_volume,0)
				
				var a___ = audio_play_sound(bomb_sfx,0,0)
				audio_sound_gain(a___,0.05*global.master_volume*2*global.sfx_volume,0)
				
				var sfx = audio_play_sound(gun_sfx_single,0,0)
				audio_sound_gain(sfx,0.22*global.master_volume*2*global.sfx_volume,0)
				view_shake(11,15,5)
			
				left_eye.image_angle += 200
					for(var i = -4; i <= 4; i++)
					{
					var _bullet__ = instance_create_depth(left_eye.x,left_eye.y,depth+1,obj_bullet)
					_bullet__.bullet_speed = 14;
					_bullet__.direction = i*6+point_direction(left_eye.x,left_eye.y,player.x+sign(floor(global.movement_speed)),player.y)
					}
				}
			}
		}
		else
		{
		cutscene = 0
		}
		
	image_blend = merge_color(c_black,c_white,scene__)
	global.playing_scene = 1
	global.never_move = 1
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
			alpha -= 0.01
			scene__ += 0.0032
			y -= scene__*(9-4*(scene__/0.6))
				if instance_exists(left_eye)
				{
				left_eye.y -= scene__*(8-2.5*(scene__/0.6))
				}

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

		if patturn = 0
		{
			if hp > 0
			{
			x += (player.x-350+irandom_range(-30,30) - x)*0.03
			y += (player.y-400+irandom_range(-30,30) - y)*0.03
			
			image_angle += (point_direction(x,y,player.x,player.y) - image_angle)*0.1
			left_eye.image_angle += (point_direction(x,y,player.x,player.y) - left_eye.image_angle)*0.1
				
			left_eye.x += (player.x+350+irandom_range(-30,30) - left_eye.x)*0.03
			left_eye.y += (player.y-400+irandom_range(-30,30) - left_eye.y)*0.03
			
			laser_alpha += (-1 - laser_alpha)*0.1
			obj_twin_eye_another.laser_alpha += (-1 - obj_twin_eye_another.laser_alpha)*0.1
			}
	
		left_eye.cannot_step = 0
		cannot_step = 0
	
			if global.hp > 0
			{
			timer += sign(global.replayed)+1
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
	
			if timer > 200*cal_
			{
			patturn = choose(1,1,1,2,2,2,3,3,4,4,5,5)
			timer = 0
			attackable_time ++
			
				if attackable_time > 2
				{
				patturn = choose(1,2)
				}
			}
		}
		
		if patturn < 3 && patturn >= 1
		{
		attackable_time = 0
		}
		
		if patturn >= 1 && patturn < 2
		{
		left_eye.image_angle -= left_eye.hspeed
		cannot_step = 1
		left_eye.cannot_step = 0
			with(obj_twin_eye)
			{
				if image_index = 0
				{
				x += (player.x-350+irandom_range(-30,30) - x)*0.1
				y += (player.y-400+irandom_range(-30,30) - y)*0.1
				}
				
				if patturn >= 1 && patturn < 1.1
				{
				patturn += 0.001
				var near_ = instance_nearest(player.x,player.y,obj_floor_tile3)
					if abs(near_.x - player.x) > 170
					{
					left_eye.x += (player.x - left_eye.x)*0.1
					}
				left_eye.y += (player.y-500 - left_eye.y)*0.1
				}
				
				if patturn = 1.1
				{
				left_eye.gravity = 0.3
					if left_eye.vspeed < 4
					{
					left_eye.vspeed = 10
					}
					
					if left_eye.check_on_floor = 1
					{
					left_eye.gravity = 0
					left_eye.vspeed = 0
					patturn = 1.2
					
					var a___ = instance_create_depth(left_eye.x,left_eye.y+60,depth,rage_mode_knockback_attacked)
					a___.image_xscale = 10
					a___.image_yscale = 1
					
					var a___ = instance_create_depth(left_eye.x,left_eye.y,depth,rage_mode_knockback_attacked)
					a___.image_xscale = 3.5
					a___.image_yscale = 3.5

					var effect_ = instance_create_depth(left_eye.x,left_eye.y+70,depth+1,down_effect)
					effect_.t_image_yscale = 0.4*3
					effect_.t_image_xscale = 0.05*3
					effect_.received = 0
		
					repeat(8)
					{
					var _ef = instance_create_depth(left_eye.x,left_eye.y+60,depth-1,effect_spark)
					_ef.hspeed = irandom_range(-20,20)
					_ef.vspeed = irandom_range(-4,2)
			
						repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
						{
						randomize()
						var random_target = left_eye
						var dust = instance_create_depth(random_target.x+irandom_range(-5,5),random_target.y+irandom_range(-5,5),random_target.depth-1,pepsi_effect_received)
						var scale = irandom_range(20,40)/50
						dust.image_xscale = scale
						dust.image_yscale = scale
						dust.vspeed = irandom_range(-50,50)/25
						dust.hspeed = irandom_range(-50,50)/25
						dust.image_alpha = 1
						}
					}
						if global.show_credits = 0
						{
						var sfx = audio_play_sound(down_attack_sfx,0,0)
						audio_sound_gain(sfx,0.32*global.master_volume*2*global.sfx_volume,0)
		
						var a___ = audio_play_sound(guard,0,0)
						audio_sound_gain(a___,0.07*global.master_volume*2*global.sfx_volume,0)
		
						var sfx = audio_play_sound(mob_faint,0,0)
						audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
						
						view_shake(11,30,1)
						}
					}
				}
				
				
				if patturn >= 1.2
				{
				patturn += 0.001
					if patturn = 1.3
					{
						if sign_k(player.x - left_eye.x) = 1 //오른쪽
						{
						patturn = 1.4
						}
						else
						{
						patturn = 1.5
						}
					}
				}
				
				if patturn >= 1.4 && patturn < 1.5
				{
					if left_eye.hspeed < 4
					{
					left_eye.hspeed = 20
					}
				left_eye.hspeed += 2
				patturn += 0.01
					if patturn >= 1.48
					{
					patturn = 1.6
					}
				}
				
				if patturn >= 1.5 && patturn < 1.6
				{
					if left_eye.hspeed > -4
					{
					left_eye.hspeed = -20
					}
				left_eye.hspeed -= 2
				patturn += 0.01
				}
				
				if patturn >= 1.6
				{
				left_eye.hspeed += (0 - left_eye.hspeed)*0.1
					var a___ = instance_create_depth(left_eye.x,left_eye.y,depth,rage_mode_knockback_attacked)
					a___.image_xscale = 3.2
					a___.image_yscale = 3.2
				
					if _sfx__ = 0
					{
					_sfx__ = 1
						if global.show_credits = 0
						{
						var a___ = audio_play_sound(bomb_sfx,0,0)
						audio_sound_gain(a___,0.05*global.master_volume*2*global.sfx_volume,0)
			
						var sfx = audio_play_sound(mob_faint,0,0)
						audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
			
						var a___ = audio_play_sound(guard,0,0)
						audio_sound_gain(a___,0.07*global.master_volume*2*global.sfx_volume,0)
						}

		
					var effect_ = instance_create_depth(left_eye.x+15,left_eye.y,player.depth+1,down_effect)
					effect_.t_image_yscale = 0.6*3
					effect_.t_image_xscale = 0.1*3
					effect_.received = 0
		
					var effect_ = instance_create_depth(left_eye.x-15,left_eye.y,player.depth+1,down_effect)
					effect_.t_image_yscale = 0.6*3
					effect_.t_image_xscale = -0.1*3
					effect_.received = 0
		
					view_shake(11,11,1)
						repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
						{
						randomize()
						var random_target = left_eye
						var dust = instance_create_depth(random_target.x+irandom_range(-5,5),random_target.y+irandom_range(-5,5),random_target.depth-1,pepsi_effect_received)
						var scale = irandom_range(20,40)/50
						dust.image_xscale = scale
						dust.image_yscale = scale
						dust.vspeed = irandom_range(-50,50)/25
						dust.hspeed = irandom_range(-50,50)/25
						dust.image_alpha = 1
						}
					}
					
					if abs(left_eye.hspeed) < 1
					{
					left_eye.hspeed = 0
					patturn = 0
					_sfx__ = 0
					}
				}
			}
		}
		
		
		if patturn >= 2 && patturn < 3
		{
		image_angle -= hspeed
		left_eye.cannot_step = 1
		cannot_step = 0
			with(obj_twin_eye)
			{
				if image_index = 0
				{
				left_eye.x += (player.x-350+irandom_range(-30,30) - left_eye.x)*0.1
				left_eye.y += (player.y-400+irandom_range(-30,30) - left_eye.y)*0.1
				}
				
				if patturn >= 2 && patturn < 2.1
				{
				patturn += 0.001
				var near_ = instance_nearest(player.x,player.y,obj_floor_tile3)
					if abs(near_.x - player.x) > 170
					{
					x += (player.x - x)*0.1
					}
				y += (player.y-500 - y)*0.1
				}
				
				if patturn = 2.1
				{
				gravity = 0.3
					if vspeed < 4
					{
					vspeed = 10
					}
					
					if check_on_floor = 1
					{
					gravity = 0
					vspeed = 0
					patturn = 2.2
					
					var a___ = instance_create_depth(x,y+60,depth,rage_mode_knockback_attacked)
					a___.image_xscale = 10
					a___.image_yscale = 1
					
					var a___ = instance_create_depth(x,y+60,depth,rage_mode_knockback_attacked)
					a___.image_xscale = 3.5
					a___.image_yscale = 3.5

					var effect_ = instance_create_depth(x,y+70,depth+1,down_effect)
					effect_.t_image_yscale = 0.4*3
					effect_.t_image_xscale = 0.05*3
					effect_.received = 0
		
					repeat(8)
					{
					var _ef = instance_create_depth(x,y+60,depth-1,effect_spark)
					_ef.hspeed = irandom_range(-20,20)
					_ef.vspeed = irandom_range(-4,2)
			
						repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
						{
						randomize()
						var random_target = id
						var dust = instance_create_depth(random_target.x+irandom_range(-5,5),random_target.y+irandom_range(-5,5),random_target.depth-1,pepsi_effect_received)
						var scale = irandom_range(20,40)/50
						dust.image_xscale = scale
						dust.image_yscale = scale
						dust.vspeed = irandom_range(-50,50)/25
						dust.hspeed = irandom_range(-50,50)/25
						dust.image_alpha = 1
						}
					}
					
						if global.show_credits = 0 
						{
						var sfx = audio_play_sound(down_attack_sfx,0,0)
						audio_sound_gain(sfx,0.32*global.master_volume*2*global.sfx_volume,0)
		
						var a___ = audio_play_sound(guard,0,0)
						audio_sound_gain(a___,0.07*global.master_volume*2*global.sfx_volume,0)
		
						var sfx = audio_play_sound(mob_faint,0,0)
						audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
						view_shake(11,30,1)
						}
					}
				}
				
				
				if patturn >= 2.2
				{
				patturn += 0.001
					if patturn = 2.3
					{
						if sign_k(player.x - x) = 1 //오른쪽
						{
						patturn = 2.4
						}
						else
						{
						patturn = 2.5
						}
					}
				}
				
				if patturn >= 2.4 && patturn < 2.5
				{
					if hspeed < 4
					{
					hspeed = 20
					}
				hspeed += 2
				patturn += 0.01
					if patturn >= 2.48
					{
					patturn = 2.6
					}
				}
				
				if patturn >= 2.5 && patturn < 2.6
				{
					if hspeed > -4
					{
					hspeed = -20
					}
				hspeed -= 2
				patturn += 0.01
				}
				
				if patturn >= 2.6
				{
				hspeed += (0 - hspeed)*0.1
					var a___ = instance_create_depth(x,y,depth,rage_mode_knockback_attacked)
					a___.image_xscale = 3.2
					a___.image_yscale = 3.2
				
					if _sfx__ = 0
					{
					_sfx__ = 1
						if global.show_credits = 0
						{
						var a___ = audio_play_sound(bomb_sfx,0,0)
						audio_sound_gain(a___,0.05*global.master_volume*2*global.sfx_volume,0)
			
						var sfx = audio_play_sound(mob_faint,0,0)
						audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
			
						var a___ = audio_play_sound(guard,0,0)
						audio_sound_gain(a___,0.07*global.master_volume*2*global.sfx_volume,0)
						}
		
					var effect_ = instance_create_depth(x+15,y,player.depth+1,down_effect)
					effect_.t_image_yscale = 0.6*3
					effect_.t_image_xscale = 0.1*3
					effect_.received = 0
		
					var effect_ = instance_create_depth(x-15,y,player.depth+1,down_effect)
					effect_.t_image_yscale = 0.6*3
					effect_.t_image_xscale = -0.1*3
					effect_.received = 0
		
					view_shake(11,11,1)
						repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
						{
						randomize()
						var random_target = id
						var dust = instance_create_depth(random_target.x+irandom_range(-5,5),random_target.y+irandom_range(-5,5),random_target.depth-1,pepsi_effect_received)
						var scale = irandom_range(20,40)/50
						dust.image_xscale = scale
						dust.image_yscale = scale
						dust.vspeed = irandom_range(-50,50)/25
						dust.hspeed = irandom_range(-50,50)/25
						dust.image_alpha = 1
						}
					}
					
					if abs(hspeed) < 1
					{
					hspeed = 0
					patturn = 0
					_sfx__ = 0
					}
				}
			}
		}
		
		
		if patturn >= 3 && patturn < 4
		{
		image_angle += (point_direction(x,y,player.x,player.y) - image_angle)*0.1
		left_eye.image_angle += (point_direction(x,y,player.x,player.y) - left_eye.image_angle)*0.1
		laser_alpha += (0.8 - laser_alpha)*0.1
		obj_twin_eye_another.laser_alpha += (0.8 - obj_twin_eye_another.laser_alpha)*0.1
		cannot_step = 0
		left_eye.cannot_step = 0
		left_eye.x += (xstart-200 - left_eye.x)*0.1
		left_eye.y += (ystart-100 - left_eye.y)*0.1
		x += (xstart+200 - x)*0.1
		y += (ystart-100 - y)*0.1
		
			if patturn = 3
			{
				if global.show_credits = 0
				{
				var sfx = audio_play_sound(laser_skill_ready,0,0)
				audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
				}
			patturn = 3.1
			}
			
			if patturn >= 3.1
			{
			patturn += 0.001
			
				if patturn = 3.16
				{
				w_alpha_laser = 1.2
				left_eye.w_alpha_laser = 1.2
				}
			
				if patturn >= 3.2
				{
				bullet__ ++
					if bullet__%6 = 0
					{
					var scale_ = 40
						if global.show_credits = 0
						{
						var sfx = audio_play_sound(gun_sfx_single,0,0)
						audio_sound_gain(sfx,0.22*global.master_volume*2*global.sfx_volume,0)
						}
						
						if abs(global.movement_speed) < 6
						{
						scale_ = 80
						}
			
					var _bullet__ = instance_create_depth(left_eye.x,left_eye.y,depth+1,obj_bullet)
					_bullet__.bullet_speed = 14;
					_bullet__.direction = point_direction(left_eye.x,left_eye.y,player.x+sign(floor(global.movement_speed))*scale_,player.y)
			
					var _bullet__ = instance_create_depth(x,y,depth+1,obj_bullet)
					_bullet__.bullet_speed = 14;
					_bullet__.direction = point_direction(x,y,player.x+sign(floor(global.movement_speed))*scale_,player.y)
					}
				}
				
				if patturn >= 3.6
				{
				bullet__ = 0
				patturn = 0
				}
			}
		}
		
		
		
		if patturn >= 4 && patturn < 5
		{
		image_angle -= hspeed
		left_eye.image_angle -= left_eye.hspeed
			with(obj_twin_eye)
			{
				if patturn >= 4 && patturn < 4.1
				{
				patturn += 0.001
				x += (xstart-350 - x)*0.1
				y += (ystart-350 - y)*0.1
				left_eye.x += (xstart+350 - left_eye.x)*0.1
				left_eye.y += (ystart-350+ - left_eye.y)*0.1
				}
				
				if patturn = 4.1
				{
				gravity = 0.3
				left_eye.gravity = 0.3
					if vspeed < 4
					{
					vspeed = 10
					left_eye.vspeed = 10
					}
					
					if check_on_floor = 1
					{
					gravity = 0
					vspeed = 0
					left_eye.gravity = 0
					left_eye.vspeed = 0
					
					patturn = 4.2
					
					var a___ = instance_create_depth(x,y+60,depth,rage_mode_knockback_attacked)
					a___.image_xscale = 10
					a___.image_yscale = 1
					
					var a___ = instance_create_depth(left_eye.x,left_eye.y+60,depth,rage_mode_knockback_attacked)
					a___.image_xscale = 10
					a___.image_yscale = 1
					
					var a___ = instance_create_depth(left_eye.x,left_eye.y,depth,rage_mode_knockback_attacked)
					a___.image_xscale = 3.1
					a___.image_yscale = 3.1
					
					var a___ = instance_create_depth(x,y,depth,rage_mode_knockback_attacked)
					a___.image_xscale = 3.1
					a___.image_yscale = 3.1

					var effect_ = instance_create_depth(x,y+70,depth+1,down_effect)
					effect_.t_image_yscale = 0.4*3
					effect_.t_image_xscale = 0.05*3
					effect_.received = 0
		
					repeat(8)
					{
					var _ef = instance_create_depth(x,y+60,depth-1,effect_spark)
					_ef.hspeed = irandom_range(-20,20)
					_ef.vspeed = irandom_range(-4,2)
			
						repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
						{
						randomize()
						var random_target = id
						var dust = instance_create_depth(random_target.x+irandom_range(-5,5),random_target.y+irandom_range(-5,5),random_target.depth-1,pepsi_effect_received)
						var scale = irandom_range(20,40)/50
						dust.image_xscale = scale
						dust.image_yscale = scale
						dust.vspeed = irandom_range(-50,50)/25
						dust.hspeed = irandom_range(-50,50)/25
						dust.image_alpha = 1
						}
					}
					
					var a___ = instance_create_depth(left_eye.x,left_eye.y+60,left_eye.depth,rage_mode_knockback_attacked)
					a___.image_xscale = 10
					a___.image_yscale = 1

					var effect_ = instance_create_depth(left_eye.x,left_eye.y+70,left_eye.depth+1,down_effect)
					effect_.t_image_yscale = 0.4*3
					effect_.t_image_xscale = 0.05*3
					effect_.received = 0
		
					repeat(8)
					{
					var _ef = instance_create_depth(left_eye.x,left_eye.y+60,left_eye.depth-1,effect_spark)
					_ef.hspeed = irandom_range(-20,20)
					_ef.vspeed = irandom_range(-4,2)
			
						repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
						{
						randomize()
						var random_target = left_eye
						var dust = instance_create_depth(random_target.x+irandom_range(-5,5),random_target.y+irandom_range(-5,5),random_target.depth-1,pepsi_effect_received)
						var scale = irandom_range(20,40)/50
						dust.image_xscale = scale
						dust.image_yscale = scale
						dust.vspeed = irandom_range(-50,50)/25
						dust.hspeed = irandom_range(-50,50)/25
						dust.image_alpha = 1
						}
					}
					
						if global.show_credits = 0
						{
						var sfx = audio_play_sound(down_attack_sfx,0,0)
						audio_sound_gain(sfx,0.32*global.master_volume*2*global.sfx_volume,0)
		
						var a___ = audio_play_sound(guard,0,0)
						audio_sound_gain(a___,0.07*global.master_volume*2*global.sfx_volume,0)
		
						var sfx = audio_play_sound(mob_faint,0,0)
						audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
						view_shake(11,30,1)
						}
					}
				}
				
				
				if patturn >= 4.2
				{
				patturn += 0.005
				}
				
				if patturn >= 4.4 && patturn < 4.5
				{
					if hspeed < 4
					{
					left_eye.hspeed = -15
					hspeed = 15
					}
				hspeed += 2
				left_eye.hspeed -= 2
				patturn += 0.01
					if patturn >= 4.48
					{
					patturn = 4.6
					}
				}

				
				if patturn >= 4.6
				{
				hspeed += (0 - hspeed)*0.1
				left_eye.hspeed += (0 - left_eye.hspeed)*0.1
					var a___ = instance_create_depth(x,y,depth,rage_mode_knockback_attacked)
					a___.image_xscale = 3
					a___.image_yscale = 3
					
					var a___ = instance_create_depth(left_eye.x,left_eye.y,depth,rage_mode_knockback_attacked)
					a___.image_xscale = 3
					a___.image_yscale = 3
				
					if _sfx__ = 0
					{
					_sfx__ = 1
						if global.show_credits = 0
						{
						var a___ = audio_play_sound(bomb_sfx,0,0)
						audio_sound_gain(a___,0.05*global.master_volume*2*global.sfx_volume,0)
			
						var sfx = audio_play_sound(mob_faint,0,0)
						audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
			
						var a___ = audio_play_sound(guard,0,0)
						audio_sound_gain(a___,0.07*global.master_volume*2*global.sfx_volume,0)
						}
		
					var effect_ = instance_create_depth(x+15,y,player.depth+1,down_effect)
					effect_.t_image_yscale = 0.6*3
					effect_.t_image_xscale = 0.1*3
					effect_.received = 0
		
					var effect_ = instance_create_depth(x-15,y,player.depth+1,down_effect)
					effect_.t_image_yscale = 0.6*3
					effect_.t_image_xscale = -0.1*3
					effect_.received = 0
					
					var effect_ = instance_create_depth(left_eye.x+15,left_eye.y,player.depth+1,down_effect)
					effect_.t_image_yscale = 0.6*3
					effect_.t_image_xscale = 0.1*3
					effect_.received = 0
		
					var effect_ = instance_create_depth(left_eye.x-15,left_eye.y,player.depth+1,down_effect)
					effect_.t_image_yscale = 0.6*3
					effect_.t_image_xscale = -0.1*3
					effect_.received = 0
		
					view_shake(11,11,1)
						repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
						{
						randomize()
						var random_target = id
						var dust = instance_create_depth(random_target.x+irandom_range(-5,5),random_target.y+irandom_range(-5,5),random_target.depth-1,pepsi_effect_received)
						var scale = irandom_range(20,40)/50
						dust.image_xscale = scale
						dust.image_yscale = scale
						dust.vspeed = irandom_range(-50,50)/25
						dust.hspeed = irandom_range(-50,50)/25
						dust.image_alpha = 1
						}
					}
					
					if abs(hspeed) < 1
					{
					hspeed = 0
					left_eye.hspeed = 0
					patturn = 0
					_sfx__ = 0
					}
				}
			}
		}
		
		
		
		if patturn >= 5 && patturn < 6
		{
		patturn += 0.001
		left_eye.x += (xstart-400 - left_eye.x)*0.1
		left_eye.y += (ystart - left_eye.y)*0.1
		x += (xstart+400 - x)*0.1
		y += (ystart - y)*0.1
		image_angle += (0 - image_angle)*0.1
		left_eye.image_angle += (0 - left_eye.image_angle)*0.1
		
		if random_shoot = 0
		{
		laser_alpha += (0.8 - laser_alpha)*0.1
		obj_twin_eye_another.laser_alpha += (-1 - obj_twin_eye_another.laser_alpha)*0.1
		}
		else
		{
		obj_twin_eye_another.laser_alpha += (0.8 - obj_twin_eye_another.laser_alpha)*0.1
		laser_alpha += (-1 - laser_alpha)*0.1
		}
		
			if patturn = 5.06
			{
				if random_shoot = 1
				{
				left_eye.w_alpha_laser = 1.2
				}
				else
				{
				w_alpha_laser = 1.2
				}
			}
		
			if patturn = 5.1
			{
				if shotgun_ < 4
				{
				var sfx = audio_play_sound(mob_faint,0,0)
				audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
				
				var sfx = audio_play_sound(down_attack_sfx,0,0)
				audio_sound_gain(sfx,0.22*global.master_volume*2*global.sfx_volume,0)
				
				var a___ = audio_play_sound(bomb_sfx,0,0)
				audio_sound_gain(a___,0.05*global.master_volume*2*global.sfx_volume,0)
				
				var sfx = audio_play_sound(gun_sfx_single,0,0)
				audio_sound_gain(sfx,0.22*global.master_volume*2*global.sfx_volume,0)
				view_shake(11,10,5)
			
					if random_shoot = 1
					{
						for(var i = -4; i <= 4; i++)
						{
						var _bullet__ = instance_create_depth(left_eye.x,left_eye.y,depth+1,obj_bullet)
						_bullet__.bullet_speed = 14;
						_bullet__.direction = i*6+point_direction(left_eye.x,left_eye.y,player.x+sign(floor(global.movement_speed)),player.y)
						}
					}
					else
					{
						for(var i = -4; i <= 4; i++)
						{
						var _bullet__ = instance_create_depth(x,y,depth+1,obj_bullet)
						_bullet__.bullet_speed = 14;
						_bullet__.direction = i*6+point_direction(x,y,player.x+sign(floor(global.movement_speed)),player.y)
						}
					}
				}
			}
			
			if patturn >= 5.11
			{
				if shotgun_ < 4
				{
				patturn = 5.03
				shotgun_ ++
				var sfx = audio_play_sound(mob_faint,0,0)
				audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
				
				var sfx = audio_play_sound(down_attack_sfx,0,0)
				audio_sound_gain(sfx,0.22*global.master_volume*2*global.sfx_volume,0)
				
				var a___ = audio_play_sound(bomb_sfx,0,0)
				audio_sound_gain(a___,0.05*global.master_volume*2*global.sfx_volume,0)
				
				var sfx = audio_play_sound(gun_sfx_single,0,0)
				audio_sound_gain(sfx,0.22*global.master_volume*2*global.sfx_volume,0)
				view_shake(11,15,5)
			
					if random_shoot = 1
					{
					left_eye.image_angle += 200
						for(var i = -4; i <= 4; i++)
						{
						var _bullet__ = instance_create_depth(left_eye.x,left_eye.y,depth+1,obj_bullet)
						_bullet__.bullet_speed = 14;
						_bullet__.direction = i*6+point_direction(left_eye.x,left_eye.y,player.x+sign(floor(global.movement_speed)),player.y)
						}
					}
					else
					{
					image_angle -= 200
						for(var i = -4; i <= 4; i++)
						{
						var _bullet__ = instance_create_depth(x,y,depth+1,obj_bullet)
						_bullet__.bullet_speed = 14;
						_bullet__.direction = i*6+point_direction(x,y,player.x+sign(floor(global.movement_speed)),player.y)
						}
					}
					
				random_shoot = percentage_k(50)
				}
				else
				{
				patturn = 0
				shotgun_ = 0
				}
			}
		}
/////////////////////////////////////////////////////////////////////////////////////////////////////
	}
}