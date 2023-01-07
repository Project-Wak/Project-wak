/// @description Insert description here
// You can write your code in this editor


if global.all_reset_key != 1 || global.tutorial <= 0
{
global.a_key = ord("A")
global.q_key = ord("Q")
global.s_key = ord("S")
global.w_key = ord("W")
global.run_key = vk_shift
global.e_key = ord("E")
global.suicide_key = ord("P")
global.skip_key = ord("D")
global.use_item = ord("R")
global.jump_key = vk_space
global.left_key = vk_left
global.right_key = vk_right
global.guard_key = vk_up
global.down_key = vk_down
global.all_reset_key = 1
}



global.a_key_for_draw = keyconverter(global.a_key)
global.q_key_for_draw = keyconverter(global.q_key)
global.s_key_for_draw = keyconverter(global.s_key)
global.w_key_for_draw = keyconverter(global.w_key)
global.run_key_for_draw = keyconverter(global.run_key)
global.e_key_for_draw = keyconverter(global.e_key)
global.suicide_key_for_draw = keyconverter(global.suicide_key)
global.skip_key_for_draw = keyconverter(global.skip_key)
global.use_item_for_draw = keyconverter(global.use_item)



if global.slow_motion > 0
{
global.slow_motion += 0.1
global.slow_motion += global.slow_motion*0.03
	if global.broken_clock = 3
	{
	global.clock = 0
	global.clock_far_from += (32 - global.clock_far_from)*0.01
	}

	if global.slow_motion < 45
	{
	sfx_broken = 0
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
				
					if global.none_wakgood_mode = false
					{
					var sfx = audio_play_sound(rewinding_sfx,0,0)
					audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
					}
				}
			}
		
			if global.slow_motion > 25
			{
			global.t_b_alpha += 0.001*global.slow_motion
			}
		}
		
		if global.aed > 0 && global.already_aed_used = 0 && global.left_time > 0 && global.clock = 1 && player.y < room_height && (!instance_exists(obj_wakdroid_ending) || global.real_ending = 1) && player.suicide = 0
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
				d_ef.image_blend = $FF2019FF
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
			
			if playing_gameover_scene > 0 && sfx_broken = 0 && global.slow_motion > 1200 && global.story_next < 100 && room != room_sector_runaway
			{
			sfx_broken = 1

			view_shake(0,8,8)
			var sfx_th = audio_play_sound(broken_sfx,0,0)
			audio_sound_gain(sfx_th,0.2*global.master_volume*2*global.sfx_volume,0)
			var sfx_th = audio_play_sound(glow_sfx,0,0)
			audio_sound_gain(sfx_th,0.3*global.master_volume*2*global.sfx_volume,0)
			global.broken_clock++
			}
			
			if instance_exists(obj_wakdroid_ending) && sfx_broken = 0 && global.slow_motion > 1200 && global.story_next < 100 && room != room_sector_runaway
			{
				if global.broken_clock = 2
				{
				view_shake(0,8,8)
				var sfx_th = audio_play_sound(broken_sfx,0,0)
				audio_sound_gain(sfx_th,0.2*global.master_volume*2*global.sfx_volume,0)
				var sfx_th = audio_play_sound(glow_sfx,0,0)
				audio_sound_gain(sfx_th,0.3*global.master_volume*2*global.sfx_volume,0)
				global.broken_clock++
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
	

	if (global.t_b_alpha > 0 && global.b_alpha > 2) && global.slow_motion > 9000
	{
		if global.clock = 1
		{
			if global.left_time <= 0
			{
				if playing_gameover_scene > 0
				{
				global.left_time = 25*global.time_plusment
				global.tiredness = 0
				playing_gameover_scene = 0
				}
			}
			else
			{
			global.left_time --
			}
			
		var a___ = audio_play_sound(rewind_sound_effect,0,0)
		audio_sound_gain(a___,0.1*global.master_volume*2*global.sfx_volume,0)
		global.w_alpha = 0
		global.used_suicide_skill = 0
		global.already_aed_used = 0
		global.can_use_sylinge1 = global.max_sylinge1_use
		global.can_use_sylinge2 = global.max_sylinge2_use
		global.rage_gauge = 0
		global.clock_alpha = -1
		global.t_clock_alpha = -1
		global.t_clock_scale = -1
		global.poisoning = 0
		if instance_exists(player)
		{
		player.suicided = 0
		global.hp = player.max_hp
		global.o2 = 100
		var message_1 = ("Tip : 올려 베기("+string(keyconverter(global.w_key))+") 혹은 회전베기("+string(keyconverter(global.q_key))+")를 사용해보세요")
		var message_2 = ("Tip : 기절상태에서 점프(Space) 혹은 구르기(아래 방향키)시 빠르게 기절을 풀수 있습니다")
		var message_3 = ("Tip : "+string(keyconverter(global.e_key))+"키를 꾹 눌러 레이지 모드를 사용하면 일시적으로 스테미나가 무한이 됩니다")
		var random_message = choose(message_1,message_2,message_3)
		dev_mes(random_message)
		}
		global.dreamy_alpha = 0
		room_speed = 60
		global.never_move = 0
		global.slow_motion = 0
		global.t_b_alpha = -0.01
		global.awakening = 0
		global.boss_target = -4
		global.gameover_reason = -4
		global.total_died ++
		
		obj_camera.alarm[2] = 30

		
		save_and_load_data(1,0)
		
		if instance_exists(obj_wakdroid_ending) && !instance_exists(obj_last_boss) && room != room_sector_runaway
		{
		global.platform_speed = 0
		room_goto(room_main)
		player.x = 1213
		player.y = 734
		global.back_to_origin_stage = 2
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
			global.room_brightness = 0.35
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
			instance_destroy(obj_wak_doo.laser1)
			instance_destroy(obj_wak_doo.laser2)
			}
			
			if instance_exists(obj_messi)
			{
			global.room_brightness = 0.35
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
			instance_destroy(obj_messi.laser1)
			instance_destroy(obj_messi.laser2)
			}
		
			if instance_exists(obj_angel)
			{
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
				if instance_exists(obj_angel._light_1)
				{
				instance_destroy(obj_angel._light_)
				instance_destroy(obj_angel._light_1)
				}
			}
			
			if instance_exists(obj_wakdroid)
			{
			audio_stop_sound(follower_bgm)
			
			instance_destroy(obj_wakdroid)
			obj_andience1194.cre_boss = 1
			}
			
			if instance_exists(obj_last_boss)
			{
			audio_stop_sound(final_battle)
			
			instance_destroy(mob_spawn_here)
			instance_destroy(obj_last_boss.wall1)
			instance_destroy(obj_last_boss.wall2)
			instance_destroy(obj_last_boss)
			var __aaa____ = instance_create_depth(3328,2240,depth,obj_last_boss)
			__aaa____.alarm[6] = 30
			obj_andience1194.total_died_from_here_sec ++
			obj_camera.t_x = -4
			obj_camera.x = player.x
			obj_potential_camera.x = player.x
			
				if instance_exists(angel_spear)
				{
				instance_destroy(angel_spear)
				}
			}
			
		
			if instance_exists(obj_simhae_doo)
			{
			global.room_brightness = 0.35
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
			obj_simhae_doo.depth = 1200
			instance_destroy(obj_simhae_doo.wall1)
			instance_destroy(obj_simhae_doo.wall2)
			instance_destroy(obj_simhae_doo._light_)
			instance_destroy(simhae_doo_bullet)
			}
			
			if instance_exists(obj_guisangadoo)
			{
			global.room_brightness = 0.35
			obj_guisangadoo.image_xscale = -abs(obj_guisangadoo.image_xscale)
			obj_guisangadoo.hp = obj_guisangadoo.max_hp
			obj_guisangadoo.x = obj_guisangadoo.xstart
			obj_guisangadoo.y = obj_guisangadoo.ystart+500
			obj_guisangadoo.patturn = 0
			obj_guisangadoo.timer = 0
			obj_guisangadoo.patturn = 0
			obj_guisangadoo.scene__ = 0
			obj_guisangadoo.activated = 0
			obj_guisangadoo.bgm = -4
			obj_guisangadoo.cannot_step = 1
			obj_guisangadoo.alarm[0] = 1
			obj_guisangadoo.dead_scene = 0
			obj_guisangadoo.depth = 1200
			obj_guisangadoo.w_alpha = 0
			obj_guisangadoo.random_movement = -1
			obj_guisangadoo.b_alpha_ = 0
			instance_destroy(obj_guisangadoo.wall1)
			instance_destroy(obj_guisangadoo.wall2)
			instance_destroy(obj_guisangadoo._light_)
			instance_destroy(obj_guisangadoo.skill_red_ball_effect_rage)
			instance_destroy(simhae_doo_bullet)
			}
		
			if instance_exists(obj_twin_eye)
			{
			global.room_brightness = 0.35
			obj_twin_eye.hp = obj_twin_eye.max_hp
			obj_twin_eye.timer = 0
			instance_destroy(obj_twin_eye_another)
			instance_destroy(obj_bullet)
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
			
			if instance_exists(obj_map_tile9222223)
			{
			obj_map_tile9222223.alarm[1] = 1
			}
			
			if room = room_sector_B03_3_remaked && global.save_point_y != player.y && global.back_to_origin_stage != 1
			{
			room_goto(room_sector_B03_2_remaked)
			}
		audio_stop_sound(global.boss_bgm_file)
		global.blur_range = 0
		global.playing_scene = 0
		discord_presence_reloading = 1
		obj_camera.t_x = _revive_xx
		obj_camera.t_y = _revive_yy
		obj_camera.x = _revive_xx
		obj_camera.y = _revive_yy
		}
		else
		{
			if global.broken_clock = 3
			{
			global.blur_range = 0
			global.t_b_alpha = -0.01
				if global.slow_motion > 30000
				{
				global.gameover += (1 - global.gameover)*0.03
				}
				
				if instance_exists(obj_wakdroid_ending)
				{
				global.gameover_reason_title = "[회귀 불능 엔딩]"
				global.gameover_reason = "과거로 되돌아가려고 했지만,\n시계가 완전히 망가져 버려 과거로 돌아갈 수 없게 되었다"
				}
			}
			else
			{
			global.blur_range = 0
				if global.gameover_reason = -4
				{
				global.gameover_reason_title = "[게임오버 엔딩]"
				global.gameover_reason = "플레이어가 사망했다"
				}
			global.gameover += (1 - global.gameover)*0.03
			}
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
