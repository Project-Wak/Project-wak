/// @description Insert description here
// You can write your code in this editor
image_blend = c_white
if hp > max_hp
{
hp = max_hp
}

if instance_exists(yellow_circle_effect)
{
patturn = 0
}


if hp <= 0
{
	if global.achievement[16] != 1
	{
	var _achievement = instance_create_depth(x,y,depth,bg_achievement)
	_achievement.text = string(global.achievement_name[16])
	_achievement.icon_num = 4
	global.achievement[16] = 1
	}
	
global.boss_target = -4
global.playing_scene = 1
global.never_move = 1
hp = 0
dead_scene ++
patturn = 0


cannot_step = 1

if instance_exists(_light_)
{
_light_.x = x
_light_.y = y-100-40*image_yscale
_light_.alpha = image_alpha*0.5+w_alpha
}
	
	if instance_exists(spear__) && instance_exists(_light_1)
	{
	_light_1.x = spear__.x
	_light_1.y = spear__.y
	_light_1.image_angle = spear__.image_angle
	_light_1.alpha = image_alpha*0.8*lightdown
	}

	if y+100 < player.y
	{
	obj_camera.t_x = x
	obj_camera.t_y = y+50
	}
	

	if dead_scene%15
	{
	shake_boss *= -1
	x += shake_boss*14
	}
	
	if dead_scene > 120
	{
	lightdown -= 0.05
		if instance_exists(angel_spear)
		{
		angel_spear.image_angle += (100 - angel_spear.image_angle)*0.02
		}
	
		if instance_exists(angel_spear)
		{
		angel_spear.gravity = 0.1
		}
	}
	
	if dead_scene > 300
	{
	gravity = 0.2
	lightdown2 -= 0.05
		if instance_exists(_light_)
		{
		_light_.alpha = image_alpha*0.8*lightdown2
		}
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

	
	var random_drop_ = percentage_k(50)
	if random_drop_ = 1
	{
	give_item(0,0)
	}
	else
	{
	give_item(0,1)
	}
	
	global.gold += 20000
	global.left_time += 6*global.time_plusment
	
	instance_destroy(wall1)
	instance_destroy(wall2)
	instance_destroy(_light_)
	instance_destroy(spear__)
	instance_destroy()
	}
}
else
{
if cannot_step = 1
{
image_xscale += (1.3 - image_xscale)*0.1
image_yscale += (1.3 - image_yscale)*0.1



alpha += (1 - alpha)*0.1
}
else
{
image_xscale += (1.5 - image_xscale)*0.1
image_yscale += (1.5 - image_yscale)*0.1


alpha += (0 - alpha)*0.1
}


if scene__ > 0 && hp > 0
{
	if !instance_exists(_light_)
	{
	total_died_from_here ++
	_light_ = instance_create_depth(x,y-30,depth,obj_light)
	_light_.p_id = id
	_light_.alpha = 0.7
	_light_.sprite_index = sprite64
	_light_.image_blend = $FF75F2FF
	_light_.light_type = 0
	_light_.image_xscale = 9
	_light_.image_yscale = 9
	
	_light_1 = instance_create_depth(x,y-30,depth,obj_light)
	_light_1.p_id = id
	_light_1.alpha = 0.7
	_light_1.sprite_index = sprite64
	_light_1.image_blend = $FF75F2FF
	_light_1.light_type = 0
	_light_1.image_xscale = 3.5
	_light_1.image_yscale = 3.5
	}
	else
	{
	_light_.x = x
	_light_.y = y-100-40*image_yscale
	_light_.alpha = image_alpha*0.5+w_alpha
	
		if instance_exists(spear__)
		{
		_light_1.x = spear__.x
		_light_1.y = spear__.y
		_light_1.image_angle = spear__.image_angle
		_light_1.alpha = image_alpha*0.8
		}
	}
}



if scene__ > 0 && activated != 2
{
	if player.attack_laser_sec = 0 && player.attack_laser = 0 && player.suicide = 0 && player.sting_attack = 0
	{
		if global.show_credits = 0
		{
		obj_camera.tv_x = 1280*0.9
		obj_camera.tv_y = 720*0.9
		obj_camera.t_x = x
		obj_camera.t_y = y+180
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
		global.boss_name = "연구소의 수호자 - 창의 기사 엔젤로이드"
		obj_camera.tv_x = 1280
		obj_camera.tv_y = 720
		obj_camera.t_x = x
		obj_camera.t_y = player.y
		}
	
		if saved_real_x = -4
		{
		global.save_point_x = player.x-600
		global.save_point_y = player.y
		saved_real_x = x
		saved_real_y = y
		}
	}
}

if bgm != -4
{
audio_sound_gain(bgm,0.1*global.master_volume*global.bgm_volume*global.certain_music_volume*scene__,0)
}

if activated = 1
{
	if !instance_exists(wall1)
	{
	wall1 = instance_create_depth(x-560,1696,player.depth+3,obj_floor_tile3)
	wall1.image_xscale = -1
	wall1.image_yscale = 5.4

	wall2 = instance_create_depth(x+560,1696,player.depth+3,obj_floor_tile3)
	wall2.image_yscale = 5.4
	}
	
	if !audio_is_playing(quake_sfx) && global.show_credits = 0
	{
	var sfx = audio_play_sound(quake_sfx,0,0)
	audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
	}
	
	
	if scene__ >= 0.2 && scene__ < 0.55
	{
	spear__.image_xscale += (image_xscale - spear__.image_xscale)*0.08
	spear__.image_yscale += (image_yscale*1.2 - spear__.image_yscale)*0.08
	spear__.depth = depth+10
	
		if opening_sfx = 0	
		{
		opening_sfx = 1
		var sfx = audio_play_sound(jump_attack_sfx,0,0)
		audio_sound_gain(sfx,0.5*global.master_volume*2*global.sfx_volume,0)
		
		spear__.x = x
		spear__.y = player.y + 1000
		spear__.cannot_step = 1
		}
		
		if scene__ >= 0.3
		{
			if spear__.y > player.y-800
			{
			spear__.image_angle = 180
			spear__.y += (player.y-810 - spear__.y)*0.08
			}
		}
	}
	
	
	if scene__ < 0.65 && scene__ > 0.55
	{
	spear__.depth = depth-10
	spear__.image_angle = 0
	obj_camera.t_y = player.y
	opening_scene = 0
	spear__.cannot_step = 0

		if global.show_credits = 0 && opening_sfx = 1
		{
		spear__.image_xscale = image_xscale*1.2
		spear__.image_yscale = image_yscale*1.4
		spear__.gravity = 0.4
			if spear__.vspeed < 8
			{
			spear__.vspeed = 25
			}
		
		spear__.x = player.x
		spear__.y = player.y - 1500
		opening_sfx = 2
		}
	}
	
	if scene__ > 0.7
	{
	spear__.cannot_step = 0

		if spear__.y > 2360 && opening_scene = 0
		{
		spear__.y = 2360
		opening_scene = 1
		}
		
		if opening_scene > 0
		{
			if y+100 < player.y
			{
			obj_camera.t_y = y+100
			}
		spear__.gravity = 0
		spear__.vspeed = 0
		
		if scene__ > 0.8
		{
		y += (ystart+8 - y)*0.08
		spear__.x += (x+150 - spear__.x)*0.08
		spear__.y += (y-50+angelring_y - spear__.y)*0.08
		spear__.image_angle = point_direction(x,y,spear__.x,spear__.y)+90
		spear__.image_xscale += (image_xscale - spear__.image_xscale)*0.08
		spear__.image_yscale += (image_yscale*1.2 - spear__.image_yscale)*0.08
		spear__.depth = depth+10
		spear__.cannot_step = 1
		}
			
			if opening_scene = 1
			{
			opening_scene = 2
			
			var a___ = instance_create_depth(spear__.x,spear__.y,depth,rage_mode_knockback_attacked)
			a___.image_xscale = 10
			a___.image_yscale = 3

		
				repeat(8)
				{
				var _ef = instance_create_depth(spear__.x,spear__.y,depth-1,effect_spark)
				_ef.hspeed = irandom_range(-20,20)
				_ef.vspeed = irandom_range(-4,2)
					repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
					{
					randomize()
					var random_target = spear__
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
				var a___ = audio_play_sound(bomb_sfx,0,0)
				audio_sound_gain(a___,0.12*global.master_volume*2*global.sfx_volume,0)
				
				var sfx = audio_play_sound(down_attack_sfx,0,0)
				audio_sound_gain(sfx,0.32*global.master_volume*2*global.sfx_volume,0)
		
				var a___ = audio_play_sound(guard,0,0)
				audio_sound_gain(a___,0.07*global.master_volume*2*global.sfx_volume,0)
		
				var sfx = audio_play_sound(mob_faint,0,0)
				audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
				view_shake(11,40,5)
				
					repeat(3)
					{
					var effect_ = instance_create_depth(angel_spear.x,obj_angel.y+220,player.depth+1,down_effect)
					effect_.t_image_xscale = 0.7*6
					effect_.t_image_yscale = 0.05*6
					effect_.received = 0
					}
				}
			}
		}
	}
	
	
player.guarding = 2
view_shake(0.1,0.1,1)
scene__ += 0.0032
image_blend = merge_color(c_black,c_white,scene__)
global.playing_scene = 1
global.never_move = 1
global.room_brightness += 0.0002
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
		global.room_brightness += 0.0002
		image_blend = merge_color(c_black,c_white,scene__)
			if scene__ >= 1
			{
			global.b_alpha = 1.2
			y = ystart+8
			break;
			}
		}
	}
}

if activated > 0
{
var random_val_fl = percentage_k(global.graphics_for_code*8)
	if random_val_fl = 1
	{
	xx_ = x+irandom_range(-500,500)
	yy_ = y+260+irandom_range(-32,32)
	var random_val___2 = percentage_k(50)
	create_buble_effect(0.15,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.07,0.07,$FF62D1F7,$FF6C60CD,2,$FF191919,xx_,yy_,998+random_val___2*2,1,false,false)
	}
}

if scene__ >= 1
{
skip_boss_apearence = 1
player.assult_mode = 300
activated = 2
opening_sfx = 0
	if instance_exists(check__)
	{
	global.playing_scene = 0
	global.never_move = 0
	instance_destroy(check__)
	message_phase ++
	}

	if spear__.cannot_step = 0
	{
	spear__.image_xscale += (image_xscale*1.2 - spear__.image_xscale)*0.08
	spear__.image_yscale += (image_yscale*1.4 - spear__.image_yscale)*0.08
	spear__.depth = player.depth-10
	}
	else
	{
	spear__.image_xscale += (image_xscale - spear__.image_xscale)*0.08
	spear__.image_yscale += (image_yscale*1.2 - spear__.image_yscale)*0.08
	spear__.depth = depth+10
	}

	if patturn = 0
	{
		if instance_exists(spear__)
		{
		spear__.x += (x+150 - spear__.x)*0.08
		spear__.y += (y-50+angelring_y - spear__.y)*0.08
		spear__.image_angle = point_direction(x,y,spear__.x,spear__.y)+90
		}

	
	if global.hp > 0 && low_hp_phase = 0
	{
	cannot_step = 0
	spear__.cannot_step = 1
	
		if hp < 1500 && phase_change = 0
		{
		low_hp_phase = 1
		skill_red_ball_effect_rage = instance_create_depth(x,y+100,depth-1,yellow_circle_effect)
		skill_red_ball_effect_rage.image_xscale = 0
		skill_red_ball_effect_rage.image_yscale = 0
		skill_red_ball_effect_rage.t_scale = 1.5
		phase_change = 1
		}
	timer ++
	}
	
		if timer > 300-phase_change*100
		{
			if phase_change = 0
			{
			var random_patturn = choose(1,2,3)
			}
			else
			{
			var random_patturn = choose(1,2,3,4,4)
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
					if phase_change = 0
					{
					random_patturn = choose(1,2,3)
					}
					else
					{
					random_patturn = choose(1,2,3,4,4)
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
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		}
	}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	if low_hp_phase > 0
	{
	cannot_step = 1
	spear__.cannot_step = 1
	low_hp_phase ++
		if low_hp_phase > 800
		{
			if !instance_exists(yellow_circle_effect)
			{
			low_hp_phase = 0
			}
			else
			{
			skill_red_ball_effect_rage.x += (x - skill_red_ball_effect_rage.x)*0.03
			skill_red_ball_effect_rage.y += (y - skill_red_ball_effect_rage.y)*0.03
			skill_red_ball_effect_rage.t_scale -= 0.01
			}
		}
	}
	
	
	if patturn >= 1 && patturn < 2
	{
	w_alpha += (-0.1 - w_alpha)*0.1
	patturn += 0.001
	cannot_step = 1
	var a___ = instance_create_depth(spear__.x,spear__.y,depth,rage_mode_knockback_attacked)
	a___.image_xscale = 1
	a___.image_yscale = 1
	
		if patturn < 1.1
		{
		spear__.image_angle += (180 - spear__.image_angle)*0.08
		}
		
		if patturn >= 1.1 && patturn <= 1.22
		{
		spear__.y += (300 - spear__.y)*0.05
		}

		if patturn = 1.24
		{
		var sfx = audio_play_sound(jump_attack_sfx,0,0)
		audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
		var effect_ = instance_create_depth(player.x,obj_angel.y+220,player.depth+1,down_effect)
		effect_.t_image_xscale = 0.7*6
		effect_.t_image_yscale = 0.05*6
		effect_.received = 0
		w_alpha = 2
		}
		
		
		if patturn > 1.3
		{
		spear__.image_angle = 0
		spear__.cannot_step = 0
		spear__.gravity = 0.3
			if abs(spear__.vspeed) < 3 && spear__.on_floor = 0
			{
			spear__.x = player.x
			spear__.y = y-300
			spear__.vspeed = 32
			}
		
			if spear__.on_floor = 1
			{
			view_shake(0,1.1,1)
			var random_val___ = percentage_k(global.graphics_for_code*3)
				if random_val___ = 1
				{
				xx_ = spear__.x
				yy_ = spear__.y
				var random_val___2 = percentage_k(50)
				create_buble_effect(0.3,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.07,0.07,$FF62D1F7,$FF6C60CD,2,$FF191919,xx_,yy_,depth-random_val___2,1,false,false)
				}
				
				if !audio_is_playing(quake_sfx) && global.show_credits = 0
				{
				var sfx = audio_play_sound(quake_sfx,0,0)
				audio_sound_gain(sfx,0.33*global.master_volume*2*global.sfx_volume,0)
				}
				
				repeat(4)
				{
				var _ef = instance_create_depth(spear__.x,y+240,depth-1,effect_spark)
				_ef.hspeed = irandom_range(-20,20)
				_ef.vspeed = irandom_range(-4,2)
				}
			}
			
			if patturn > 1.4 && sfx_2 = 0 && global.show_credits = 0
			{
			sfx_2 = 1
			var sfx = audio_play_sound(jump_attack_sfx,0,0)
			audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
			}

		
			if spear__.on_floor = 1 && sfx_ = 0
			{
			var dust = instance_create_depth(spear__.x+16,spear__.y-32,spear__.depth-1,obj_dust_ef)
			dust.image_xscale = -2
			
			var dust = instance_create_depth(spear__.x-16,spear__.y-32,spear__.depth-1,obj_dust_ef)
			dust.image_xscale = 2
				
				repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
				{
				randomize()
				var random_target = spear__
				var dust = instance_create_depth(random_target.x+irandom_range(-5,5),y+300+irandom_range(-5,5),random_target.depth-1,pepsi_effect_received)
				var scale = irandom_range(20,40)/50
				dust.image_xscale = scale
				dust.image_yscale = scale
				dust.vspeed = irandom_range(-50,50)/25
				dust.hspeed = irandom_range(-50,50)/25
				dust.image_alpha = 1
				}
				
				repeat(irandom_range(4,6))
				{
				var bullet__ = instance_create_depth(spear__.x+irandom_range(-120,120),spear__.y-150+irandom_range(-120,120),spear__.depth-1,simhae_doo_bullet)
				bullet__.bullet_speed = 0.7
				bullet__.attack_type = 0
				}
				
				repeat(3)
				{
				var effect_ = instance_create_depth(spear__.x,spear__.y,spear__.depth+1,down_effect)
				effect_.t_image_yscale = 0.05*15
				effect_.t_image_xscale = 0.4*12
				effect_.received = 0
				}
				
			var effect_ = instance_create_depth(spear__.x,spear__.y,spear__.depth+10,down_effect)
			effect_.t_image_yscale = 0.4*3
			effect_.t_image_xscale = 0.05*3
			effect_.received = 0
			
				
			var a___ = instance_create_depth(spear__.x,spear__.y,depth,rage_mode_knockback_attacked)
			a___.image_xscale = 5
			a___.image_yscale = 2
				
				if global.show_credits = 0
				{
				var sfx = audio_play_sound(down_attack_sfx,0,0)
				audio_sound_gain(sfx,0.32*global.master_volume*2*global.sfx_volume,0)
		
				var a___ = audio_play_sound(guard,0,0)
				audio_sound_gain(a___,0.07*global.master_volume*2*global.sfx_volume,0)
		
				var sfx = audio_play_sound(mob_faint,0,0)
				audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
				
					repeat(3)
					{
					var effect_ = instance_create_depth(angel_spear.x,obj_angel.y+220,player.depth+1,down_effect)
					effect_.t_image_xscale = 0.7*6
					effect_.t_image_yscale = 0.05*6
					effect_.received = 0
					}
				}
			view_shake(11,38,1)
			sfx_ = 1
			}
		
			if spear__.y > y+280
			{
			sfx_2 = 0
			sfx_ = 0
			patturn = 0
			}
		}
	}
	
	
	if patturn >= 2 && patturn < 3
	{
	w_alpha += (0 - w_alpha)*0.1
		if patturn = 2
		{
		sfx_2 = 0
		f_dir = choose(-1,1)
		}
		
		if patturn <= 2.2
		{
		patturn += 0.002
		cannot_step = 1
		spear__.cannot_step = 0
			if f_dir = 1
			{
			spear__.x += (x+550 - spear__.x)*0.05
			spear__.image_angle += (90+180 - spear__.image_angle)*0.08
			}
			else
			{
			spear__.x += (x-550 - spear__.x)*0.05
			spear__.image_angle += (90 - spear__.image_angle)*0.08
			}
			
		spear__.y += (player.y - spear__.y)*0.05
		}
		
		if patturn = 2.08
		{
		var dust = instance_create_depth(spear__.x,spear__.y+32,spear__.depth-1,obj_dust_ef)
		dust.image_xscale = -f_dir*2
		w_alpha = 2;
		}
		
		if patturn >= 2.2 && patturn < 2.25
		{
		var a___ = instance_create_depth(spear__.x,spear__.y,depth,rage_mode_knockback_attacked)
		a___.image_xscale = 1
		a___.image_yscale = 1
		
			if sfx_2 = 0
			{
				if abs(spear__.hspeed) < 4
				{
				spear__.hspeed = -f_dir*32
				}
			spear__.hspeed += -f_dir
			sfx_2 = 1
				if global.show_credits = 0
				{
				var sfx = audio_play_sound(jump_attack_sfx,0,0)
				audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
			
				var sfx = audio_play_sound(choose(swing_lightsaber_sfx1,swing_lightsaber_sfx2,swing_lightsaber_sfx3),0,0)
				audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
				}
			}
			
			if f_dir = 1
			{
				if spear__.x < x-600
				{
				sfx_2 = 0
				patturn = 2.3
				f_dir = -f_dir
				}
			}
			else
			{
				if spear__.x > x+600
				{
				sfx_2 = 0
				patturn = 2.3
				f_dir = -f_dir
				}
			}
		}
		
		if patturn < 2.4 && patturn >= 2.3
		{
			if f_dir = 1
			{
			spear__.x += (x+550 - spear__.x)*0.05
			spear__.image_angle += (90+180 - spear__.image_angle)*0.08
			}
			else
			{
			spear__.x += (x-550 - spear__.x)*0.05
			spear__.image_angle += (90 - spear__.image_angle)*0.08
			}
		spear__.y += (player.y - spear__.y)*0.05
		spear__.hspeed = 0
		patturn += 0.001
		}
		
		if patturn = 2.34
		{
		var dust = instance_create_depth(spear__.x,spear__.y+32,spear__.depth-1,obj_dust_ef)
		dust.image_xscale = -f_dir*2
		w_alpha = 2;
		}
		
		
		if patturn = 2.4
		{
		var a___ = instance_create_depth(spear__.x,spear__.y,depth,rage_mode_knockback_attacked)
		a___.image_xscale = 1
		a___.image_yscale = 1
			if sfx_2 = 0
			{
				if abs(spear__.hspeed) < 4
				{
				spear__.hspeed = -f_dir*32
				}
			spear__.hspeed += -f_dir
			sfx_2 = 1
				if global.show_credits = 0
				{
				var sfx = audio_play_sound(jump_attack_sfx,0,0)
				audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
			
				var sfx = audio_play_sound(choose(swing_lightsaber_sfx1,swing_lightsaber_sfx2,swing_lightsaber_sfx3),0,0)
				audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
				}
			}
			
			if f_dir = 1
			{
				if spear__.x < x-600
				{
				sfx_2 = 0
				patturn = 2.5
				f_dir = -f_dir
				}
			}
			else
			{
				if spear__.x > x+600
				{
				sfx_2 = 0
				patturn = 2.5
				f_dir = -f_dir
				}
			}
		}
		
		if patturn < 2.6 && patturn >= 2.5
		{
			if f_dir = 1
			{
			spear__.x += (x+550 - spear__.x)*0.05
			spear__.image_angle += (90+180 - spear__.image_angle)*0.08
			}
			else
			{
			spear__.x += (x-550 - spear__.x)*0.05
			spear__.image_angle += (90 - spear__.image_angle)*0.08
			}
		spear__.y += (player.y - spear__.y)*0.05
		spear__.hspeed = 0
		patturn += 0.001
		}
		
		if patturn = 2.54
		{
		var dust = instance_create_depth(spear__.x,spear__.y+32,spear__.depth-1,obj_dust_ef)
		dust.image_xscale = -f_dir*2
		w_alpha = 2;
		}
		
		
		if patturn >= 2.6
		{
		var a___ = instance_create_depth(spear__.x,spear__.y,depth,rage_mode_knockback_attacked)
		a___.image_xscale = 1
		a___.image_yscale = 1
			if sfx_2 = 0
			{
				if abs(spear__.hspeed) < 4
				{
				spear__.hspeed = -f_dir*32
				}
			spear__.hspeed += -f_dir
			sfx_2 = 1
				if global.show_credits = 0
				{
				var sfx = audio_play_sound(jump_attack_sfx,0,0)
				audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
			
				var sfx = audio_play_sound(choose(swing_lightsaber_sfx1,swing_lightsaber_sfx2,swing_lightsaber_sfx3),0,0)
				audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
				}
			}
			
			if f_dir = 1
			{
				if spear__.x < x-600
				{
				sfx_2 = 0
				patturn = 0
				spear__.hspeed = 0
				}
			}
			else
			{
				if spear__.x > x+600
				{
				sfx_2 = 0
				patturn = 0
				spear__.hspeed = 0
				}
			}
		}
	}
	
	
	
	
	if patturn >= 3 && patturn < 4
	{
		if sfx_2 = 0 && global.show_credits = 0
		{
		sfx_2 = 1
		var sfx = audio_play_sound(laser_skill_ready,0,0)
		audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
		}
	
	w_alpha += 0.01
	view_shake(0,w_alpha*0.8,1)
		if w_alpha >= 1.3
		{
			repeat(4)
			{
			var _ef = instance_create_depth(x+irandom_range(-64,64),y-103*image_yscale,depth-1,effect_spark)
			_ef.hspeed = irandom_range(-20,20)
			_ef.vspeed = irandom_range(-4,2)
			}
			
		w_alpha = 0
		view_shake(0,10,3)
		patturn += 0.1
		var ring__ = instance_create_depth(x,y-103*image_yscale,depth-1,angel_ring_attack)
		ring__.image_xscale = image_xscale
		ring__.image_yscale = image_yscale
		ring__.direction = point_direction(x,y-103*image_yscale,player.x,player.y)
		ring__.speed = 23
		
		var sfx = audio_play_sound(critical_sfx,0,0)
		audio_sound_gain(sfx,0.05*global.master_volume*2*global.sfx_volume,0)
		}
		
		if w_alpha >= 1
		{
			if w_alpha = 1
			{
			var effect_ = instance_create_depth(player.x,obj_angel.y+220,player.depth+1,down_effect)
			effect_.t_image_xscale = 0.7*6
			effect_.t_image_yscale = 0.05*6
			effect_.received = 0
			}
			
			repeat(2)
			{
			var _ef = instance_create_depth(x+irandom_range(-64,64),y-103*image_yscale,depth-1,effect_spark)
			_ef.hspeed = irandom_range(-20,20)
			_ef.vspeed = irandom_range(-4,2)
			}
		}
		
		if patturn > 3.4
		{
		sfx_2 = 0
		w_alpha = 0
		patturn = 0
		}
	}
	
	if patturn >= 4 && patturn < 5
	{
	cannot_step = 1
		if patturn = 4
		{
		w_alpha = 1.5
		angel_spear.w_alpha = 1.5
			if global.show_credits = 0
			{
			var sfx = audio_play_sound(laser_skill_ready,0,0)
			audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
			}
		}
	patturn += 0.001
	w_alpha += (-0.01 - w_alpha)*0.1
	
		if patturn > 4.1 && patturn < 4.18
		{
		bullet_timer ++
			if bullet_timer%6 = 0
			{
			var __spear__ = instance_create_depth(player.x,y-1000,player.depth-11,falling_spear)
			__spear__.vspeed = 46
			
			var effect_ = instance_create_depth(player.x,obj_angel.y+220,player.depth+1,down_effect)
			effect_.t_image_xscale = 0.7*6
			effect_.t_image_yscale = 0.05*6
			effect_.received = 0
			angel_spear.w_alpha = 1.2
			}
		}
		
		if patturn > 4.25
		{
		patturn = 0
		bullet_timer = 0
		}
	}
}
}

angelring_timer ++

if angelring_timer > 40
{
angelring_y += (30 - angelring_y)*0.01
}
else
{
angelring_y += (0 - angelring_y)*0.01
}

if angelring_timer > 80
{
angelring_timer = 0
}
