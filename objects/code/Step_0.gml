if global.chat_data != noone
{
save_twitch_chat(global.chat_sender,global.chat_data);
};

if global.none_wakgood_mode = true
{
global.credit_message = "\n\n\n\nDirector\n아버 (1인 개발)\n\n\nProgramer\n아버\n\n\nStory\n아버\n\n\nEnemy design\n아버\n\n\nUI design\n아버\n\n\nStage design\n아버\n\n\nEffect design\n아버\n\n\n\n\n\nBackground Music\nSymphony of Specters - Intense Cinematic Trailer\n\nSharo - Atorie to denno sekai\n\nBrightwaltz - Touch a flower softly\n\nBrightwaltz - Trifolium repens f. roseum\n\nSharou - Jinro no tame no komori uta\n\nBrightwaltz - Piano Improvisation 2020 Spring No2\n\nBrightwaltz - Dance in the Air\n\n\nilodolly - Raison d'etre\n\nMakai Symphony - Dragon Castle\n\n\n\n\n\n\n\n\n\n\n1차 QA\n(피드백/버그 제보)\n\n\nStellarSea\n\n서장님\n\n오코츠유타\n\n옥수수칲\n\n탄창\n\n황금뿌리\n\n러머\n\nSsab\n\n공벌\n\n화염뽱어\n\n젓가락아저씨\n\n진성e\n\n벼슬\n\n페르마벤\n\n댐쿵이\n\n쓰레기맛캔디\n\n1잡탕1\n\nzun\n\nDillionaire\n\nalpamin\n\nBackSang\n\nNANFREE\n\n쥬기\n\n참이프\n\n광부\n\nContra\n\nQuiettBee\n\n사미니\n\n(이외의 많은 여러 사람들)\n\n\n\n\n2차 QA\n(벨런스 테스터)\n\n\n댐쿵이\n\nBackSang\n\n모니타리\n\n스즈메의 문단속\n\n벤찌\n\n별명1577\n\nKastle\n\n고 라니임니다\n\n재영이요\n\n윤석\n\n러머\n\n최민우\n\nㅁㅈ\n\n허미온\n\n아리에스\n\nNAㅅ\n\nMang0_k\n\nLadon\n\nTJD\n\najdkg296\n\n쥬기\n\n잠복근무\n\n도트박스\n\n재영\n\n윤석\n\n허미온\n\ncccc\n\n원시인\n\n징버거의 돗대\n\n면주바이\n\n\n\n\n\n\n\nSpecial Thanks\n(개발에 큰 도움 주신분들과 추가 아이디어 제공자)\n\n\n\nBackSang\n\n쓰레기맛캔디\n\nzun\n\nDillionaire\n\nNANFREE\n\nalpamin\n\n1잡탕1\n\n쥬기\n\n댐쿵이\n\n\n\n\n\n\n\nThanks for playing\n\n\n\n\n\n\n\nMade with Gamemaker studio 2"
}


if global.back_to_origin_stage = 2 && global.b_alpha < 0.1
{
global.back_to_origin_stage = 0
}

if global.b_alpha >= 1 && global.n_night = 0 && instance_exists(player) && room = room_main
{
player.lantern_turnon = -1
}



if !audio_is_playing(quake_sfx)
{
	if timer_boss_light_sec <= 0
	{
	timer_boss_light_sec = 0
	}
	else
	{
	timer_boss_light_sec -= 0.01
	}
}


if audio_is_playing(quake_sfx) && timer_boss_light_sec = 0
{
timer_boss_light_thi ++
timer_boss_light ++
	if timer_boss_light > 15
	{
	activated_brightness_control = 1
	global.brightness_setting = 0.3
	global.boss_opening_light_alpha *= -1
	timer_boss_light = irandom_range(-5,13)
	}
	
	if timer_boss_light_thi > 120
	{
	timer_boss_light_sec = 1
	timer_boss_light_thi = 0
	}
}
else
{
	if activated_brightness_control = 0
	{
	saved_brightness = global.brightness_setting
	}
	else
	{
	global.brightness_setting += (saved_brightness - global.brightness_setting)*0.3
		if abs(saved_brightness - global.brightness_setting) < 0.06
		{
		global.brightness_setting = saved_brightness
		activated_brightness_control = 0
		}
	}
global.boss_opening_light_alpha = 1
}


if global.b_alpha > 1
{
	if optimizing_surf = 0
	{
	surface_free(global.bubble_surf)
	surface_free(global.light_surf)
	surface_free(global.rage_surf)
	optimizing_surf = 1
	}
}
else
{
optimizing_surf = 0
}


global.dev_message_alpha -= 0.08

if global.player_blur != 0
{
global.player_blur_time++
	if global.player_blur_time%3 = 0
	{
	global.player_blur *= -0.8
	global.player_blur_time = 0
	}
	
	if global.player_blur_time > 60
	{
	global.player_blur = 0
	}
}



if global.none_wakgood_mode = true
{
global.nickname = "플레이어"
global.voice_option = 1
global.clock = 1
}
else
{
global.nickname = "왁굳"
}


if global.accessories_owned[2] > 0
{
global.tutorial = 1
}


if global.tiredness > 24
{
global.tiredness = 24
}

if (global.n_time >= 21 || global.n_time < 6)
{
global.n_night = 1
}
else
{
global.n_night = 0
}


if instance_exists(player) && player.image_alpha > 0
{
	if (room = room_sector_B02_1 || room = room_sector_B02_2 || room = room_sector_B03_1 || room = room_sector_B03_2 || room = room_sector_B04_2 || room = room_sector_B05_2 || room = room_sector_B06_2 || room = room_sector_B03_2_remaked || room = room_sector_B03_3_remaked) && !audio_is_playing(boss_bgm)
	{
		if audio_is_playing(dungeon_bgm)
		{
		dg_vol += (1 - dg_vol)*0.08
		audio_sound_gain(in_dg_bgm,0.3*global.master_volume*global.bgm_volume*dg_vol,0)
		}
		else
		{
		in_dg_bgm = audio_play_sound(dungeon_bgm,0,true)
		}
	}
	else
	{
	dg_vol += (-0.1 - dg_vol)*0.08
		if dg_vol <= 0
		{
		audio_stop_sound(dungeon_bgm)
		}
	}
}




if global.choice > 0.8
{
var saved_c = 0
	for(var i = 0; i < 3; i++)
	{
		if global.choice_name[i] != -4
		{
		saved_c = i
		}
	}


	if global.choice_now < 0
	{
	global.choice_now = saved_c
	}


	if global.choice_now > saved_c
	{
	global.choice_now = 0
	}
	
	if keyboard_check_pressed(global.left_key) || keyboard_check_pressed(vk_up)
	{
	global.choice_now -- 
	var sfx = audio_play_sound(message_sfx,0,0)
	audio_sound_gain(sfx,0.12*global.master_volume*2*global.sfx_volume,0)
	}
			
	if keyboard_check_pressed(global.right_key) || keyboard_check_pressed(vk_down)
	{
	global.choice_now ++
	var sfx = audio_play_sound(message_sfx,0,0)
	audio_sound_gain(sfx,0.12*global.master_volume*2*global.sfx_volume,0)
	}
	
	if keyboard_check_released(ord(string(global.skip_key))) && global.choosed = 0
	{
	global.choosed = 1
	var sfx = audio_play_sound(activate_sfx,0,0)
	audio_sound_gain(sfx,0.5*global.master_volume*2*global.sfx_volume,0)
	}
}


if (global.accessories_equip[0] = 2 || global.accessories_equip[1] = 2) && global.first_rewind = 0 && instance_exists(player) && global.b_alpha < 0.1
{
global.show_guide_mes = "Re:wind (사망 회귀) 시스템\n\n플레이어가 사망하게 된 경우, 1시간씩 시간을 소모하여\n사망 전의 과거(일종의 세이브 포인트)로 되돌린다.\n\n(이때의 시간 소모는, 게임 내의 '목숨'과 같은 시스템이라고 볼수 있다)"
global.show_guide_mes_spr = 0
global.first_rewind = 1
}



if global.left_time <= 0
{
global.platform_speed = 0

	if room != room_main && global.story_next < 100
	{
	room_goto(room_main)
	}
	else
	{
		if !audio_is_playing(gameover_explode) && playing_gameover_scene >= 160
		{
			if global.w_alpha > 1
			{
				if global.slow_motion = 0
				{
				global.t_b_alpha = 1.01
					
					if instance_exists(obj_wakdroid_ending)
					{
					global.gameover_reason_title = "[회귀 불능 엔딩]"
					global.gameover_reason = "과거로 되돌아가려고 했지만,\n시계가 완전히 망가져 버려 과거로 돌아갈 수 없게 되었다"
					}
					else
					{
					global.gameover_reason_title = "[종말 엔딩]"
					global.gameover_reason = "D-day가 지나, 박사의 왁드로이드가 완성되어버렸다"
					}
				global.never_move = 0
				global.playing_scene = 0
				global.slow_motion = 1
				instance_destroy(player_message)
				}
			}
			else
			{
				if global.never_move = 1
				{
				global.w_alpha += (playing_gameover_scene-70)/1000
				}
			}
		}
		else
		{
		global.playing_scene = 1
		global.never_move = 1
			if instance_exists(player) && global.story_next < 100
			{
			player.x = -100
			player.y = -100
			}
		playing_gameover_scene ++
			if playing_gameover_scene < 160
			{
				if instance_exists(obj_isedol)
				{
				obj_camera.x = obj_isedol.x
				obj_camera.t_x = obj_isedol.x
				obj_camera.t_y = obj_isedol.y
				
		
					if playing_gameover_scene = 40
					{
					obj_isedol.image_xscale = 1
					var check__ = instance_create_depth(obj_isedol.x,obj_isedol.y,obj_isedol.depth-1,player_message)
					check__.text = "!"
					check__.target = obj_isedol.id
					check__.parents = obj_isedol.id
					}
				}
			}
		
			if playing_gameover_scene >= 70
			{
			view_shake(1,1.3,1)
				if playing_gameover_scene >= 110
				{
				global.w_alpha = (playing_gameover_scene-110)/1000
				}
			}
		
			if playing_gameover_scene = 110
			{
			var sfx = audio_play_sound(gameover_explode,0,0)
			audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
			}
		
			if playing_gameover_scene >= 130
			{
				if instance_exists(obj_isedol)
				{
				obj_camera.t_x = obj_isedol.x-1500
				obj_camera.t_y = obj_isedol.y
				}
			}
		}
	}
}



if global.tiredness >= 18 && instance_exists(player)
{
	if global.hp > player.max_hp-(global.tiredness-17)*100
	{
	global.hp = player.max_hp-(global.tiredness-17)*100
	}
}

if global.tiredness < 0
{
global.tiredness = 0
}

if global.n_time > 24
{
global.n_time -= 24
}

if global.n_time < 0
{
global.n_time += 24
}

if show_sound_list > 0
{
show_sound_list_y += (-150 - show_sound_list_y)*0.1
show_sound_list -= 0.01
show_sound_list_alpha += (1.1 - show_sound_list_alpha)*0.1
}
else
{
show_sound_list_y += (-256 - show_sound_list_y)*0.1
show_sound_list_alpha += (-0.01 - show_sound_list_alpha)*0.1
}

if fps_real > max_fps
{
max_fps = fps_real
}


if global.free_hp = 1
{
global.hp = 1000
}

if global.free_stamina = 1
{
global.stamina = 11
}


if global.gold_for_draw != global.gold
{
var cal_gold = global.gold - global.gold_for_draw
	if gold_sfx = 0 && room != menu
	{
	var sfx = audio_play_sound(buy_item,0,0)
	audio_sound_gain(sfx,0.07*global.master_volume*2*global.sfx_volume,0)
	
	var d_ef = instance_create_depth(player.x,player.y-16,depth-1,draw_hp_m)
	var text__ = string(cal_gold)+"G"
	if global.korean_text = 1
	{
	text__ = string(cal_gold)+"골드"
	}
	d_ef.d_text = text__
	d_ef.image_blend = c_white
	d_ef.image_xscale = 1
	d_ef.image_yscale = 1
	d_ef.target = -4
	gold_sfx = 1
	}
global.gold_for_draw += (cal_gold)*0.08
global.gold_draw_alpha += (13000 - global.gold_draw_alpha)*0.1
	if abs(global.gold_for_draw - global.gold) <= 2
	{
	global.gold_for_draw = global.gold
	}
}
else
{
gold_sfx = 0
global.gold_draw_alpha += (-0.01 - global.gold_draw_alpha)*0.1
}


if global.playing_scene = 0 && global.show_guide_mes = -4 && global.hp > 0 && global.b_alpha < 0.3
{
	if keyboard_check_pressed(vk_escape)
	{
	alarm[10] = 1
	}
	
	if keyboard_check_pressed(vk_tab)
	{
	alarm[8] = 1
	}
}
else
{
	if instance_exists(master_volume_setting) || instance_exists(bg_status)
	{
	option = 0
	global.cursor = 0
	instance_destroy(setting_parents)
	}
}



if instance_exists(player)
{
	if global.chat_activity = false && keyboard_check_pressed(ord("R")) && global.fps_draw > 0
	{
		if player.assult_mode <= 0
		{
			if player.just_come_check = 0 && player.attacked_before = 0
			{
			global.n_sword ++
				if global.n_sword > global.total_weapon_num
				{
				global.n_sword = 0
				}
			var sfx = audio_play_sound(change_etc,0,0)
			audio_sound_gain(sfx,0.04*global.master_volume*2*global.sfx_volume,0)
			alarm[7] = 1
			}
		}
		else
		{
		var sfx = audio_play_sound(cannot_buy,0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
		}
	}
	
	var _ins_ = -4
	if instance_exists(player)
	{
	_ins_2 = instance_nearest(player.x,player.y,mob_parents)
	_ins_ = instance_nearest(player.x,player.y,normal_mob)
	}
	
	if !instance_exists(_ins_) || _ins_.object_index = obj_ball
	{
	player.assult_mode -= 10
	}
	
	if instance_exists(_ins_2)
	{
		if abs(player.x - _ins_2.x) <= 370
		{
		player.assult_mode = 480
		}
	}
	else
	{
		if player.assult_mode < 480
		{
		player.assult_mode = 0
		}
	}
}

//자살키 (suicide)
if keyboard_check_pressed(ord(string(global.suicide_key))) && global.chat_activity = false && global.never_move_in_setting = 0
{
	if global.hp > 0 && instance_exists(player) && player.suicide = 0
	{
	//player.y -= 4
	//player.vspeed = -4
	//code.alarm[10] = 1
	player.suicide = 1
	player.suicide_sfx = 0
	//hp_minus_for_player(1047,player)
	}
	else
	{
	var sfx = audio_play_sound(cannot_buy,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	}
}




if global.key_setting_message = 2
{
alarm[9] = 2
global.key_setting_message = 2.5
}


if global.slow_motion = 0 && fps_real < 55 && room_speed >= 60
{
stack_lcq ++
	if stack_lcq > 30
	{
	global.low_quality = 1
	}
}
else
{
stack_lcq = 0
}


if instance_number(obj_camera) > 0
{
depth = obj_camera.depth+1
}

if global.r_hp_alpha > 0
{
global.r_hp_alpha += (-0.01 - global.r_hp_alpha)*0.1
}


global.rage_w_alpha += (-0.01 - global.rage_w_alpha)*0.1

if global.rage_gauge >= 100
{
r_w_alpha_time++
	if r_w_alpha_time > 65
	{
	global.rage_w_alpha = 1
	r_w_alpha_time = 0
	}
}

if auto_des > 0
{
auto_des --
}
setting_alpha_real += (setting_alpha - setting_alpha_real)*0.1



if global.select_dev_setting > 0
{
setting_text_alpha += (1 - setting_text_alpha)*0.1
}







if global.t_b_alpha < 0 && global.slow_motion <= 0
{
global.matched_pl1_ready = 0
global.matched_pl2_ready = 0
}

if global.stamina < 0
{
global.stamina = 0
}

light_scaling_time++

if light_scaling_time > 80
{
light_scaling_++
light_scaling_time = 0
}

if light_scaling_ > 1
{
light_scaling_ = 0
}

if light_scaling_ = 0
{
global.light_scaling += 0.001
}
else
{
global.light_scaling -= 0.001
}


if b_map != global.now_map
{
global.w_alpha = 1.5
b_map = global.now_map
}

if global.can_send_shake > 0
{
global.can_send_shake --
}



for(var i = 5; i < 16; i++)
{
	if global.item_owned[i] > 0
	{
	global.opened_sector = i-3
	}
}




if global.rage_gauge > 100
{
global.rage_gauge = 100
}

if injured_effect > 0
{
injured_effect += (-0.01 - injured_effect)*0.1
}



if global.b_alpha <= 0.1 || global.t_auto_volume_down <= 0
{
global.auto_volume_down += (global.t_auto_volume_down - global.auto_volume_down)*0.01
}




