/// @description Insert description here
// You can write your code in this editor
image_blend = c_white



if patturn != 0
{
automatic_bug_fix ++

	if automatic_bug_fix > 9999
	{
	patturn = 0
	cannot_step = 1
	random_quake = -1
	hit_motion = 0
	hit_cooltime = 0
	automatic_bug_fix = 0
	}
}
else
{
	if instance_exists(block_laser)
	{
	instance_destroy(block_laser)
	laser1 = -4
	laser2 = -4
	}
}



if hp <= 0
{
	if global.achievement[13] != 1
	{
	var _achievement = instance_create_depth(x,y,depth,bg_achievement)
	_achievement.text = string(global.achievement_name[13])
	_achievement.icon_num = 4
	global.achievement[13] = 1
	}
	
	if instance_exists(_light_)
	{
	_light_.x = x
	_light_.y = y+64
	}
	
	var xx_ = x
	var yy_ = y

	var random_val___ = percentage_k(5)
	if random_val___ = 1
	{
	var random_val___2 = percentage_k(5)
	create_buble_effect(1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.1,0.1,$FF47BBFF,$FF4C81FF,2,$FF534CFF,xx_-18-image_xscale*5,yy_+170+image_yscale*12,depth+5-random_val___2*5,0,false,false)
	}
	
	var random_val___ = percentage_k(10)
	if random_val___ = 1
	{
	create_buble_effect(1.1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.07,0.07,$FF62D1F7,$FF6C60CD,2,$FF191919,xx_-18-image_xscale*5,yy_+170+image_yscale*12,depth+10,1,false,false)
	}
	

	var random_val___ = percentage_k(5)
	if random_val___ = 1
	{
	var random_val___2 = percentage_k(5)
	create_buble_effect(1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.1,0.1,$FF47BBFF,$FF4C81FF,2,$FF534CFF,xx_+18+image_xscale*5,yy_+170+image_yscale*12,depth+5-random_val___2*5,0,false,false)
	}

	
	var random_val___ = percentage_k(10)
	if random_val___ = 1
	{
	create_buble_effect(1.1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.07,0.07,$FF62D1F7,$FF6C60CD,2,$FF191919,xx_+18+image_xscale*5,yy_+170+image_yscale*12,depth+10,1,false,false)
	}
	
	
	
	var random_val___ = percentage_k(5+global.graphics_for_code)
	if random_val___ = 1
	{
	var random_val___2 = percentage_k(1)
	create_buble_effect(1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.1,0.1,$FF47BBFF,$FF4C81FF,2,$FF534CFF,xx_+170,yy_+260,depth+5-random_val___2*5,0,false,false)
	}

	
	var random_val___ = percentage_k(10)
	if random_val___ = 1
	{
	create_buble_effect(1.1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.07,0.07,$FF62D1F7,$FF6C60CD,2,$FF191919,xx_+170,yy_+260,depth+10,1,false,false)
	}
	
	var random_val___ = percentage_k(5+global.graphics_for_code)
	if random_val___ = 1
	{
	var random_val___2 = percentage_k(1)
	create_buble_effect(1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.1,0.1,$FF47BBFF,$FF4C81FF,2,$FF534CFF,xx_-150,yy_+260,depth+5-random_val___2*5,0,false,false)
	}
	
	var random_val___ = percentage_k(10)
	if random_val___ = 1
	{
	create_buble_effect(1.1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.07,0.07,$FF62D1F7,$FF6C60CD,2,$FF191919,xx_-150,yy_+260,depth+10,1,false,false)
	}
	
global.boss_target = -4
global.playing_scene = 1
global.never_move = 1
hp = 0
dead_scene ++
patturn = 0


cannot_step = 1

	if y+100 < player.y
	{
	obj_camera.t_x = x
	obj_camera.t_y = y+100
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
	
	if dead_scene > 330
	{
	gravity = 0.2
	}
	
	
	
	if dead_scene > 120
	{
	left_hand.cannot_step = 1
	left_hand.image_angle += (90 - left_hand.image_angle)*0.05
		if broken_anime = 0
		{
		broken_anime = 1
		left_hand.gravity = 0.2
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
		}
	}
	else
	{
	left_hand.cannot_step = 0
	left_hand.gravity = 0
	left_hand.vspeed = 0
	}
	
	if dead_scene > 200
	{
	right_hand.cannot_step = 1
	right_hand.image_angle += (-90 - right_hand.image_angle)*0.05
		if broken_anime = 1
		{
		broken_anime = 2
		right_hand.gravity = 0.2
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
		}
	}
	else
	{
	right_hand.cannot_step = 0
	right_hand.gravity = 0
	right_hand.vspeed = 0
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
	test_mob.mob_type = obj_messi
	test_mob.xscale = 1.1
	test_mob.yscale = 1.1
	test_mob.mob_var = -6
	
	
	give_item(0,8)
	
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
	instance_destroy(_light_)
	instance_destroy(_light_1)
	instance_destroy(_light_2)
	instance_destroy(left_hand)
	instance_destroy(right_hand)
	instance_destroy()
	}
}
else
{
	if scene__ > 0
	{
	player.assult_mode = 300
		if !instance_exists(_light_)
		{
		total_died_from_here ++
		_light_ = instance_create_depth(x,y,depth,obj_light)
		_light_.p_id = id
		_light_.alpha = 0.4
		_light_.sprite_index = sprite64
		_light_.image_blend = $FF4EB0F7
		_light_.light_type = 0
		_light_.image_xscale = 10
		_light_.image_yscale = 10
	
		_light_1 = instance_create_depth(x,y,depth,obj_light)
		_light_1.p_id = id
		_light_1.alpha = 0.2
		_light_1.sprite_index = sprite64
		_light_1.image_blend = $FF4EB0F7
		_light_1.light_type = 0
		_light_1.image_xscale = 10
		_light_1.image_yscale = 10
	
		_light_2 = instance_create_depth(x,y,depth,obj_light)
		_light_2.p_id = id
		_light_2.alpha = 0.2
		_light_2.sprite_index = sprite64
		_light_2.image_blend = $FF4EB0F7
		_light_2.light_type = 0
		_light_2.image_xscale = 10
		_light_2.image_yscale = 10
		}
		else
		{
		_light_.x = x
		_light_.y = y+64
		_light_.image_xscale = 10*abs(image_xscale)
		_light_.image_yscale = 10*abs(image_yscale)
		_light_.alpha = (1.5-alpha)*0.4
	
			if instance_exists(_light_1)
			{
			_light_1.x = left_hand.x
			_light_1.y = left_hand.y
			_light_1.image_xscale = 5*abs(left_hand.image_xscale)
			_light_1.image_yscale = 5*abs(left_hand.image_yscale)
			_light_1.alpha = (1.5-left_hand.alpha)*0.2
	
			_light_2.x = right_hand.x
			_light_2.y = right_hand.y
			_light_2.image_xscale = 5*abs(right_hand.image_xscale)
			_light_2.image_yscale = 5*abs(right_hand.image_yscale)
			_light_2.alpha = (1.5-right_hand.alpha)*0.2
			}
		}

	
		var xx_ = x
		var yy_ = y
		repeat(2)
		{
			var random_val___ = percentage_k(5+global.graphics_for_code*7)
			if random_val___ = 1
			{

			var random_val___2 = percentage_k(5)
			create_buble_effect(1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.1,0.1,$FF47BBFF,$FF4C81FF,2,$FF534CFF,xx_-18-image_xscale*5,yy_+170+image_yscale*12,depth+5-random_val___2*5,0,false,false)
			}
		}
	
		var random_val___ = percentage_k(global.graphics_for_code*3)
		if random_val___ = 1
		{
		create_buble_effect(1.1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.07,0.07,$FF62D1F7,$FF6C60CD,2,$FF191919,xx_-18-image_xscale*5,yy_+170+image_yscale*12,depth+10,1,false,false)
		}
	
		repeat(2)
		{
			var random_val___ = percentage_k(5+global.graphics_for_code*7)
			if random_val___ = 1
			{
			var random_val___2 = percentage_k(5)
			create_buble_effect(1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.1,0.1,$FF47BBFF,$FF4C81FF,2,$FF534CFF,xx_+18+image_xscale*5,yy_+170+image_yscale*12,depth+5-random_val___2*5,0,false,false)
			}
		}
	
		var random_val___ = percentage_k(global.graphics_for_code*3)
		if random_val___ = 1
		{
		create_buble_effect(1.1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.07,0.07,$FF62D1F7,$FF6C60CD,2,$FF191919,xx_+18+image_xscale*5,yy_+170+image_yscale*12,depth+10,1,false,false)
		}
	
	
	
		repeat(2)
		{
			var random_val___ = percentage_k(5+global.graphics_for_code*7)
			if random_val___ = 1
			{
			var random_val___2 = percentage_k(1)
			create_buble_effect(1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.1,0.1,$FF47BBFF,$FF4C81FF,2,$FF534CFF,xx_+170,yy_+260,depth+5-random_val___2*5,0,false,false)
			}
		}
	
		var random_val___ = percentage_k(global.graphics_for_code*3)
		if random_val___ = 1
		{
		create_buble_effect(1.1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.07,0.07,$FF62D1F7,$FF6C60CD,2,$FF191919,xx_+170,yy_+260,depth+10,1,false,false)
		}
	
		repeat(2)
		{
			var random_val___ = percentage_k(5+global.graphics_for_code*7)
			if random_val___ = 1
			{
			var random_val___2 = percentage_k(1)
			create_buble_effect(1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.1,0.1,$FF47BBFF,$FF4C81FF,2,$FF534CFF,xx_-150,yy_+260,depth+5-random_val___2*5,0,false,false)
			}
		}
	
		var random_val___ = percentage_k(global.graphics_for_code*3)
		if random_val___ = 1
		{
		create_buble_effect(1.1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.07,0.07,$FF62D1F7,$FF6C60CD,2,$FF191919,xx_-150,yy_+260,depth+10,1,false,false)
		}
	
	/////////////////////////////////////////////////////////////////////////////////
		if instance_exists(left_hand)
		{
		var xx_ = left_hand.x
		var yy_ = left_hand.y
			repeat(2)
			{
				var random_val___ = percentage_k(45)
				if random_val___ = 1
				{

				var random_val___2 = percentage_k(5)
				create_buble_effect(1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.1,0.1,$FF47BBFF,$FF4C81FF,2,$FF534CFF,xx_-18-image_xscale*5,yy_+32+image_yscale*12,left_hand.depth+5-random_val___2*5,0,false,false)
				}
			}
	
			var random_val___ = percentage_k(10)
			if random_val___ = 1
			{
			create_buble_effect(1.1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.07,0.07,$FF62D1F7,$FF6C60CD,2,$FF191919,xx_-18-image_xscale*5,yy_+32+image_yscale*12,left_hand.depth+10,1,false,false)
			}
	
			repeat(2)
			{
				var random_val___ = percentage_k(45)
				if random_val___ = 1
				{
				var random_val___2 = percentage_k(5)
				create_buble_effect(1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.1,0.1,$FF47BBFF,$FF4C81FF,2,$FF534CFF,xx_+18+image_xscale*5,yy_+32+image_yscale*12,left_hand.depth+5-random_val___2*5,0,false,false)
				}
			}
	
			var random_val___ = percentage_k(10)
			if random_val___ = 1
			{
			create_buble_effect(1.1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.07,0.07,$FF62D1F7,$FF6C60CD,2,$FF191919,xx_+18+image_xscale*5,yy_+32+image_yscale*12,left_hand.depth+10,1,false,false)
			}
	
		var xx_ = right_hand.x
		var yy_ = right_hand.y
			repeat(2)
			{
				var random_val___ = percentage_k(45)
				if random_val___ = 1
				{

				var random_val___2 = percentage_k(5)
				create_buble_effect(1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.1,0.1,$FF47BBFF,$FF4C81FF,2,$FF534CFF,xx_-18-image_xscale*5,yy_+32+image_yscale*12,right_hand.depth+5-random_val___2*5,0,false,false)
				}
			}
	
			var random_val___ = percentage_k(10)
			if random_val___ = 1
			{
			create_buble_effect(1.1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.07,0.07,$FF62D1F7,$FF6C60CD,2,$FF191919,xx_-18-image_xscale*5,yy_+32+image_yscale*12,right_hand.depth+10,1,false,false)
			}
	
			repeat(2)
			{
				var random_val___ = percentage_k(45)
				if random_val___ = 1
				{
				var random_val___2 = percentage_k(5)
				create_buble_effect(1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.1,0.1,$FF47BBFF,$FF4C81FF,2,$FF534CFF,xx_+18+image_xscale*5,yy_+32+image_yscale*12,right_hand.depth+5-random_val___2*5,0,false,false)
				}
			}
	
			var random_val___ = percentage_k(10)
			if random_val___ = 1
			{
			create_buble_effect(1.1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.07,0.07,$FF62D1F7,$FF6C60CD,2,$FF191919,xx_+18+image_xscale*5,yy_+32+image_yscale*12,right_hand.depth+10,1,false,false)
			}	
		}
	}




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
	obj_camera.t_x = x
		if player.attack_laser_sec = 0 && player.attack_laser = 0 && player.suicide = 0 && player.sting_attack = 0
		{
		obj_camera.tv_x = 1280*0.9
		obj_camera.tv_y = 720*0.9
		}
		
		
		if !instance_exists(blinder)
		{
		blinder = instance_create_depth(x-120,y+420,depth,obj_blinded_wall)
		blinder.image_xscale = 16.5
		blinder.image_yscale = 10.5
		}
	}
}
else
{
	if activated = 2
	{
		if global.show_credits = 0
		{
		instance_destroy(blinder)
		global.boss_target = id
		global.boss_name = "거대 왁두의 권속 - 화염의 거대 안드로이드 메시"
		
			if global.none_wakgood_mode = true
			{
			global.boss_name = "연구소 수호자의 권속 - 불타는 화염의 짐승"
			}
		
			if player.attack_laser_sec = 0 && player.attack_laser = 0 && player.suicide = 0 && player.sting_attack = 0
			{
			obj_camera.tv_x = 1280
			obj_camera.tv_y = 720
			}
		obj_camera.t_x = x
		obj_camera.t_y = y+105
		}
	
		if saved_real_x = -4
		{
		global.save_point_x = player.x-600
		global.save_point_y = player.y
		instance_destroy(normal_mob)
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
player.guarding = 2
	if !instance_exists(wall1)
	{
	wall1 = instance_create_depth(xstart-700,ystart-400,player.depth+3,obj_floor_tile3)
	wall1.image_yscale = 8

	wall2 = instance_create_depth(xstart+700,ystart-400,player.depth+3,obj_floor_tile3)
	wall2.image_yscale = 8
	wall2.image_xscale = -1
	instance_destroy(normal_mob)
	}
	
	if !audio_is_playing(quake_sfx) && global.show_credits = 0
	{
	var sfx = audio_play_sound(quake_sfx,0,0)
	audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
	}
	
	if global.show_credits = 0 && opening_sfx = 0 && scene__ > 0.2
	{
	var sfx = audio_play_sound(golem_sfx,0,0)
	audio_sound_gain(sfx,0.32*global.master_volume*2*global.sfx_volume,0)
	opening_sfx = 0.5
	}


	if scene__ < 0.8 && scene__ > 0.6
	{
	obj_camera.t_y = player.y
	opening_scene = 0
	left_hand.cannot_step = 1
	right_hand.cannot_step = 1
	left_hand.y += (ystart - left_hand.y)*0.07
	right_hand.y += (ystart - right_hand.y)*0.07
	
		if global.show_credits = 0 && opening_sfx = 0.5
		{
		var sfx = audio_play_sound(jump_attack_sfx,0,0)
		audio_sound_gain(sfx,0.5*global.master_volume*2*global.sfx_volume,0)
		opening_sfx = 1
		}
	}
	
	if scene__ > 0.8
	{
	left_hand.cannot_step = 0
	right_hand.cannot_step = 0
		if left_hand.check_on_floor > 0 && opening_scene = 0
		{
		opening_scene = 1
		}
		
		if opening_scene > 0
		{
			if y+100 < player.y
			{
			obj_camera.t_y = y+100
			}
		left_hand.gravity = 0
		left_hand.vspeed = 0
		right_hand.gravity = 0
		right_hand.vspeed = 0
		y += (ystart+8 - y)*0.08
			
			if opening_scene = 1
			{
			opening_scene = 2
			
			var a___ = instance_create_depth(left_hand.x,left_hand.y+60,depth,rage_mode_knockback_attacked)
			a___.image_xscale = 10
			a___.image_yscale = 3
		
			var a___ = instance_create_depth(right_hand.x,right_hand.y+60,depth,rage_mode_knockback_attacked)
			a___.image_xscale = 10
			a___.image_yscale = 3
		
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
				}
			}
		}
		else
		{
		left_hand.gravity = 0.4
		right_hand.gravity = 0.4
			if left_hand.vspeed < 8
			{
			left_hand.vspeed = 8
			right_hand.vspeed = 8
			}
		}
	}



view_shake(0.1,0.1,1)
scene__ += 0.0032

image_blend = merge_color(c_black,c_white,scene__)
global.playing_scene = 1
global.never_move = 1
global.room_brightness += 0.0003
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
	
	if skip_boss_apearence = 1 && keyboard_check_pressed(global.skip_key)
	{
		repeat(900)
		{
		scene__ += 0.0032
		global.room_brightness += 0.0003
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

if scene__ >= 1
{
skip_boss_apearence = 1
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
		left_hand.x += (saved_real_x-310 - left_hand.x)*0.08
		right_hand.x += (saved_real_x+310 - right_hand.x)*0.08
		left_hand.y += (saved_real_y+110 - left_hand.y)*0.08
		right_hand.y += (saved_real_y+110 - right_hand.y)*0.08
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
			laser1.color_ = $FF474BE7
			laser1.image_alpha = 0
			}
			else
			{
			view_shake(0.1,0.1,1)
				if patturn > 1.57
				{
				laser1.direction -= saved_player_dir*2
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
			laser2.direction = -_dir*31
			}
			else
			{
			laser2.direction = 180-_dir*31
			}
			laser2.damage_able = 220
			laser2.color_ = $FF474BE7
			laser2.image_alpha = 0
			}
			else
			{
				if patturn > 1.57
				{
				laser2.direction -= saved_player_dir*2
				}
				if laser2.image_alpha < 1.1
				{
				laser2.image_alpha += 0.1
				}
			}
		}
		
		if patturn > 1.6
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
		if !instance_exists(laser1)
		{
			if patturn > 1.7 && patturn_repeat < 1
			{
			patturn = 1.31
			patturn_repeat ++
			}
		
			if patturn > 1.7 && patturn_repeat >= 1
			{
			patturn = 0
			patturn_repeat = 0
			}
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
			left_hand.vspeed = 10
			right_hand.vspeed = 10
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
				audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
		
				var a___ = audio_play_sound(guard,0,0)
				audio_sound_gain(a___,0.05*global.master_volume*2*global.sfx_volume,0)
		
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
		
			var effect_ = instance_create_depth(left_hand.x,left_hand.y+50,depth+10,down_effect)
			effect_.t_image_yscale = 0.4*3
			effect_.t_image_xscale = 0.05*3
			effect_.received = 0
		
			var effect_ = instance_create_depth(right_hand.x,right_hand.y+50,depth+10,down_effect)
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
		left_hand.x += (saved_real_x-300 - left_hand.x)*0.05
		right_hand.x += (saved_real_x+300 - right_hand.x)*0.05
		}
	
		if patturn >= 2.2 && patturn < 2.75
		{
			if sfx__ = 1
			{
			left_hand.hspeed += 2
			right_hand.hspeed -= 2
			}
		
			if player.hurt > 0
			{
			go_up = 0
			sfx__ = 1
				if global.show_credits = 0 
				{
				var sfx = audio_play_sound(jump_attack_sfx,0,0)
				audio_sound_gain(sfx,0.5*global.master_volume*2*global.sfx_volume,0)
				}
			patturn = 2.75
			}
		
			if left_hand.check_on_floor = 1
			{
				if floor(patturn*10) = 25
				{
					if global.show_credits = 0
					{
					var a___ = audio_play_sound(bomb_sfx,0,0)
					audio_sound_gain(a___,0.1*global.master_volume*2*global.sfx_volume,0)
					}
				patturn = 2.8
				}
				else
				{
				go_up = 1
				}
			left_hand.vspeed = 0
			left_hand.gravity = 0
			right_hand.vspeed = 0
			right_hand.gravity = 0
		
			if global.show_credits = 0
			{
			var sfx = audio_play_sound(down_attack_sfx,0,0)
			audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
		
			var a___ = audio_play_sound(guard,0,0)
			audio_sound_gain(a___,0.04*global.master_volume*2*global.sfx_volume,0)
		
			var sfx = audio_play_sound(mob_faint,0,0)
			audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
			view_shake(11,30,1)
			}
		
			var a___ = instance_create_depth(left_hand.x,left_hand.y+60,depth,rage_mode_knockback_attacked)
			a___.image_xscale = 10
			a___.image_yscale = 3
		
			var a___ = instance_create_depth(right_hand.x,right_hand.y+60,depth,rage_mode_knockback_attacked)
			a___.image_xscale = 10
			a___.image_yscale = 3
		
			var effect_ = instance_create_depth(left_hand.x,left_hand.y+50,depth+10,down_effect)
			effect_.t_image_yscale = 0.4*3
			effect_.t_image_xscale = 0.05*3
			effect_.received = 0
		
			var effect_ = instance_create_depth(right_hand.x,right_hand.y+50,depth+10,down_effect)
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
		
			if go_up = 1
			{
				if floor(patturn*10) != 24
				{
				left_hand.y += (saved_real_y-200 - left_hand.y)*0.2/patturn
				right_hand.y += (saved_real_y-200 - right_hand.y)*0.2/patturn
					if abs(left_hand.y - (saved_real_y-200)) < 30
					{
					left_hand.vspeed = 15
					left_hand.gravity = 1
					right_hand.vspeed = 15
					right_hand.gravity = 1
					go_up = 0
					patturn += 0.1
					}
				}
				else
				{
				left_hand.y += (saved_real_y-200 - left_hand.y)*0.05
				right_hand.y += (saved_real_y-200 - right_hand.y)*0.05
					if abs(left_hand.y - (saved_real_y-200)) < 5
					{
					left_hand.vspeed = 15
					left_hand.gravity = 1
					right_hand.vspeed = 15
					right_hand.gravity = 1
					go_up = 0
					patturn += 0.1
					}
				}
			}
		
			if patturn >= 2.6 && floor(patturn*100)/100 != 2.75
			{
			left_hand.vspeed = 0
			left_hand.gravity = 0
			right_hand.vspeed = 0
			right_hand.gravity = 0
			patturn = 2.8
			}
		}
	
		if patturn = 2.75
		{
		left_hand.hspeed += 1.2
		right_hand.hspeed -= 1.2
	
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
			}
		
			var a___ = instance_create_depth(x,left_hand.y,depth,rage_mode_knockback_attacked)
			a___.image_xscale = 3
			a___.image_yscale = 2.3
		
			var effect_ = instance_create_depth(x+15,left_hand.y,player.depth+10,down_effect)
			effect_.t_image_yscale = 0.6*3
			effect_.t_image_xscale = 0.1*3
			effect_.received = 0
		
			var effect_ = instance_create_depth(x-15,left_hand.y,player.depth+10,down_effect)
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
			left_hand.vspeed = 0
			left_hand.gravity = 0
			right_hand.vspeed = 0
			right_hand.gravity = 0
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
	
		if patturn > 2.99
		{
		sfx__ = 0
		patturn = 0
		}
	}




	if patturn >= 3 && patturn < 4
	{
	cannot_step = 1
	obj_hand.cannot_step = 0
		if patturn >= 3 && patturn < 3.06
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
	
	
		if patturn = 3.06
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
		
			var effect_ = instance_create_depth(left_hand.x,left_hand.y+50,depth+10,down_effect)
			effect_.t_image_yscale = 0.4*3
			effect_.t_image_xscale = 0.05*3
			effect_.received = 0
		
			var effect_ = instance_create_depth(right_hand.x,right_hand.y+50,depth+10,down_effect)
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
		patturn = 0
		}
	}

	if patturn >= 4 && patturn < 5
	{
	cannot_step = 1
	obj_hand.cannot_step = 0
		if patturn = 4
		{
			if random_quake < 0
			{
			random_quake = choose(0,1)
			}
			
			if random_quake = 1
			{
			left_hand.image_angle += (-15 - left_hand.image_angle)*0.1
			left_hand.gravity = 0.3
				if left_hand.vspeed < 5
				{
				left_hand.vspeed = 12
				}

				if left_hand.check_on_floor = 1
				{
				patturn = 4.1
				left_hand.gravity = 0
				left_hand.vspeed = 0
				
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
				}
			
			right_hand.image_angle += (80 - right_hand.image_angle)*0.1
			right_hand.x += (saved_real_x+200 - right_hand.x)*0.05
			right_hand.y += (saved_real_y+200 - right_hand.y)*0.05
			}
			else
			{
			right_hand.image_angle += (15 - right_hand.image_angle)*0.1
			right_hand.gravity = 0.3
				if right_hand.vspeed < 5
				{
				right_hand.vspeed = 12
				}

				if right_hand.check_on_floor = 1
				{
				patturn = 4.1
				right_hand.gravity = 0
				right_hand.vspeed = 0
				
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
		
				var a___ = instance_create_depth(right_hand.x,right_hand.y+60,depth,rage_mode_knockback_attacked)
				a___.image_xscale = 10
				a___.image_yscale = 3
				}
			
			left_hand.image_angle += (-80 - left_hand.image_angle)*0.1
			left_hand.x += (saved_real_x-200 - left_hand.x)*0.05
			left_hand.y += (saved_real_y+200 - left_hand.y)*0.05
			}
		}
		else
		{
			if !audio_is_playing(fire_sfx) && patturn >= 4.1
			{
			patturn += 0.001
				if patturn >= 4.2 && patturn < 4.3 && global.show_credits = 0
				{
				var sfx = audio_play_sound(fire_sfx,0,0)
				audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
				audio_sound_pitch(sfx,0.3)
				}
				
				if patturn > 4.6
				{
				random_quake = -1
				patturn = 0
				}
			}
			else
			{
				if audio_is_playing(fire_sfx)
				{
				patturn += 0.001
					if random_quake = 1
					{
					right_hand.image_angle += (85 - right_hand.image_angle)*0.1
					right_hand.x += (saved_real_x+350 - right_hand.x)*0.05
					right_hand.y += (saved_real_y+125 - right_hand.y)*0.05
					left_hand.x += (saved_real_x-350 - left_hand.x)*0.05
					left_hand.y += (saved_real_y+300+10*floor(patturn*10)%5 - left_hand.y)*0.1
						if patturn > 4.2
						{
						var xx_ = left_hand.x+64
						var yy_ = left_hand.y+irandom_range(-10,10)
							repeat(6)
							{
							var random_val___ = percentage_k(70)
								if random_val___ = 1
								{
								create_buble_effect(0.8,180+irandom_range(-5,5),0,choose(-1)*irandom_range(1,150)/3,0.05,0.05,$FF47BBFF,$FF4C81FF,2,$FF534CFF,xx_,yy_,player.depth-1,0,false,false)
								}
							}
	
							var random_val___ = percentage_k(10)
							if random_val___ = 1
							{
							create_buble_effect(0.8,180+irandom_range(-5,5),0,choose(-1)*irandom_range(1,150)/3,0.05,0.05,$FF62D1F7,$FF6C60CD,2,$FF191919,xx_,yy_,player.depth-1,1,false,false)
							}
							
							if player.y > left_hand.y-24 && player.x > left_hand.x
							{
							global.r_alpha += (0.17 - global.r_alpha)*0.1
							global.hp -= 10*global.difficulty
								if !audio_is_playing(global.hit_sfx_1) && global.show_credits = 0
								{
								var sfx = audio_play_sound(global.hit_sfx_1,0,0)
								audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
								}
							}
						}
					}
					else
					{
					left_hand.image_angle += (-95 - left_hand.image_angle)*0.1
					left_hand.x += (saved_real_x-350 - left_hand.x)*0.05
					left_hand.y += (saved_real_y+125 - left_hand.y)*0.05
					right_hand.x += (saved_real_x+350 - right_hand.x)*0.05
					right_hand.y += (saved_real_y+300+10*floor(patturn*10)%5 - right_hand.y)*0.1
						if patturn > 4.2
						{
						var xx_ = right_hand.x-64
						var yy_ = right_hand.y+irandom_range(-10,10)
							repeat(6)
							{
							var random_val___ = percentage_k(70)
								if random_val___ = 1
								{
								create_buble_effect(0.8,0+irandom_range(-5,5),0,choose(-1)*irandom_range(1,150)/3,0.05,0.05,$FF47BBFF,$FF4C81FF,2,$FF534CFF,xx_,yy_,player.depth-1,0,false,false)
								}
							}
	
							var random_val___ = percentage_k(10)
							if random_val___ = 1
							{
							create_buble_effect(0.8,0+irandom_range(-5,5),0,choose(-1)*irandom_range(1,150)/3,0.05,0.05,$FF62D1F7,$FF6C60CD,2,$FF191919,xx_,yy_,player.depth-1,1,false,false)
							}
							
							if player.y > right_hand.y-24 && player.x < right_hand.x
							{
							global.r_alpha += (0.17 - global.r_alpha)*0.1
							global.hp -= 10*global.difficulty
								if !audio_is_playing(global.hit_sfx_1) && global.show_credits = 0
								{
								var sfx = audio_play_sound(global.hit_sfx_1,0,0)
								audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
								}
							}
						}
					}
				}
			}
		}
	}
}