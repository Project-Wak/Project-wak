/// @description Insert description here
// You can write your code in this editor
var xx_ = x+irandom_range(-16,16)
var yy_ = y+irandom_range(-16,16)
repeat(2)
{
	var random_val___ = percentage_k(5+global.graphics_for_code*7)
	if random_val___ = 1
	{
	create_buble_effect(1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.1,0.1,$FF3E2D24,$FF473021,2,$FF513524,xx_,yy_,depth+30,0,false,false)
	}
}
	
var random_val___ = percentage_k(global.graphics_for_code*3)
if random_val___ = 1
{
var random_val___2 = percentage_k(1)
create_buble_effect(0.3,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.07,0.07,$FF62D1F7,$FF6C60CD,2,$FF191919,xx_,yy_,depth-random_val___2,1,false,false)
}



if hp > max_hp
{
hp = max_hp
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
	
	if audio_is_playing(follower_bgm)
	{
	audio_stop_sound(follower_bgm)
	code.last_bgm = audio_play_sound(final_battle,0,1)
	}
}

if audio_is_playing(final_battle)
{
audio_sound_gain(code.last_bgm,0.13*global.master_volume*global.bgm_volume*scene__,0)
}

if hp <= 0
{
global.boss_target = -4
global.playing_scene = 1
global.never_move = 1
if global.t_b_alpha != 3.01
{
var	sfx__ = audio_play_sound(walk_sfx,0,false)
audio_sound_gain(sfx__,0.3,0)
global.t_b_alpha = 3.01
}
hp = 0
dead_scene ++
patturn = 0
scene__ -= 0.01


cannot_step = 1

	if global.b_alpha > 3
	{
		if global.real_ending > 0
		{
		audio_stop_sound(final_battle)
		audio_stop_sound(follower_bgm)
		room_goto(room_sector_outside)
		}
		else
		{
		instance_create_depth(2994,2331,depth,obj_wakdroid_ending)
		player.x = 2800
		player.image_xscale = 1
		global.gold += 32000
		}
	global.t_b_alpha = -0.01
	instance_destroy(_light_1)
	instance_destroy()
	instance_destroy(skill_red_ball_effect_rage)
	}
}
else
{

	
	if instance_exists(_light_1)
	{
	_light_1.x = x
	_light_1.y = y
	_light_1.alpha = (1.5-alpha)*0.2
	}

	if cannot_step = 1
	{
	depth = 1000
	alpha += (1 - alpha)*0.1
	}
	else
	{
	depth = player.depth-1
	alpha += (0 - alpha)*0.1
	}
	

	if scene__ > 0 && activated != 2
	{
	obj_camera.tv_x = 1280*0.9
	obj_camera.tv_y = 720*0.9
	obj_camera.t_x = xstart
	obj_camera.t_y = y+180
	
		if !instance_exists(_light_1)
		{
		_light_1 = instance_create_depth(x,y,depth,obj_light)
		_light_1.p_id = id
		_light_1.alpha = 0.7*image_alpha
		_light_1.sprite_index = sprite64
		_light_1.image_blend = $FF4E50E5
		_light_1.light_type = 0
		_light_1.image_xscale = 10
		_light_1.image_yscale = 10
		}
	}
	else
	{
		if activated = 2
		{
		global.boss_target = id
		global.boss_name = "폭주한 왁드로이드"
		obj_camera.tv_x = 1280*1.1
		obj_camera.tv_y = 720*1.1
		obj_camera.t_x = xstart
		obj_camera.t_y = player.y
	
			if saved_real_x = -4
			{
			saved_real_x = xstart
			saved_real_y = y
			}
		}
	}



	if activated = 1
	{
		if !instance_exists(wall1)
		{
		wall1 = instance_create_depth(xstart-650,ystart-1200,player.depth+3,obj_floor_tile3)
		wall1.image_yscale = 32

		wall2 = instance_create_depth(xstart+650,ystart-1200,player.depth+3,obj_floor_tile3)
		wall2.image_yscale = 32
		wall2.image_xscale = -1
		instance_destroy(normal_mob)
		}
		
		if !audio_is_playing(quake_sfx)
		{
		var sfx = audio_play_sound(quake_sfx,0,0)
		audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
		}
	player.guarding = 2
	y -= scene__*3.1
	view_shake(0.1,0.1,1)
	scene__ += 0.0032
	
		if keyboard_check(ord(string(global.skip_key)))
		{
		scene__ += 0.0032
		y -= scene__*3.1
		global.room_brightness -= 0.001
		}
	image_blend = merge_color(c_black,c_white,scene__)
	global.playing_scene = 1
	global.never_move = 1
	global.room_brightness -= 0.001

		if !instance_exists(check__)
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "!"
		check__.target = player.id
		check__.parents = id
		}
	}
	
	

	if scene__ >= 1
	{
	global.dreamy_alpha += (1 - global.dreamy_alpha)*0.04
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
		image_xscale = sign_k(x - player.x)*0.9
		change_dir ++
		
			if y < 200
			{
				if back_my_point = 0
				{
				back_my_point = 1
				}
				
				if back_my_point > 0
				{
				back_my_point ++
				}
				
				if back_my_point > 20
				{
				var xx___ = x
				var yy___ = y
					repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
					{
					randomize()
					var dust = instance_create_depth(xx___+irandom_range(-5,5),yy___+irandom_range(-5,5),depth-1,pepsi_effect_received)
					var scale = irandom_range(20,40)/50
					dust.image_xscale = scale
					dust.image_yscale = scale
					dust.vspeed = irandom_range(-50,50)/37
					dust.hspeed = irandom_range(-50,50)/37
					dust.image_alpha = 1
					}
				var sfx = audio_play_sound(mob_faint,0,0)
				audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
				y = player.y-400
				back_my_point = 0
				}
			}
			else
			{
				if hp > 0
				{
				x += (player.x-350*random_dir - x)*0.03
				y += (player.y-400 - y)*0.03
				}
			}
	
		cannot_step = 0
	
		if global.hp > 0
		{
		timer ++
		}
		
			if change_dir > 60
			{
			random_dir = choose(-1,1)
			change_dir = 0
			}
	
			if timer > 110
			{
			var random_patturn = choose(1,2,2,3,4,4)
				if random_patturn != b_patturn
				{
				patturn = random_patturn
				b_patturn = random_patturn
				}
				else
				{
					repeat(99)
					{
					random_patturn = choose(1,2,2,3,4,4)
					
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
		image_xscale = sign_k(x - player.x)*0.9
			if patturn = 1
			{
			random_dir = choose(-1,1)
			var xx___ = x
			var yy___ = y
				repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
				{
				randomize()
				var dust = instance_create_depth(xx___+irandom_range(-5,5),yy___+irandom_range(-5,5),depth-1,pepsi_effect_received)
				var scale = irandom_range(20,40)/50
				dust.image_xscale = scale
				dust.image_yscale = scale
				dust.vspeed = irandom_range(-50,50)/37
				dust.hspeed = irandom_range(-50,50)/37
				dust.image_alpha = 1
				}
			var sfx = audio_play_sound(mob_faint,0,0)
			audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
			y = 0
			}
		patturn += 0.001

			
			if patturn = 1.1
			{
			y = 2290
			var xx___ = x
			var yy___ = y
				repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
				{
				randomize()
				var dust = instance_create_depth(xx___+irandom_range(-5,5),yy___+irandom_range(-5,5),depth-1,pepsi_effect_received)
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
			
			if patturn < 1.15 && patturn > 1.1
			{
			x += (player.x-250*random_dir - x)*0.07
			y += (2325 - y)*0.07
			}
		
			if patturn > 1.18
			{
			x += (player.x+350*random_dir - x)*0.1
				if _sfx__ = 0
				{
				var sfx = audio_play_sound(dash_attack_sfx,0,0)
				audio_sound_gain(sfx,0.08*global.master_volume*2*global.sfx_volume,0)
				
				var effect_ = instance_create_depth(x+random_dir*109,y-8,player.depth+1,down_effect)
				effect_.t_image_yscale = 0.3*3
				effect_.t_image_xscale = 0.05*3
				effect_.received = 0
	
				var effect_ = instance_create_depth(x+random_dir*107,y-8,player.depth+1,down_effect)
				effect_.t_image_yscale = 0.15*3
				effect_.t_image_xscale = 0.025*3
				effect_.received = 0
				
				var __i = choose(-1,1)
				var bl_ef = instance_create_depth(x+random_dir*104,y-8,depth-1,ef_blood_dash_attack_attacked)
				bl_ef.image_xscale = 5
				bl_ef.image_yscale = 0.8
				bl_ef.t_x = __i

				_sfx__ = 1
				}
			}
			
			if patturn = 1.2
			{
			var xx___ = x
			var yy___ = y
				repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
				{
				randomize()
				var dust = instance_create_depth(xx___+irandom_range(-5,5),yy___+irandom_range(-5,5),depth-1,pepsi_effect_received)
				var scale = irandom_range(20,40)/50
				dust.image_xscale = scale
				dust.image_yscale = scale
				dust.vspeed = irandom_range(-50,50)/37
				dust.hspeed = irandom_range(-50,50)/37
				dust.image_alpha = 1
				}
			var sfx = audio_play_sound(mob_faint,0,0)
			audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
			y = 0
			}
			
			if patturn > 1.25
			{
			_sfx__ = 0
			patturn = 0
			}
		}
		
		if patturn >= 2 && patturn < 3
		{
		image_xscale = sign_k(x - player.x)*0.9
			if patturn = 2
			{
			random_dir = choose(-1,1)
			var xx___ = x
			var yy___ = y
				repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
				{
				randomize()
				var dust = instance_create_depth(xx___+irandom_range(-5,5),yy___+irandom_range(-5,5),depth-1,pepsi_effect_received)
				var scale = irandom_range(20,40)/50
				dust.image_xscale = scale
				dust.image_yscale = scale
				dust.vspeed = irandom_range(-50,50)/37
				dust.hspeed = irandom_range(-50,50)/37
				dust.image_alpha = 1
				}
			var sfx = audio_play_sound(mob_faint,0,0)
			audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
			y = 0
			}
		patturn += 0.001
		
			if patturn = 2.07
			{
			y = 2019
			var xx___ = x
			var yy___ = y
				repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
				{
				randomize()
				var dust = instance_create_depth(xx___+irandom_range(-5,5),yy___+irandom_range(-5,5),depth-1,pepsi_effect_received)
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
			
			
			if patturn > 2.1 && patturn <= 2.4
			{
			bullet__ ++
				if bullet__%50 = 0
				{
				view_shake(11,11,1)
				var sfx = audio_play_sound(choose(swing_lightsaber_sfx1,swing_lightsaber_sfx2,swing_lightsaber_sfx3),0,0)
				audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
				
				var _ef_at = instance_create_depth(x,y,depth-1,spin_attack_devil)
				_ef_at.direction = point_direction(x,y,player.x,player.y)
				_ef_at.speed = 20
				}
			}
			
			if patturn > 2.5
			{
			patturn = 0
			var xx___ = x
			var yy___ = y
				repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
				{
				randomize()
				var dust = instance_create_depth(xx___+irandom_range(-5,5),yy___+irandom_range(-5,5),depth-1,pepsi_effect_received)
				var scale = irandom_range(20,40)/50
				dust.image_xscale = scale
				dust.image_yscale = scale
				dust.vspeed = irandom_range(-50,50)/37
				dust.hspeed = irandom_range(-50,50)/37
				dust.image_alpha = 1
				}
			var sfx = audio_play_sound(mob_faint,0,0)
			audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
			y = 0
			}
		}
		
		
		if patturn >= 3 && patturn < 4
		{
			if patturn = 3
			{
			random_dir = choose(-1,1)
			image_xscale = sign_k(x - player.x)*0.9
			var xx___ = x
			var yy___ = y
				repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
				{
				randomize()
				var dust = instance_create_depth(xx___+irandom_range(-5,5),yy___+irandom_range(-5,5),depth-1,pepsi_effect_received)
				var scale = irandom_range(20,40)/50
				dust.image_xscale = scale
				dust.image_yscale = scale
				dust.vspeed = irandom_range(-50,50)/37
				dust.hspeed = irandom_range(-50,50)/37
				dust.image_alpha = 1
				}
			var sfx = audio_play_sound(mob_faint,0,0)
			audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
			y = 0
			}
		patturn += 0.001
		
			if patturn = 3.07
			{
			y = 2248
			var xx___ = x
			var yy___ = y
				repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
				{
				randomize()
				var dust = instance_create_depth(xx___+irandom_range(-5,5),yy___+irandom_range(-5,5),depth-1,pepsi_effect_received)
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
			
			if patturn = 3.07
			{
			var sfx = audio_play_sound(laser_skill_ready,0,0)
			audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
			}
			
			if patturn > 3.07 && patturn < 3.5
			{
			x += (xstart-250*random_dir+irandom_range(-16,16) - x)*0.07
			y += (2248+irandom_range(-16,16) - y)*0.07
				if !instance_exists(skill_red_ball_effect_rage)
				{
				skill_red_ball_effect_rage = instance_create_depth(x,y-100,depth-1,red_circle_effect_devil)
				skill_red_ball_effect_rage.image_xscale = 0
				skill_red_ball_effect_rage.image_yscale = 0
				skill_red_ball_effect_rage.t_scale = 1
				}
				else
				{
				skill_red_ball_effect_rage.x += (x - skill_red_ball_effect_rage.x)*0.1
				skill_red_ball_effect_rage.y += (y-100*skill_red_ball_effect_rage.t_scale - skill_red_ball_effect_rage.y)*0.1
				skill_red_ball_effect_rage.t_scale += 0.001
				view_shake(0,0.8,0.8)
				}
			}
			
			
			if patturn > 3.5 && patturn < 3.6
			{
				if instance_exists(skill_red_ball_effect_rage)
				{
				skill_red_ball_effect_rage.t_scale -= 0.1
				}
			}
			
			if patturn = 3.6
			{
			var __ins__ = instance_create_depth(x,2370,depth-1,effect_special_skill_attacked)
			__ins__.color_1 = $FF3E2D24
			__ins__.color_2 = $FF473021
			__ins__.color_3 = $FF513524
			}
			
			if patturn = 3.62
			{
			var __ins__ = instance_create_depth(x-190,2370,depth-1,effect_special_skill_attacked)
			var __ins__ = instance_create_depth(x+190,2370,depth-1,effect_special_skill_attacked)
			}
			
			if patturn = 3.64
			{
			var __ins__ = instance_create_depth(x-190*2,2370,depth-1,effect_special_skill_attacked)
			var __ins__ = instance_create_depth(x+190*2,2370,depth-1,effect_special_skill_attacked)
			}
			
			if patturn = 3.66
			{
			var __ins__ = instance_create_depth(x-190*3,2370,depth-1,effect_special_skill_attacked)
			var __ins__ = instance_create_depth(x+190*3,2370,depth-1,effect_special_skill_attacked)
			}

			
			if patturn > 3.75
			{
			patturn = 0
			var xx___ = x
			var yy___ = y
				repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
				{
				randomize()
				var dust = instance_create_depth(xx___+irandom_range(-5,5),yy___+irandom_range(-5,5),depth-1,pepsi_effect_received)
				var scale = irandom_range(20,40)/50
				dust.image_xscale = scale
				dust.image_yscale = scale
				dust.vspeed = irandom_range(-50,50)/37
				dust.hspeed = irandom_range(-50,50)/37
				dust.image_alpha = 1
				}
			var sfx = audio_play_sound(mob_faint,0,0)
			audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
			y = 0
			}
		}
		
		
		if patturn >= 4 && patturn < 5
		{
			if patturn = 4
			{
			random_dir = choose(-1,1)
			image_xscale = sign_k(x - player.x)*0.9
			var xx___ = x
			var yy___ = y
				repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
				{
				randomize()
				var dust = instance_create_depth(xx___+irandom_range(-5,5),yy___+irandom_range(-5,5),depth-1,pepsi_effect_received)
				var scale = irandom_range(20,40)/50
				dust.image_xscale = scale
				dust.image_yscale = scale
				dust.vspeed = irandom_range(-50,50)/37
				dust.hspeed = irandom_range(-50,50)/37
				dust.image_alpha = 1
				}
			var sfx = audio_play_sound(mob_faint,0,0)
			audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
			y = 0
			}
		patturn += 0.001
			
			if patturn = 4.07
			{
			y = 1983
			var xx___ = x
			var yy___ = y
				repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
				{
				randomize()
				var dust = instance_create_depth(xx___+irandom_range(-5,5),yy___+irandom_range(-5,5),depth-1,pepsi_effect_received)
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
			
			if patturn = 4.1
			{
			var skill_red_ball_effect = instance_create_depth(x,y,depth-1,red_circle_effect)
			skill_red_ball_effect.image_xscale = 0.45
			skill_red_ball_effect.image_yscale = 0.45
			skill_red_ball_effect.t_scale = 0.65
			skill_red_ball_effect.alarm[11] = 16
			var sfx = audio_play_sound(laser_skill_ready,0,0)
			audio_sound_gain(sfx,0.15*global.master_volume*2*global.sfx_volume,0)
			view_shake(5,5,1)
			}

			if patturn = 4.2
			{
			_aaa = instance_create_depth(x-random_dir*24,y-16,depth-1,effect_special_skill_sec_attacked)
			_aaa.image_angle = point_direction(x,y,player.x,player.y)-90
			_aaa.direction = point_direction(x,y,player.x,player.y)-90
			_aaa.color_1 = c_white
			_aaa.color_2 = $FF1C1CB2
			_aaa.color_3 = $FF6D52F2
			view_shake(11,11,1)
			
			var sfx = audio_play_sound(laser_sfx_sec,0,0)
			audio_sound_gain(sfx,0.09*global.master_volume*2*global.sfx_volume,0)
			sfx_for_multiplayer(choose(swing_lightsaber_sfx2,swing_lightsaber_sfx3),0,0.1)
			}
			
			if instance_exists(_aaa)
			{
			_aaa.image_angle = point_direction(x,y,player.x,player.y)-90
			_aaa.direction = point_direction(x,y,player.x,player.y)-90
			}
			
			if patturn > 4.33
			{
				if !instance_exists(_aaa)
				{
				patturn = 0
				var xx___ = x
				var yy___ = y
					repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
					{
					randomize()
					var dust = instance_create_depth(xx___+irandom_range(-5,5),yy___+irandom_range(-5,5),depth-1,pepsi_effect_received)
					var scale = irandom_range(20,40)/50
					dust.image_xscale = scale
					dust.image_yscale = scale
					dust.vspeed = irandom_range(-50,50)/37
					dust.hspeed = irandom_range(-50,50)/37
					dust.image_alpha = 1
					}
				var sfx = audio_play_sound(mob_faint,0,0)
				audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
				y = 0
				}
			}
		}
		
/////////////////////////////////////////////////////////////////////////////////////////////////////
	}
}