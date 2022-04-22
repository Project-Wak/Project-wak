/// @description Insert description here
// You can write your code in this editor
if global.slow_motion > 0
{
global.slow_motion += 0.1
global.slow_motion += global.slow_motion*0.03
	if global.slow_motion < 45
	{
	th_afas = 0
		if global.t_b_alpha <= 0 && !instance_exists(full_screen_option)
		{
		room_speed = 15+global.slow_motion;
		}
		
		if ((global.aed = 0) || (global.aed > 0 && global.already_aed_used = 1) || player.y >= room_height) && room != tuto_room
		{
			if global.clock_shading != 1
			{
			global.clock_shading = 1
			}
		
		
			if global.slow_motion > 15 && global.clock = 1
			{
			global.t_b_alpha += 0.001
				if global.clock_alpha <= 0
				{
				global.clock_alpha = 0.01
				global.t_clock_alpha = 0.95
				global.clock_scale = 3
				global.t_clock_scale = 1.1
				show_debug_message("play rewind scene")
		
				var sfx = audio_play_sound(rewinding_sfx,0,0)
				audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
				}
			}
		
			if global.slow_motion > 25
			{
			global.t_b_alpha += 0.001*global.slow_motion
			}
		}
		
		if global.aed > 0 && global.already_aed_used = 0 && global.left_time > 0 && global.clock = 1 && player.y < room_height
		{
			if global.slow_motion < 20
			{
			room_speed = 15+global.slow_motion;
			}
			else
			{
			global.gameover_reason = -4
			global.never_move = 0
			global.already_aed_used = 1
				if instance_exists(player)
				{
				player.y -= 3
				player.vspeed = -4
				player.w_alpha = 2
				}
			global.slow_motion = 0
			global.hp = 1
			room_speed = 60;
			var sfx = audio_play_sound(sparking_sound,0,0)
			audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
			
			if instance_exists(player)
			{
			var d_ef = instance_create_depth(player.x,player.y-64,depth-1,draw_hp_m)
			var text__ = "Revived!"
				if global.korean_text = 1
				{
				text__ = "부활!"
				}
				d_ef.d_text = text__
				d_ef.image_blend = $FF6D19FF
				d_ef.image_xscale = 1.2
				d_ef.image_yscale = 1.2
				d_ef.target = -4
				}
			}
		}
		
		if room = tuto_room
		{
			if global.slow_motion < 20
			{
			room_speed = 15+global.slow_motion;
			}
			else
			{
			global.never_move = 0
			global.already_aed_used = 1
			if instance_exists(player)
			{
			player.y -= 64
			player.vspeed = -4
			player.movement_speed = 7*player.image_xscale
			player.w_alpha = 2
			}
			global.slow_motion = 0
			global.hp = 1
			room_speed = 60;
			var sfx = audio_play_sound(sparking_sound,0,0)
			audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
			}
		}
	}
	else
	{
	global.t_b_alpha += 0.001*global.slow_motion
		if room_speed != 5
		{
			if global.rainy = 3 && th_afas = 0
			{
			th_afas = 1
			var random_val = percentage_k(40)
			
				if random_val = 1
				{
				var sfx_th = audio_play_sound(thunder_sfx,0,0)
				audio_sound_gain(sfx_th,0.2*global.master_volume*2*global.sfx_volume,0)
				global.w_alpha = 0.75
				}
			}
		room_speed = 60
		global.playing_scene = 0
		if instance_exists(player)
		{
		obj_camera.t_x = player.x;
		obj_camera.t_y = player.y;
		}
		global.t_clock_alpha -= 0.005
		}
		
		if global.slow_motion > 2800
		{
		global.clock_shading += (0.1*global.clock_shading/1000)+0.25
		global.t_clock_scale -= 0.01*global.slow_motion/1000
		global.t_clock_alpha -= 0.01*global.slow_motion/1000
		}
		
		if global.t_b_alpha > 100
		{
		global.t_b_alpha = 100
		}
	}
	

	if global.t_b_alpha > 0 && global.b_alpha > 2 && global.slow_motion > 9000
	{
		if global.clock = 1
		{
			if global.left_time <= 0
			{
				if playing_gameover_scene > 0
				{
				global.left_time = 6*global.time_plusment
				playing_gameover_scene = 0
				}
			}
			else
			{
			global.left_time --
			}
		global.w_alpha = 0
		global.used_suicide_skill = 0
		global.already_aed_used = 0
		global.can_use_sylinge = 1
		global.rage_gauge = 0
		global.clock_alpha = -1
		global.t_clock_alpha = -1
		global.t_clock_scale = -1
		if instance_exists(player)
		{
		player.suicided = 0
		global.hp = player.max_hp
		}
		room_speed = 60
		global.never_move = 0
		global.slow_motion = 0
		global.t_b_alpha = -0.01
		global.awakening = 0
		global.boss_target = -4
		global.gameover_reason = -4
		global.total_died ++
		
		if instance_exists(obj_wakdroid_ending)
		{
		global.platform_speed = 0
		room_goto(room_main)
		player.x = 1213
		player.y = 662
		global.back_to_origin_stage = 2
		global.b_alpha = 0
		alarm[5] = 300
		}
	
		var _revive_xx = -4
		var _revive_yy = -4
		if instance_exists(player)
		{
		_revive_xx = player.xstart
		_revive_yy = player.ystart
		}
		
		if global.back_to_origin_stage = 1
		{
		global.platform_speed = 0
		room_goto(room_main)
		player.x = 1213
		player.y = 662
		global.back_to_origin_stage = 2
		alarm[5] = 300
		}
		else
		{
			if global.clock = 1 && global.save_point_x != -4
			{
			_revive_xx = global.save_point_x
			_revive_yy = global.save_point_y
			}
		}
			
		
		
			if instance_exists(normal_mob)
			{
			instance_destroy(normal_mob)
			}
		
			if instance_exists(obj_map_tile6_2)
			{
			obj_map_tile6_2.activated = 0
			}
		
			if instance_exists(mob_spawn_here)
			{
			mob_spawn_here.activated = 0
			}
		
			if instance_exists(obj_wak_doo)
			{
			audio_stop_sound(boss_bgm)
			global.room_brightness = 0.2
			obj_wak_doo.hp = obj_wak_doo.max_hp
			obj_wak_doo.x = 2816
			obj_wak_doo.y = 800+500
			obj_wak_doo.patturn = 0
			obj_wak_doo.timer = 0
			obj_wak_doo.patturn = 0
			obj_wak_doo.scene__ = 0
			obj_wak_doo.activated = 0
			obj_wak_doo.bgm = -4
			obj_wak_doo.cannot_step = 1
			obj_wak_doo.alarm[0] = 1
			obj_wak_doo.dead_scene = 0
			instance_destroy(obj_wak_doo.wall1)
			instance_destroy(obj_wak_doo.wall2)
			instance_destroy(obj_wak_doo.left_hand)
			instance_destroy(obj_wak_doo.right_hand)
			}
			
			if instance_exists(obj_messi)
			{
			audio_stop_sound(boss_bgm)
			global.room_brightness = 0.2
			obj_messi.hp = obj_messi.max_hp
			obj_messi.x = obj_messi.xstart
			obj_messi.y = obj_messi.ystart+500
			obj_messi.patturn = 0
			obj_messi.timer = 0
			obj_messi.patturn = 0
			obj_messi.scene__ = 0
			obj_messi.activated = 0
			obj_messi.bgm = -4
			obj_messi.cannot_step = 1
			obj_messi.alarm[0] = 1
			obj_messi.dead_scene = 0
			obj_messi.go_up = 0
			obj_messi.sfx__ = 0
			obj_messi.patturn_repeat = 0
			instance_destroy(obj_messi.wall1)
			instance_destroy(obj_messi.wall2)
			instance_destroy(obj_messi._light_)
			instance_destroy(obj_messi._light_1)
			instance_destroy(obj_messi._light_2)
			instance_destroy(obj_messi.wall2)
			instance_destroy(obj_messi.left_hand)
			instance_destroy(obj_messi.right_hand)
			}
		
			if instance_exists(obj_angel)
			{
			audio_stop_sound(boss_bgm)
			global.room_brightness = 0.15
			obj_angel.hp = obj_angel.max_hp
			obj_angel.x = obj_angel.xstart
			obj_angel.y = obj_angel.ystart+500
			obj_angel.patturn = 0
			obj_angel.timer = 0
			obj_angel.patturn = 0
			obj_angel.scene__ = 0
			obj_angel.activated = 0
			obj_angel.bgm = -4
			obj_angel.cannot_step = 1
			obj_angel.alarm[0] = 1
			obj_angel.dead_scene = 0
			obj_angel.go_up = 0
			obj_angel.sfx__ = 0
			obj_angel.patturn_repeat = 0
			obj_angel.phase_change = 0
			obj_angel.w_alpha = 0
			instance_destroy(yellow_circle_effect)
			instance_destroy(obj_angel.spear__)
			instance_destroy(obj_angel.wall1)
			instance_destroy(obj_angel.wall2)
			instance_destroy(obj_angel._light_)
			instance_destroy(obj_angel._light_1)
			}
			
			if instance_exists(obj_wakdroid)
			{
			audio_stop_sound(boss_bgm)
			instance_destroy(obj_wakdroid)
			obj_andience1194.cre_boss = 1
			}
			
			if instance_exists(obj_last_boss)
			{
			audio_stop_sound(boss_bgm)
			instance_destroy(mob_spawn_here)
			instance_destroy(obj_last_boss.wall1)
			instance_destroy(obj_last_boss.wall2)
			instance_destroy(obj_last_boss)
			obj_andience1194.cre_boss = 1
			obj_andience1194.play_scene__ = 0
			obj_andience1194.message_phase = 15
			obj_andience1194.sprite_index = pl_move_hyumpanchi_hakase
			obj_andience1194.image_index = 0
			}
			
		
			if instance_exists(obj_simhae_doo)
			{
			audio_stop_sound(boss_bgm)
			global.room_brightness = 0.2
			obj_simhae_doo.image_xscale = -abs(obj_simhae_doo.image_xscale)
			obj_simhae_doo.hp = obj_simhae_doo.max_hp
			obj_simhae_doo.x = obj_simhae_doo.xstart
			obj_simhae_doo.y = obj_simhae_doo.ystart+500
			obj_simhae_doo.patturn = 0
			obj_simhae_doo.timer = 0
			obj_simhae_doo.patturn = 0
			obj_simhae_doo.scene__ = 0
			obj_simhae_doo.activated = 0
			obj_simhae_doo.bgm = -4
			obj_simhae_doo.cannot_step = 1
			obj_simhae_doo.alarm[0] = 1
			obj_simhae_doo.dead_scene = 0
			instance_destroy(obj_simhae_doo.wall1)
			instance_destroy(obj_simhae_doo.wall2)
			instance_destroy(obj_simhae_doo._light_)
			instance_destroy(simhae_doo_bullet)
			}
		
			if instance_exists(obj_twin_eye)
			{
			audio_stop_sound(boss_bgm)
			global.room_brightness = 0.2
			obj_twin_eye.hp = obj_twin_eye.max_hp
			obj_twin_eye.timer = 0
			instance_destroy(obj_twin_eye_another)
			obj_twin_eye.patturn = 0
			obj_twin_eye.timer = 0
			obj_twin_eye.patturn = 0
			obj_twin_eye.scene__ = 0
			obj_twin_eye.activated = 0
			obj_twin_eye.bgm = -4
			obj_twin_eye.cannot_step = 1
			obj_twin_eye.alarm[0] = 1
			obj_twin_eye.dead_scene = 0
			obj_twin_eye.bullet__ = 0
			obj_twin_eye._sfx__ = 0
			instance_destroy(obj_twin_eye.wall1)
			instance_destroy(obj_twin_eye.wall2)
			instance_destroy(obj_twin_eye._light_)
			instance_destroy(obj_twin_eye._light_1)
			}
			
			if instance_exists(obj_worm)
			{
			audio_stop_sound(boss_bgm)
			global.room_brightness = 0.1
			obj_worm.hp = obj_worm.max_hp
			obj_worm.timer = 0
			obj_worm.patturn = 0
			obj_worm.timer = 0
			obj_worm.patturn = 0
			obj_worm.scene__ = 0
			obj_worm.activated = 0
			obj_worm.bgm = -4
			obj_worm.cannot_step = 1
			obj_worm.alarm[0] = 1
			obj_worm.dead_scene = 0
			obj_worm.start_cre_dir = 0
			obj_worm.bullet_time = 0
			obj_worm.breathing = 0
			instance_destroy(obj_worm_body)
			instance_destroy(obj_worm.wall1)
			instance_destroy(simhae_doo_bullet)
			}
			
			if instance_exists(obj_ball)
			{
			instance_destroy(obj_ball)
			}
			
			if instance_exists(player)
			{
			player.x = _revive_xx
			player.y = _revive_yy
			}
			
			if instance_exists(obj_map_tile7_1)
			{
			obj_map_tile7_1.alarm[1] = 1
			}
			
			if instance_exists(obj_map_tile9)
			{
			obj_map_tile9.alarm[1] = 1
			}
			
			if instance_exists(obj_map_tile8)
			{
			obj_map_tile8.alarm[1] = 1
			}
			
			
		obj_camera.t_x = _revive_xx
		obj_camera.t_y = _revive_yy
		obj_camera.x = _revive_xx
		obj_camera.y = _revive_yy
		}
		else
		{
			if global.gameover_reason = -4
			{
			global.gameover_reason = "[게임오버 엔딩]\n플레이어가 사망했다"
			}
		global.gameover += (1 - global.gameover)*0.03
		}
	}
}
else
{
	if room_speed != 5
	{
	room_speed = 60
	}
}
