/// @description Insert description here
// You can write your code in this editor
	if player.attack_laser_sec = 0 && player.attack_laser = 0 && player.suicide = 0 && player.sting_attack = 0
	{
	obj_camera.tv_x = 1280*0.9
	obj_camera.tv_y = 720*0.9
	obj_camera.v_x = 1280*0.9
	obj_camera.v_y = 720*0.9
	}
	
if global.got_sec_phase = 1
{
	if hp > 300
	{
	hp = 100
	check_hp = 100
	}
}

global.room_brightness += (0.6 - global.room_brightness)*0.04

if y > 2404
{
vspeed = 0
gravity = 0
}

if damaged_count < 0
{
damaged_count = 0
}

if damaged_count >= 150
{
damaged_count = 150
}

if !instance_exists(wall_1)
{
wall_1 = instance_create_depth(4940,1728,depth,obj_floor_tile3)
wall_1.image_yscale = 5
player.x = 5130
global.save_point_x = 5130
}

check_floor = -4
for(var i = 0; i < 64; i++)
{
	if place_meeting(x,y+i,floor_parents)
	{
	check_floor = y+i
	break;
	}
}


if audio_is_playing(follower_bgm)
{
audio_sound_gain(code.last_bgm,0.1*global.master_volume*global.bgm_volume*scene__,0)
}

if !audio_is_playing(follower_bgm)
{
var sfx = audio_play_sound(laser_skill_ready,0,0)
audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
code.last_bgm = audio_play_sound(follower_bgm,0,1)
}

	if dash_attack > 0
	{
	movement_speed += (0 - movement_speed)*0.03
	sprite_index = pl_move_skeleton_rush_slice_black
		if global.none_wakgood_mode = true
		{
		sprite_index = pl_move_skeleton_rush_slice_black278
		}
	dash_attack += 0.2


	image_index = dash_attack

		if dash_attack < 2
		{
		movement_speed += (0 - movement_speed)*0.015
		}
	
		if dash_attack > 3
		{
		movement_speed += (0 - movement_speed)*0.15
		}
	
		if dash_attack >= 2.3 && dash_attack < 2.83
		{
		movement_speed = -image_xscale*64
		dash_attack = 2.83
	

		sfx_for_multiplayer(dash_attack_sfx,0,0.08)

	
			repeat(irandom_range(12,18))
			{
			randomize()
			var dust = instance_create_depth(x+irandom_range(-2,2),y+28+irandom_range(-2,2),depth+1,pepsi_effect)
			dust.image_xscale = 0.135
			dust.image_yscale = 0.135
			dust.vspeed = -irandom_range(100,200)/200
			dust.hspeed = (-movement_speed*irandom_range(10,50)/250)
			dust.image_alpha = 0.4
			}
		
			repeat(irandom_range(18,24))
			{
			randomize()
			var dust = instance_create_depth(x+irandom_range(-2,2),y+3+irandom_range(-5,5),depth+1,pepsi_effect)
			dust.image_xscale = 0.145
			dust.image_yscale = 0.145
			dust.vspeed = irandom_range(-220,100)/200
			dust.hspeed = (-movement_speed*irandom_range(10,50)/330)
			dust.image_alpha = 0.4
			}
		}
	
		if dash_attack >= 5 && dash_attack < 5.9
		{
		dash_attack = 5.9
		}
	
		if dash_attack >= 4 && dash_attack < 4.04
		{
		dash_attack = 4.04
		var __i = choose(-1,1)
		var bl_ef = instance_create_depth(x-movement_speed*14,y-8,depth-1,ef_blood_dash_attack_attacked)
		bl_ef.image_xscale = 2
		bl_ef.image_yscale = 0.42
		bl_ef.t_x = __i
	
		var __i = -movement_speed/25
		var bl_ef = instance_create_depth(x-movement_speed*14,y-8,depth-1,ef_blood)
		bl_ef.image_xscale = 2.3
		bl_ef.image_yscale = 0.42
		bl_ef.t_x = __i
		bl_ef.sfx_play = true
	
		var effect_ = instance_create_depth(x-movement_speed*19,y-8,player.depth+1,down_effect)
		effect_.t_image_yscale = 0.3*3
		effect_.t_image_xscale = 0.05*3
		effect_.received = 0
	
		var effect_ = instance_create_depth(x-movement_speed*17,y-8,player.depth+1,down_effect)
		effect_.t_image_yscale = 0.15*3
		effect_.t_image_xscale = 0.025*3
		effect_.received = 0
		}

		if dash_attack > 10
		{
		dash_attack = 0
		cannot_move = 0
		hit_cooltime = 0
		gravity_ignore = 0
		hit_motion = 0
		sprite_index = move_sprite
			if global.playing_scene = 0
			{
			spin = 1
			}
		image_index = 0
		}
	}



if phase = 1
{
	if global.b_alpha > 2
	{
	x = xstart
	player.x = obj_andience1194.x+300
	global.t_b_alpha = -0.01
	}
}

if phase = 0
{
obj_camera.t_x = 5650
	if scene__ <= 1
	{
	scene__ += 0.0032
	}
	
	if hit_cooltime > 0
	{
		if attack_paturn < 2
		{
		attack_paturn = 0
		}
	}

	
	if hp < 200
	{
	attack_laser_sec = 0
	patturn = 0
	image_index = 0
	hit_cooltime = 0
	cannot_move = 0
	sprite_index = move_sprite
	attack_ = 0
	scene__ = 0
	image_angle = 0
	global.t_b_alpha = 2.01
	obj_andience1194.message_phase = 18
	obj_andience1194.interecting_now = 1
	phase = 1
	hp = 200
	}
	
	
	if sprite_index = move_sprite
	{
		if floor(image_index) = 3 || floor(image_index) = 9
		{
			if !audio_is_playing(footstep_sfx)
			{
			var sfx = audio_play_sound(footstep_sfx,0,0)
			audio_sound_gain(sfx,(1 - point_distance(x,y,player.x,player.y)/64)*0.2*global.master_volume*2*global.sfx_volume,0)
			}
		}
	}



	if attack_paturn = 0
	{
		if hit_motion = -1
		{
		sprite_index = hurt_sprite
		image_index = 1
		attack_ = 0
		keep_attacking = 0
		attack_sfx_on = 0
		gravity_ignore = 0
			if vspeed < 0 && gravity = 0
			{
			gravity = 0.1
			}
		}
		else if hit_motion > 0
		{
		sprite_index = hurt_sprite
		image_index = 0
		attack_ = 0
		keep_attacking = 0
		attack_sfx_on = 0
		gravity_ignore = 0
			if vspeed < 0 && gravity = 0
			{
			gravity = 0.1
			}
		}
	}


	if sprite_index = hurt_sprite
	{
	hurt_motion_time_for_bug++
		if hurt_motion_time_for_bug > 300
		{
		attack_ = 0
		hit_motion = 0
		keep_attacking = 0
		cannot_move = 0
		gravity_ignore = 0
		hurt_motion_time_for_bug = 0
		}
	}
	else
	{
	hurt_motion_time_for_bug = 0
	}


	if rage_mode > 0
	{
	red_glow_effect(sprite_index,image_index,0.2)

	rage_mode -= 0.001
		if damaged_count != 0
		{
		rage_mode += damaged_count/10000
		damaged_count = 0
		}
	}


	w_alpha += (-0.01 - w_alpha)*0.1

	if hp != check_hp
	{
	var _cal = abs(check_hp - hp)
	check_hp = hp
	damaged_count += _cal
	show_debug_message(_cal)
	}

	if attack_paturn = 0 && gravity <= 0
	{
	image_angle = 0
	test_mob_type = 0
	
	
		if attack_delay < 230 && (sprite_index = move_sprite || sprite_index = attack_spr || sprite_index = move_spin)
		{
			if (abs(x - player.x) <= 75 && attack_ = 0) && spin = 0 && dash_attack = 0
			{
			var random_val = irandom_range(0,100)
				if random_val <= 10
				{
				spin = 1
				}
			}
		
		
			if rage_mode > 0.6 && abs(x - player.x) > 75 && rage_mode < 0.8 && attack_paturn = 0
			{
			attack_paturn = 3
			}
		
		
			if spin > 0
			{
			sprite_index = move_spin
			spin += 0.3
			cannot_move = 1
			image_index = spin
				if spin = 1
				{
				sfx_for_multiplayer(spin_sfx,0,0.12)
				}
			
				if hit_cooltime > 0
				{
				cannot_move = 0
				sprite_index = move_sprite
				spin = 0
				var random_at = percentage_k(70)
					if random_at = 1
					{
						if dash_attack = 0 && attack_ = 0 && spin = 0
						{
						attack_ = 1
						}
					}
					else
					{
						if dash_attack = 0 && attack_ = 0 && spin = 0
						{
						dash_attack = 1
						}
					}
				}


				if spin <= 11
				{
					for(var i = 0; i <= (11-spin); i++)
					{
						if !place_meeting(x-image_xscale*16,y-16,floor_parents)
						{
						x += -sign(image_xscale)*0.7
						}
						else
						{
						break;
						}
					}
				}
	
				if spin >= 11
				{
				cannot_move = 0
				sprite_index = move_sprite
				spin = 0
					if dash_attack = 0 && attack_ = 0
					{
					var random_at = percentage_k(66)
						if random_at = 1
						{
							if dash_attack = 0 && attack_ = 0 && spin = 0
							{
							attack_ = 1
							}
						}
						else
						{
							if dash_attack = 0 && attack_ = 0 && spin = 0
							{
							dash_attack = 1
							}
						}
					}
				}
			}
		
	
		
		
			if (abs(x - player.x) <= 64 || attack_ > 0) && spin = 0
			{
			sprite_index = attack_spr
			image_index = attack_
			movement_speed += (0 - movement_speed)*0.1
			attack_ += 0.15
				if rage_mode > 0
				{
				attack_ += 0.02
				}
				
				if (attack_ > 3.9 && attack_ < 4.3) || (attack_ > 6.8 && attack_ < 7.3) || (attack_ > 12.8 && attack_ < 13.3)
				{
					if image_xscale = 1 && player.x > x+64
					{
					attack_ = 0
					attack_sfx_on = 0
					keep_attacking = 0
					sprite_index = move_sprite
					}
				
					if image_xscale = -1 && player.x < x-64
					{
					attack_ = 0
					attack_sfx_on = 0
					keep_attacking = 0
					sprite_index = move_sprite
					}
				}
		
				if attack_sfx_on = 0 && (floor(image_index) = 2)
				{
				sfx_for_multiplayer(swing_sfx1,0,0.4)
				sfx_for_multiplayer(swing_lightsaber_sfx1,0,0.1)
				attack_sfx_on ++
					if !place_meeting(x-image_xscale*32,y,floor_parents)
					{
					movement_speed += (-image_xscale)*6.1
					}
	
				var _ef = instance_create_depth(x,y,depth-1,effect_attack1_attacked)
				_ef.image_index = 28
				_ef.image_xscale = image_xscale
				_ef.image_alpha = 0.8
				}

				if attack_sfx_on = 0 && (floor(image_index) = 5) // 6
				{
				sfx_for_multiplayer(swing_sfx2,0,0.4)
				sfx_for_multiplayer(swing_lightsaber_sfx2,0,0.1)
				attack_sfx_on ++
					if !place_meeting(x-image_xscale*32,y,floor_parents)
					{
					movement_speed += (-image_xscale)*4.2
					}
	
				var _ef = instance_create_depth(x,y,depth-1,effect_attack2_attacked)
				_ef.image_index = 29
				_ef.image_xscale = image_xscale
				_ef.image_alpha = 0.8
				}

				if attack_sfx_on = 0 && (floor(image_index) = 8) // 11
				{
				sfx_for_multiplayer(swing_sfx3,0,0.4)
				sfx_for_multiplayer(swing_lightsaber_sfx3,0,0.1)
				attack_sfx_on ++
					if !place_meeting(x-image_xscale*32,y,floor_parents)
					{
					movement_speed += (-image_xscale)*5.5
					}
	
				var _ef = instance_create_depth(x,y,depth-1,effect_attack3_attacked)
				_ef.image_index = 30
				_ef.image_xscale = image_xscale
				_ef.image_alpha = 0.8
				}
		
				if attack_sfx_on = 0 && (floor(image_index) = 14)//new
				{
				sfx_for_multiplayer(swing_sfx3,0,0.4)
				sfx_for_multiplayer(swing_lightsaber_sfx3,0,0.1)
				attack_sfx_on ++
					if !place_meeting(x-image_xscale*32,y,floor_parents)
					{
					movement_speed += (-image_xscale)*5.5
					}
	
				var _ef = instance_create_depth(x,y,depth-1,effect_attack4_attacked)
				_ef.image_index = 31
				_ef.image_xscale = image_xscale
				_ef.image_alpha = 0.8
				}


					if attack_ > 4.25 && attack_ < 4.5 && keep_attacking = 0
					{
					keep_attacking ++
					attack_sfx_on = 0
					}
	
					if attack_ > 6.2 && attack_ < 6.5 && keep_attacking = 1
					{
					keep_attacking ++
					attack_sfx_on = 0
					}
	
					if attack_ > 10.2 && attack_ < 10.5 && keep_attacking = 2
					{
					keep_attacking ++
					attack_sfx_on = 0
					}
			
					if attack_ > 16.1 && keep_attacking = 3
					{
					attack_ = 0
					attack_sfx_on = 0
					attack_delay = 230
					keep_attacking = 0
					sprite_index = move_sprite
					}

				}
			}


		if damaged_count >= 150
		{
			if abs(player.x - x) <= 256
			{
			rage_mode = 1
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
			damaged_count = 0
			var a_____ = instance_create_depth(x,y,depth,rage_mode_knockback_attacked)
			a_____.image_xscale = 3
			a_____.image_yscale = 3
			var skill_red_ball_effect_rage = instance_create_depth(x,y,depth-1,red_circle_effect)
			skill_red_ball_effect_rage.image_xscale = 0.45
			skill_red_ball_effect_rage.image_yscale = 0.45
			skill_red_ball_effect_rage.t_scale = 0.65
			skill_red_ball_effect_rage.alarm[11] = 7
			}
		}
	
	
		if damaged_count >= 100 || rage_mode > 0.9 && attack_paturn = 0
		{
			if abs(player.x - x) >= 220 && global.b_alpha < 0.1
			{
			var sfx = audio_play_sound(laser_skill_ready,0,0)
			audio_sound_gain(sfx,0.15*global.master_volume*2*global.sfx_volume,0)
				
			if global.voice_option = 0
			{
			var sfx = audio_play_sound(ready_swording,0,0)
			audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
			}
		
			skill_red_ball_effect = instance_create_depth(x,y,depth-1,red_circle_effect)
			skill_red_ball_effect.image_xscale = 0.45
			skill_red_ball_effect.image_yscale = 0.45
			skill_red_ball_effect.t_scale = 0.65
			attack_paturn = 2
			damaged_count = 0
			image_xscale = sign_k(x - player.x)
			attack_laser_sec = 1
			}
		}
	
	

		if sprite_index = move_sprite
		{
		attack_delay += 1+rage_mode*2
		if attack_delay%120 = 0
		{
		show_debug_message(attack_delay)
		}
		image_xscale = -sign_k(player.x - x)
			if attack_delay > 40
			{
			movement_speed += (-sign(image_xscale)*(9+rage_mode*5) - movement_speed)*0.25
			}
			else
			{
			movement_speed += (-sign(image_xscale)*(5+rage_mode*5) - movement_speed)*0.1
			}
			
			if abs(x - player.x) <= 150 && abs(player.y - y) > 32
			{
			attack_delay += 5
			}
			

			if attack_delay > 240
			{
				if abs(x - player.x) <= 500
				{
					if rage_mode > 0
					{
					attack_paturn = choose(1,3)
					}
					else
					{
					attack_paturn = 1
					}
				attack_delay = irandom_range(-120,0)
				}
			}
		}
	}
	else
	{
	test_mob_type = 1
	}

	//공격 패턴 1
	if attack_paturn >= 1 && attack_paturn < 2
	{
		if w_alpha <= 0
		{
			if attack_paturn = 1.1
			{
			var sfx = audio_play_sound(spin_attack_sfx,0,0)
			audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
			sfx_for_multiplayer(swing_lightsaber_sfx2,0,0.1)
			image_xscale = -sign_k(player.x - x)
			sprite_index = jump_spr
			attack_paturn = 1.2
			vspeed = 0
			}
		
			if attack_paturn = 1
			{
			attack_paturn = 1.1
			movement_speed += (0 - movement_speed)*0.1
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
			w_alpha = 5
			gravity_ignore = 1
			y -= 2
			gravity = 0.1
			vspeed = -3.5
			image_xscale = -sign_k(player.x - x)
			sprite_index = jump_spr
			}
		
			if attack_paturn >= 1.2 && attack_paturn < 1.3
			{
			movement_speed += (-20*sign_k(image_xscale) - movement_speed)*0.07

			gravity = 0
			vspeed = 0
			gravity_ignore = 1
			sprite_index = pl_move_skeleton_spin_attack1_1
			if global.none_wakgood_mode = true
			{
			sprite_index = pl_move_skeleton_spin_attack1249
			}
			image_index = 8
		
			spin_attack_delay++
			var _angle = (spin_attack_delay*60+10)*sign(image_xscale)
			var _ef = instance_create_depth(x,y,depth+1,effect_attacked)
			_ef.image_index = 7
			_ef.image_xscale = image_xscale
			_ef.image_alpha = 0.6
			_ef.image_angle = image_angle+_angle
			_ef.pertential_vspeed = vspeed
		
			if rage_mode > 0
			{
			var ef = instance_create_depth(x,y,depth+1,gyu_seong_red_ef)
			ef.sprite_index = sprite_index
			ef.image_index = 7
			ef.image_xscale = image_xscale
			ef.image_yscale = image_yscale
			ef.alpha = 0.2*image_alpha
			ef.image_angle = image_angle+_angle
			}
			
				if spin_attack_delay > 1
				{
				image_angle += 120*sign(image_xscale)
				spin_attack_delay = 0
				}
		
				if abs(x - player.x) <= 64 //|| place_meeting(x,y+1,floor_parents)
				{
				gravity = 0.5
				attack_paturn += 0.01
				movement_speed = -10*sign_k(image_xscale)
				}
			
				if attack_paturn > 1.2
				{
				//image_xscale = -sign_k(player.x - x)
				vspeed += 0.5
				gravity_ignore = 0
				movement_speed += (0 - movement_speed)*0.02
				attack_paturn += 0.002
				}
			}
		
			if attack_paturn >= 1.3
			{
			image_angle = 0
			movement_speed += (0 - movement_speed)*0.04
			image_index = 0
			sprite_index = crouch_spr
				if abs(movement_speed) < 1
				{
				sprite_index = move_sprite
				spin_attack_delay = 0
				attack_paturn = 0
				}
			}
		}
	}



	//패턴 2 (레이저)
	if attack_paturn >= 2 && attack_paturn < 3
	{
	movement_speed = 0
	attack_laser_sec += 0.12


		if instance_exists(skill_red_ball_effect)
		{
			if floor(image_index) < 1
			{
			skill_red_ball_effect.x = x+10*image_xscale
			skill_red_ball_effect.y = y+15
			}
	
			if floor(image_index) >= 1 && floor(image_index) < 2
			{
			skill_red_ball_effect.x = x+16*image_xscale
			skill_red_ball_effect.y = y+10
			}
	
			if floor(image_index) >= 2 && floor(image_index) <= 4
			{
			skill_red_ball_effect.x = x+14*image_xscale
			skill_red_ball_effect.y = y-6
			}
	
			if floor(image_index) >= 5 && floor(image_index) <= 7
			{
			skill_red_ball_effect.x = x+14*image_xscale
			skill_red_ball_effect.y = y-5
			}
	
			if floor(image_index) >= 8 && floor(image_index) <= 9
			{
			skill_red_ball_effect.x = x+14*image_xscale
			skill_red_ball_effect.y = y-4
			}
	
			if floor(image_index) >= 10
			{
			skill_red_ball_effect.x = x-9*image_xscale
			skill_red_ball_effect.y = y+15
			skill_red_ball_effect.des = 1
			}
		}
	
	sprite_index = pl_move_skeleton_laser_skill_sec_black
	if global.none_wakgood_mode = true
	{
	sprite_index = pl_move_skeleton_laser_skill_sec_black279
	}
	
	
	
		if attack_laser_sec < 13
		{
		image_index = floor(attack_laser_sec)
		}
		else
		{
		image_index = 12
		}
	
	
		if floor(image_index) >= 11 && attack_laser_sfx = 0
		{
		attack_laser_sfx = 1
	
	
		var effect_ = instance_create_depth(x-image_xscale*16,y-18,depth+1,down_effect_for_laser)
		effect_.image_blend = c_black
		effect_.t_image_xscale = 0.3*4*image_yscale/2
		effect_.t_image_yscale = 0.05*3*image_yscale/2
		effect_.image_xscale = 2.5/2
		effect_.image_yscale = 0.8/2
		effect_.image_xscale = 2.5
		effect_.image_yscale = 0.8
		effect_.alarm[1] = 2
		if image_xscale = -1
		{
		effect_.image_angle = 90
		}
		else
		{
		effect_.image_angle = 270
		}

		
		var sfx = audio_play_sound(laser_sfx_sec,0,0)
		audio_sound_gain(sfx,0.09*global.master_volume*2*global.sfx_volume,0)
		sfx_for_multiplayer(choose(swing_lightsaber_sfx2,swing_lightsaber_sfx3),0,0.1)
		}
	
		if floor(image_index) > 11 && attack_laser_sfx = 1
		{
		attack_laser_sfx = 2
		var _aaa = instance_create_depth(x-image_xscale*24,y-16,player.depth-1,effect_special_skill_sec_attacked)
			if image_xscale = 1
			{
			_aaa.image_angle = 90
			}
			else
			{
			_aaa.image_angle = 270
			}
		_aaa.color_1 = c_white
		_aaa.color_2 = $FF1C1CB2
		_aaa.color_3 = $FF6D52F2
		_aaa.maximum_size = 0.4
		}
	
		if attack_laser_sec > 18
		{
		attack_laser_sfx = 0
		attack_laser_sec = 0
		attack_paturn = 0
		sprite_index = move_sprite
		image_index = 0
		}
	}



	//공격 패턴 3
	if attack_paturn >= 3 && attack_paturn < 4
	{
		if w_alpha <= 0
		{
			if attack_paturn = 3.1
			{
			var sfx = audio_play_sound(spin_attack_sfx,0,0)
			audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
			sfx_for_multiplayer(swing_lightsaber_sfx2,0,0.1)
			image_xscale = -sign_k(player.x - x)
			sprite_index = jump_spr
			attack_paturn = 3.2
			vspeed = 0
			}
		
			if attack_paturn = 3
			{
			attack_paturn = 3.1
			movement_speed += (0 - movement_speed)*0.1
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
			w_alpha = 5
			y -= 2
			vspeed = -8
			image_xscale = -sign_k(player.x - x)
			sprite_index = jump_spr
			}
		
			if attack_paturn >= 3.2
			{
				if attack_paturn < 3.3
				{
				gravity = 0.4
				movement_speed += (-20*sign_k(image_xscale) - movement_speed)*0.07
				sprite_index = pl_move_skeleton_spin_attack1_1
				image_index = 8
		
				spin_attack_delay++
				var _angle = (spin_attack_delay*60+10)*sign(image_xscale)
				var _ef = instance_create_depth(x,y,depth+1,effect_attacked)
				_ef.image_index = 7
				_ef.image_xscale = image_xscale
				_ef.image_alpha = 0.6
				_ef.image_angle = image_angle+_angle
				_ef.pertential_vspeed = vspeed
		
				red_glow_effect(sprite_index,4,0.2)
			
					if spin_attack_delay > 1
					{
					image_angle += 120*sign(image_xscale)
					spin_attack_delay = 0
					}
				
					if abs(x - player.x) <= 64
					{
					vspeed += 0.15
					}
			
			
					if place_meeting(x,y+1,floor_parents)
					{
					sfx_for_multiplayer(down_attack_sfx,0,0.5)
					sfx_for_multiplayer(bomb_sfx,false,0.1)
					attack_target_x = x
					attack_paturn = 3.3
					movement_speed = -4*sign_k(image_xscale)
					sprite_index = jump_spr
					sfx_for_multiplayer(guard,0,0.1)
						repeat(8)
						{
						var _ef = instance_create_depth(x-image_xscale*4,y+irandom_range(-13,0),depth-1,effect_spark)
						_ef.hspeed = irandom_range(5,20)*choose(-1,1)
						_ef.vspeed = irandom_range(-4,2)
						}
					}
				}
			
				if attack_paturn >= 3.3
				{
				attack_paturn += 0.01
				down_attack_motion_dilay++
					if down_attack_motion_dilay > 4
					{
					var xx1 = attack_target_x+down_attack_with_rage_dis
					var yy = check_floor+27
						if place_meeting(xx1,yy+2,floor_parents)
						{
						var _effect = instance_create_depth(xx1,yy,player.depth-1,effect_quake_attacked)
						_effect.image_xscale = 1.5;
						_effect.image_yscale = 2;
						}
		
					var xx2 = attack_target_x-down_attack_with_rage_dis
						if place_meeting(xx2,yy+2,floor_parents)
						{
						var _effect = instance_create_depth(xx2,yy,player.depth-1,effect_quake_attacked)
						_effect.image_xscale = 1.5;
						_effect.image_yscale = 2;
						}
		
					down_attack_with_rage_dis += 64
					down_attack_motion_dilay = 0
					}
				
				movement_speed += (0 - movement_speed)*0.02
				image_xscale = -sign_k(player.x - x)
				gravity_ignore = 0
				}
			}
		
			if attack_paturn >= 3.45
			{
			image_angle = 0
			movement_speed += (0 - movement_speed)*0.04
			image_index = 0
			sprite_index = crouch_spr
				if gravity <= 0
				{
				down_attack_motion_dilay = 0
				down_attack_with_rage_dis = 0
				sprite_index = move_sprite
				spin_attack_delay = 0
				attack_paturn = 0
				dash_attack = 0
				cannot_move = 0
				hit_cooltime = 0
				gravity_ignore = 0
				hit_motion = 0
				}
			}
		}
	}
}








var dis____ = movement_speed*0.7
for(var i = abs(dis____); i > 0; i--)
{
	if !place_meeting(x+(i+32)*sign(movement_speed),y,floor_parents)
	{
	var check_floor_exists = -4
		for(var ii = 0; ii <= 96; ii++)
		{
			if position_meeting(x+(i+24)*sign(movement_speed),y+ii,floor_parents)
			{
			check_floor_exists = 1
			break;
			}
		}


		if check_floor_exists != -4
		{
		x += i*sign(movement_speed)
		}
		else
		{
		movement_speed = 0
		}
	break;
	}
	else
	{
	movement_speed = 0
		if attack_ = 0 && dash_attack = 0
		{
		t_x = player.x
		}
	}
}


if check_floor != -4 && knocked_down_ef = 0 && attack_paturn = 0
{
movement_speed += (0 - movement_speed)*0.05
}

if attack_paturn = 0
{
	if hit_motion > 0
	{
	sprite_index = hurt_sprite
	}
	else
	{
		if hit_motion != -1
		{
			if attack_ = 0 && spin = 0 && dash_attack = 0
			{
			sprite_index = move_sprite
			}
		}
	}
}

if hit_cooltime = 0 && gravity_ignore = 0
{
	if place_meeting(x,y+1,floor_parents) || place_meeting(x,y+vspeed,floor_parents)
	{
	gravity = 0
	vspeed = 0
	y = y+vspeed
		if hit_stand_up = 1
		{
		hit_stand_up = 0
		alarm[2] = 45
		}
	}
	else
	{
	gravity = 0.2
	}
}

if place_meeting(x,y+1.3,floor_parents)
{
	if hit_motion > 0 && knocked_down_ef = 0
	{
	hit_motion = -1
	alarm[4] = 30
	}
}
else
{
	if !place_meeting(x,y+1.3,floor_parents)
	{
		if hit_motion != 1 && knocked_down_ef = 0
		{
		hit_motion = 1
		alarm[4] = 30
		}
	}
}


t_x = x
repeat(100)
{
	if place_meeting(x,y+0.2,floor_parents)
	{
	y -= 0.1
		if hit_stand_up = 1
		{
		hit_stand_up = 0
		alarm[2] = 45
		}
	}
	else
	{
	break;
	}
}

if sprite_index = move_sprite
{
	if abs(movement_speed) < 4
	{
	image_index += abs(movement_speed)*0.12
	}
	else
	{
	image_index += 4*0.12
	}
}

if image_index > image_number
{
image_index = 0
}