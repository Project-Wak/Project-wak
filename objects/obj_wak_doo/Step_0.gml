/// @description Insert description here
// You can write your code in this editor
image_blend = c_white

if global.none_wakgood_mode = true
{
sprite_index = wak_doo264
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
left_hand.cannot_step = 1
left_hand.gravity = 0
left_hand.vspeed = 0
right_hand.cannot_step = 1
right_hand.gravity = 0
right_hand.vspeed = 0

y += 1.5
left_hand.y += 1.5
right_hand.y += 1.5

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
			
		
	var a___ = instance_create_depth(x,left_hand.y,depth,rage_mode_knockback_attacked)
	a___.image_xscale = 3
	a___.image_yscale = 2.3
		
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
		repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
		{
		randomize()
		var random_target = left_hand
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
		var random_target = right_hand
		var dust = instance_create_depth(random_target.x+irandom_range(-60,60),random_target.y+irandom_range(-60,60),random_target.depth-1,pepsi_effect_received)
		var scale = irandom_range(20,40)/50
		dust.image_xscale = scale
		dust.image_yscale = scale
		dust.vspeed = irandom_range(-50,50)/25
		dust.hspeed = irandom_range(-50,50)/25
		dust.image_alpha = 1
		}
		
	
	dead_scene = 0
	var test_mob = instance_create_depth(xstart-900,ystart+600,player.depth+3,mob_spawn_here)
	test_mob.t_y = -900
	test_mob.mob_type = obj_simhae_doo
	test_mob.xscale = 1.1
	test_mob.yscale = 1.1
	test_mob.mob_var = -6
	
	give_item(0,6)
	var random_drop_ = percentage_k(50)
	if random_drop_ = 1
	{
	give_item(0,0)
	}
	else
	{
	give_item(0,1)
	}
	
	global.gold += 8000
	global.left_time += 6*global.time_plusment
		if global.killed_first_boss = 0
		{
		global.show_guide_mes = "보스 레이드\n\n보스 몹을 잡게 되면, 왁드로이드의 완성을 늦출수 있다.\n보스를 잡을때 마다 D-day가 6시간씩 연장되며\n(쉬움 난이도의 경우 12시간씩 연장된다)\n\n보스 클리어시 다음 구역으로 이동할수 있게 해주는 '키카드'를 드랍한다.\n\n(참고로, 보스는 여러번 반복해서 잡을수 있다)"
		global.show_guide_mes_spr = 4
		global.killed_first_boss = 1
		}
	
	instance_destroy(left_hand)
	instance_destroy(right_hand)
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

if scene__ > 0 && activated != 2
{
	if global.show_credits = 0
	{
		if player.attack_laser_sec = 0 && player.attack_laser = 0 && player.suicide = 0 && player.sting_attack = 0
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
		global.boss_name = "프로토타입 거대 왁두 mk.2"
			if player.attack_laser_sec = 0 && player.attack_laser = 0 && player.suicide = 0 && player.sting_attack = 0
			{
			obj_camera.tv_x = 1280
			obj_camera.tv_y = 720
			}
			
			if global.none_wakgood_mode = true
			{
			global.boss_name = "프로토타입 거대 경비봇 mk.2"
			}
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
audio_sound_gain(bgm,0.1*global.master_volume*global.bgm_volume*scene__,0)
}

if activated = 1
{

	if !instance_exists(wall1)
	{
	wall1 = instance_create_depth(2368-200,512,player.depth+3,obj_floor_tile3)
	wall1.image_yscale = 4.5

	wall2 = instance_create_depth(3136+200,512,player.depth+3,obj_floor_tile3)
	wall2.image_yscale = 4.5
	}
	
	if !audio_is_playing(quake_sfx) && global.show_credits = 0
	{
	var sfx = audio_play_sound(quake_sfx,0,0)
	audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
	}
player.guarding = 2
y -= scene__*3.1
left_hand.y -= scene__*3.1
right_hand.y -= scene__*3.1
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
	bgm = audio_play_sound(boss_bgm,0,1)
	}
	
	if !instance_exists(check__) && player.image_alpha > 0
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "!"
	check__.target = player.id
	check__.parents = id
	}
	
	if keyboard_check(ord(string(global.skip_key)))
	{
	alpha -= 0.01
	scene__ += 0.0032
	y -= scene__*3.1
	left_hand.y -= scene__*3.1
	right_hand.y -= scene__*3.1
	}
}

if scene__ >= 1
{
player.assult_mode = 300
activated = 2
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
		left_hand.image_angle += (-8 - left_hand.image_angle)*0.1
		right_hand.image_angle += (8 - right_hand.image_angle)*0.1
		left_hand.x += (saved_real_x-320 - left_hand.x)*0.08
		right_hand.x += (saved_real_x+320 - right_hand.x)*0.08
		left_hand.y += (saved_real_y+140 - left_hand.y)*0.08
		right_hand.y += (saved_real_y+140 - right_hand.y)*0.08
		}
	
	obj_hand.cannot_step = 0
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
		var random_patturn = choose(1,2,2,3,3)
			if random_patturn != b_patturn
			{
			patturn = random_patturn
			b_patturn = random_patturn
			}
			else
			{
				repeat(99)
				{
				random_patturn = choose(1,2,2,3,3)
					
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

	if patturn >= 1 && patturn < 2
	{
	left_hand.image_angle += (-90 - left_hand.image_angle)*0.1
	right_hand.image_angle += (90 - right_hand.image_angle)*0.1
	left_hand.x += (saved_real_x-400 - left_hand.x)*0.05
	right_hand.x += (saved_real_x+400 - right_hand.x)*0.05
	left_hand.y += (saved_real_y-70 - left_hand.y)*0.05
	right_hand.y += (saved_real_y-70 - right_hand.y)*0.05
		
	obj_hand.cannot_step = 1
	cannot_step = 1
		if patturn = 1 && global.show_credits = 0
		{
		var sfx = audio_play_sound(laser_skill_ready,0,0)
		audio_sound_gain(sfx,0.15*global.master_volume*2*global.sfx_volume,0)
		}
		
		if patturn >= 1.32 && patturn <= 1.7
		{
			if patturn = 1.32 && global.show_credits = 0
			{
			var sfx = audio_play_sound(laser_skill_using,0,0)
			audio_sound_gain(sfx,0.05*global.master_volume*2*global.sfx_volume,0)
			view_shake(12,12,1)
			}
			
			if !instance_exists(laser1)
			{
			var _dir = sign_k(player.x - x)
			//saved_player_x = player.x
			//saved_player_y = player.y
			saved_player_dir = _dir
			
			
			laser1 = instance_create_depth(x-30,y,player.depth-2,block_laser)
			laser1.width_ = 20
			laser1.x2 = x-30
			laser1.y2 = y
			if _dir = 1
			{
			laser1.direction = -_dir*30
			}
			else
			{
			laser1.direction = 180-_dir*30
			}
			laser1.damage_able = 220
			laser1.color_ = $FF9F2FED
			laser1.image_alpha = 0
			}
			else
			{
			view_shake(0.1,0.1,1)
				if patturn > 1.5
				{
				laser1.direction -= saved_player_dir
				}
				
				if laser1.image_alpha < 1.1
				{
				laser1.image_alpha += 0.1
				}
			}
			
			if !instance_exists(laser2)
			{
			laser2 = instance_create_depth(x+30,y,player.depth-2,block_laser)
			laser2.width_ = 20
			laser2.x2 = x+30
			laser2.y2 = y
			if _dir = 1
			{
			laser2.direction = -_dir*30
			}
			else
			{
			laser2.direction = 180-_dir*30
			}
			laser2.damage_able = 220
			laser2.color_ = $FF9F2FED
			laser2.image_alpha = 0
			}
			else
			{
				if patturn > 1.5
				{
				laser2.direction -= saved_player_dir
				}
				if laser2.image_alpha < 1.1
				{
				laser2.image_alpha += 0.1
				}
			}
		}
		
		if patturn > 1.7
		{
			if instance_exists(laser1)
			{
			laser1.image_alpha -= 0.1
				if laser1.image_alpha <= 0
				{
				instance_destroy(laser1)
				}
			}
			
			if instance_exists(laser2)
			{
			laser2.image_alpha -= 0.1
				if laser2.image_alpha <= 0
				{
				instance_destroy(laser2)
				}
			}
		}
		
	patturn += 0.002
		if patturn > 1.8
		{
		patturn = 0
		}
	}
}

if patturn >= 2 && patturn < 3
{
cannot_step = 1
obj_hand.cannot_step = 0
	if patturn >= 2 && patturn < 2.1
	{
	left_hand.y += (saved_real_y-100 - left_hand.y)*0.05
	right_hand.y += (saved_real_y-100 - right_hand.y)*0.05
	patturn += 0.001
	}
	
	
	if patturn = 2.1
	{
		if left_hand.vspeed < 4
		{
		left_hand.vspeed = 6
		right_hand.vspeed = 6
			if global.show_credits = 0
			{
			var sfx = audio_play_sound(jump_attack_sfx,0,0)
			audio_sound_gain(sfx,0.5*global.master_volume*2*global.sfx_volume,0)
			}
		}
	left_hand.vspeed += 1.6
	left_hand.gravity = 0.35
	right_hand.vspeed += 1.6
	right_hand.gravity = 0.35
		if left_hand.check_on_floor = 1
		{
		left_hand.vspeed = 0
		left_hand.gravity = 0
		right_hand.vspeed = 0
		right_hand.gravity = 0
		patturn = 2.2
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
		
		var a___ = instance_create_depth(left_hand.x,left_hand.y+60,depth,rage_mode_knockback_attacked)
		a___.image_xscale = 10
		a___.image_yscale = 3
		
		var a___ = instance_create_depth(right_hand.x,right_hand.y+60,depth,rage_mode_knockback_attacked)
		a___.image_xscale = 10
		a___.image_yscale = 3
		
		var effect_ = instance_create_depth(left_hand.x,left_hand.y+50,depth+1,down_effect)
		effect_.t_image_yscale = 0.4*3
		effect_.t_image_xscale = 0.05*3
		effect_.received = 0
		
		var effect_ = instance_create_depth(right_hand.x,right_hand.y+50,depth+1,down_effect)
		effect_.t_image_yscale = 0.4*3
		effect_.t_image_xscale = 0.05*3
		effect_.received = 0
		
			repeat(8)
			{
			var _ef = instance_create_depth(left_hand.x,left_hand.y+60,depth-1,effect_spark)
			_ef.hspeed = irandom_range(-20,20)
			_ef.vspeed = irandom_range(-4,2)
				repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
				{
				randomize()
				var random_target = left_hand
				var dust = instance_create_depth(random_target.x+irandom_range(-5,5),random_target.y+irandom_range(-5,5),random_target.depth-1,pepsi_effect_received)
				var scale = irandom_range(20,40)/50
				dust.image_xscale = scale
				dust.image_yscale = scale
				dust.vspeed = irandom_range(-50,50)/25
				dust.hspeed = irandom_range(-50,50)/25
				dust.image_alpha = 1
				}
				
			
			var _ef = instance_create_depth(right_hand.x,right_hand.y+60,depth-1,effect_spark)
			_ef.hspeed = irandom_range(-20,20)
			_ef.vspeed = irandom_range(-4,2)
			
				repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
				{
				randomize()
				var random_target = right_hand
				var dust = instance_create_depth(random_target.x+irandom_range(-5,5),random_target.y+irandom_range(-5,5),random_target.depth-1,pepsi_effect_received)
				var scale = irandom_range(20,40)/50
				dust.image_xscale = scale
				dust.image_yscale = scale
				dust.vspeed = irandom_range(-50,50)/25
				dust.hspeed = irandom_range(-50,50)/25
				dust.image_alpha = 1
				}
			}
			
		}
	}
	
	if patturn <= 2.1
	{
	left_hand.image_angle += (0 - left_hand.image_angle)*0.1
	right_hand.image_angle += (0 - right_hand.image_angle)*0.1
	left_hand.x += (saved_real_x-400 - left_hand.x)*0.05
	right_hand.x += (saved_real_x+400 - right_hand.x)*0.05
	}
	
	if patturn >= 2.2 && patturn < 2.75
	{
	patturn += 0.001
		if patturn >= 2.25
		{
		left_hand.hspeed += 2
		right_hand.hspeed -= 2
		}
		
		if patturn = 2.25 && global.show_credits = 0
		{
		var sfx = audio_play_sound(jump_attack_sfx,0,0)
		audio_sound_gain(sfx,0.5*global.master_volume*2*global.sfx_volume,0)
		}
		
		
		if left_hand.x+32 > right_hand.x-32
		{
		left_hand.hspeed = 0
		right_hand.hspeed = 0
		
		if global.show_credits = 0
		{
		var a___ = audio_play_sound(bomb_sfx,0,0)
		audio_sound_gain(a___,0.12*global.master_volume*2*global.sfx_volume,0)
			
		var sfx = audio_play_sound(mob_faint,0,0)
		audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
			
		var a___ = audio_play_sound(guard,0,0)
		audio_sound_gain(a___,0.07*global.master_volume*2*global.sfx_volume,0)
		
		var a___ = instance_create_depth(x,left_hand.y,depth,rage_mode_knockback_attacked)
		a___.image_xscale = 3
		a___.image_yscale = 2.3
		}
		
		var effect_ = instance_create_depth(x+15,left_hand.y,player.depth+1,down_effect)
		effect_.t_image_yscale = 0.6*3
		effect_.t_image_xscale = 0.1*3
		effect_.received = 0
		
		var effect_ = instance_create_depth(x-15,left_hand.y,player.depth+1,down_effect)
		effect_.t_image_yscale = 0.6*3
		effect_.t_image_xscale = -0.1*3
		effect_.received = 0
		
		view_shake(11,11,1)
			repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
			{
			randomize()
			var random_target = choose(left_hand,right_hand)
			var dust = instance_create_depth(random_target.x+irandom_range(-5,5),random_target.y+irandom_range(-5,5),random_target.depth-1,pepsi_effect_received)
			var scale = irandom_range(20,40)/50
			dust.image_xscale = scale
			dust.image_yscale = scale
			dust.vspeed = irandom_range(-50,50)/25
			dust.hspeed = irandom_range(-50,50)/25
			dust.image_alpha = 1
			}
		patturn = 2.8
		}
	}
	
	if patturn >= 2.8
	{
	obj_hand.cannot_step = 0
	left_hand.image_angle += (-8 - left_hand.image_angle)*0.1
	right_hand.image_angle += (8 - right_hand.image_angle)*0.1
	left_hand.x += (saved_real_x-320 - left_hand.x)*0.05
	right_hand.x += (saved_real_x+320 - right_hand.x)*0.05
	left_hand.y += (saved_real_y+150 - left_hand.y)*0.05
	right_hand.y += (saved_real_y+150 - right_hand.y)*0.05
	patturn += 0.01
	}
	
	if patturn > 2.95
	{
	patturn = 0
	}
}




if patturn >= 3 && patturn < 4
{
cannot_step = 1
obj_hand.cannot_step = 0
	if patturn >= 3 && patturn < 3.1
	{
	left_hand.image_angle += (0 - left_hand.image_angle)*0.1
	right_hand.image_angle += (0 - right_hand.image_angle)*0.1
	left_hand.x += (saved_real_x-37-random_quake*15 - left_hand.x)*0.05
	right_hand.x += (saved_real_x+37+random_quake*15 - right_hand.x)*0.05
		if random_quake = 0
		{
		left_hand.y += (saved_real_y-150 - left_hand.y)*0.05
		right_hand.y += (saved_real_y-150 - right_hand.y)*0.05
		}
		if random_quake = 1
		{
		left_hand.y += (saved_real_y-220 - left_hand.y)*0.05
		right_hand.y += (saved_real_y-220 - right_hand.y)*0.05
		}
		
	patturn += 0.001
		if random_quake = -1
		{
		random_quake = choose(1,0,0)
			if hp < 700
			{
			random_quake = choose(1,1,0)
			}
		}
	}
	
	
	if patturn = 3.1
	{
		if left_hand.vspeed < 4
		{
		left_hand.vspeed = 6
		right_hand.vspeed = 6
		
			if global.show_credits = 0
			{
			var sfx = audio_play_sound(jump_attack_sfx,0,0)
			audio_sound_gain(sfx,0.5*global.master_volume*2*global.sfx_volume,0)
			}
		}
	left_hand.vspeed += 1.6
	left_hand.gravity = 0.35
	right_hand.vspeed += 1.6
	right_hand.gravity = 0.35
		if left_hand.check_on_floor = 1
		{
		patturn = 3.2
		
		
		left_hand.vspeed = 0
		left_hand.gravity = 0
		right_hand.vspeed = 0
		right_hand.gravity = 0
		
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
		
		var a___ = instance_create_depth(left_hand.x,left_hand.y+60,depth,rage_mode_knockback_attacked)
		a___.image_xscale = 10
		a___.image_yscale = 3
		
		var a___ = instance_create_depth(right_hand.x,right_hand.y+60,depth,rage_mode_knockback_attacked)
		a___.image_xscale = 10
		a___.image_yscale = 3
		
		var effect_ = instance_create_depth(left_hand.x,left_hand.y+50,depth+1,down_effect)
		effect_.t_image_yscale = 0.4*3
		effect_.t_image_xscale = 0.05*3
		effect_.received = 0
		
		var effect_ = instance_create_depth(right_hand.x,right_hand.y+50,depth+1,down_effect)
		effect_.t_image_yscale = 0.4*3
		effect_.t_image_xscale = 0.05*3
		effect_.received = 0
		
			repeat(8)
			{
			var _ef = instance_create_depth(left_hand.x,left_hand.y+60,depth-1,effect_spark)
			_ef.hspeed = irandom_range(-20,20)
			_ef.vspeed = irandom_range(-4,2)
				repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
				{
				randomize()
				var random_target = left_hand
				var dust = instance_create_depth(random_target.x+irandom_range(-5,5),random_target.y+irandom_range(-5,5),random_target.depth-1,pepsi_effect_received)
				var scale = irandom_range(20,40)/50
				dust.image_xscale = scale
				dust.image_yscale = scale
				dust.vspeed = irandom_range(-50,50)/25
				dust.hspeed = irandom_range(-50,50)/25
				dust.image_alpha = 1
				}
				
			
			var _ef = instance_create_depth(right_hand.x,right_hand.y+60,depth-1,effect_spark)
			_ef.hspeed = irandom_range(-20,20)
			_ef.vspeed = irandom_range(-4,2)
			
				repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
				{
				randomize()
				var random_target = right_hand
				var dust = instance_create_depth(random_target.x+irandom_range(-5,5),random_target.y+irandom_range(-5,5),random_target.depth-1,pepsi_effect_received)
				var scale = irandom_range(20,40)/50
				dust.image_xscale = scale
				dust.image_yscale = scale
				dust.vspeed = irandom_range(-50,50)/25
				dust.hspeed = irandom_range(-50,50)/25
				dust.image_alpha = 1
				}
			}
		}
	}
	
	if patturn >= 3.2
	{
	patturn += 0.01
	
		if random_quake = 1
		{
		down_attack_motion_dilay++
			if down_attack_motion_dilay > 4
			{
			var xx1 = x+down_attack_with_rage_dis
			var yy = right_hand.check_floor+65
				if place_meeting(xx1,yy+2,floor_parents)
				{
				var _effect = instance_create_depth(xx1,yy,depth-15,effect_quake_attacked)
				_effect.image_xscale = 1.5;
				_effect.image_yscale = 2;
				}
		
			var xx2 = x-down_attack_with_rage_dis
				if place_meeting(xx2,yy+2,floor_parents)
				{
				var _effect = instance_create_depth(xx2,yy,depth-15,effect_quake_attacked)
				_effect.image_xscale = 1.5;
				_effect.image_yscale = 2;
				}
		
			down_attack_with_rage_dis += 64
			down_attack_motion_dilay = 0
			}
		}
	}
	
	
	if patturn >= 3.4
	{
	obj_hand.cannot_step = 0
	left_hand.image_angle += (-8 - left_hand.image_angle)*0.1
	right_hand.image_angle += (8 - right_hand.image_angle)*0.1
	left_hand.x += (saved_real_x-320 - left_hand.x)*0.05
	right_hand.x += (saved_real_x+320 - right_hand.x)*0.05
	left_hand.y += (saved_real_y+150 - left_hand.y)*0.05
	right_hand.y += (saved_real_y+150 - right_hand.y)*0.05
	patturn += 0.005
	}
	
	if patturn > 3.6
	{
	down_attack_motion_dilay = 0
	down_attack_with_rage_dis = 0
	patturn = 0
	random_quake = -1
	}
}
}