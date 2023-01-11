/// @description Insert description here
// You can write your code in this editor
if abs(player.y - y) < 120 && image_alpha > 0
{
	var random_val___ = percentage_k(5)
	if random_val___ = 1
	{
	create_buble_effect(1*0.3,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,32)/7,0.1,0.1,$FF47BBFF,$FF4C81FF,2,$FF534CFF,x,y+5,depth-choose(-1,32),0,false,false)
	}
	
	var random_val___ = percentage_k(10)
	if random_val___ = 1
	{
	create_buble_effect(1.1*0.3,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,32)/7,0.07,0.07,$FF62D1F7,$FF6C60CD,2,$FF191919,x,y+5,depth-choose(-1,32),1,false,false)
	}
}


if !instance_exists(_light_)
{
_light_ = instance_create_depth(x,y,depth,obj_light)
_light_.p_id = id
_light_.alpha = 0
_light_.sprite_index = sprite64
_light_.image_blend = $FF4EB0F7
_light_.light_type = 0
_light_.image_xscale = 0
_light_.image_yscale = 0
}
else
{
_light_.x = x
_light_.y = y

_light_.image_xscale += (5.6 - _light_.image_xscale)*0.08
_light_.image_yscale += (5.6 - _light_.image_yscale)*0.08
_light_.alpha += ((0.5-global.room_brightness)*image_alpha - _light_.alpha)*0.08
}

if place_meeting(x,y+1,floor_parents)
{
gravity = 0
vspeed = 0
}
else
{
gravity = 0.23
}

repeat(100)
{
	if place_meeting(x,y+0.2,floor_parents)
	{
	y -= 0.1
	}
	else
	{
	break;
	}
}


if audio_is_playing(ending_select) || audio_is_playing(follower_bgm) || audio_is_playing(ending_cinematic)
{
audio_sound_gain(bgm__,volume__*volume_downer*0.04*global.master_volume*2*global.bgm_volume*global.certain_music_volume,0)
}



if global.b_alpha < 0.6
{
interecting_now = 1
}





if interecting_now = 1 && (global.real_ending = 0 || (message_phase >= 61 && message_phase <= 66))
{
	if message_phase != 60 && message_phase != 61 && message_phase != 64 && !instance_exists(check__)
	{
	global.never_move = 1
	global.playing_scene = 1
	}

	if !instance_exists(check__) && message_phase = 0
	{
	player.image_xscale = 1
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "..."
	check__.target = player.id
	check__.parents = id
	player.image_xscale = -1
	audio_stop_sound(global.boss_bgm_file)
	}
	
	if !instance_exists(check__) && message_phase = 1
	{
	global.show_guide_mes_spr = 6
	global.show_guide_mes = "박사의 계획은 성공적으로 저지된 듯 하다"
	message_phase++
	}
	
	if message_phase = 2
	{
	obj_camera.t_x = x
	obj_camera.x += (x - obj_camera.x)*0.1
	player.guarding = 1.8
	}
	
	if !instance_exists(check__) && global.show_guide_mes = -4 && message_phase = 2 && show_cinematic_sec = 0
	{
	bgm__ = audio_play_sound(ending_select,0,true)

	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "(자폭 시스템를 가동합니다)"
	check__.target = id
	check__.parents = id
	}
	
	if message_phase = 3
	{
	obj_camera.t_x = player.x
	obj_camera.x += (x - obj_camera.x)*0.1
	player.guarding = 1.8
	}
	
	if !instance_exists(check__) && message_phase = 3
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "!"
	check__.target = player.id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 4
	{
	global.choice += (1 - global.choice)*0.1
		if global.none_wakgood_mode = false
		{
		global.choice_name[0] = "시계로 왁드로이드를 과거로 보낸다\n(Re:wind시계 영구 소모로 인해, 더 이상 사망 회귀 사용 불가)"
		global.choice_name[1] = "시계를 이용해 과거로 돌아가 모두를 대피시킨다"
		global.choice_name[2] = "연구소 밖으로 도망간다"
			if global.choosed > 0
			{
				if global.choice_now = 0
				{
				message_phase = 5
				}
			
				if global.choice_now = 1
				{
				message_phase = 30
				}
			
				if global.choice_now = 2
				{
				var	sfx__ = audio_play_sound(walk_sfx,0,false)
				audio_sound_gain(sfx__,0.3,0)
				message_phase = 49
				global.t_b_alpha = 3.1
				}
			global.choice = 0
			global.choosed = 0
			}
		}
		else
		{
		global.choice_name[0] = "사망 회귀를 이용해 과거로 되돌아간다"
		global.choice_name[1] = "연구소 밖으로 도망간다"
		global.choice_name[2] = -4
		
			if global.choosed > 0
			{
				if global.choice_now = 0
				{
				message_phase = 30
				}
			
				if global.choice_now = 1
				{
				var	sfx__ = audio_play_sound(walk_sfx,0,false)
				audio_sound_gain(sfx__,0.3,0)
				message_phase = 49
				global.t_b_alpha = 3.1
				}
			global.choice = 0
			global.choosed = 0
			}
		}
	}
	
	//엔딩1 - 소멸 엔딩
	if !instance_exists(check__) && message_phase = 5
	{
	//시계 던지는 연출
		if !instance_exists(threw_item)
		{
		var clock__ = instance_create_depth(player.x,player.y,depth+1,threw_item)
		clock__.vspeed = -3
		clock__.hspeed = 5
		}
		else
		{
			if threw_item.gravity = 0
			{
			clock_throw_scene ++
				if clock_throw_scene > 100
				{
				instance_destroy(threw_item)
				var sfx = audio_play_sound(glow_sfx,0,0)
				audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
				global.w_alpha = 1
				image_alpha = 0
				message_phase = 6
				}
			}
		}
	}
	
	if message_phase = 6
	{
	clock_throw_scene ++
	global.w_alpha -= 0.05
	volume__ += (-0.1 - volume__)*0.05
		if !instance_exists(check__) && clock_throw_scene > 200
		{
		global.show_guide_mes_spr = 6
		global.show_guide_mes = "성공적으로 자폭 직전의 왁드로이드는 과거로 보내졌다"
		message_phase++
		}
	}
	
	if message_phase >= 7 && message_phase <= 10
	{
	global.w_alpha -= 0.05
		if message_phase = 7
		{
			if global.show_guide_mes = -4
			{
			var xx_ = player.x+irandom_range(-16,16)
			var yy_ = player.y+irandom_range(-16,16)
			var random_val___ = percentage_k(15)
				if random_val___ = 1
				{
				var random_val___2 = percentage_k(30)
				create_buble_effect(player.image_alpha*0.1,270+irandom_range(-5,5),0,choose(-1)*irandom_range(50,100)/70,0.01,0.01,$FF3ACAFF,c_white,1,c_white,xx_,yy_,depth-random_val___2,0,false,false)
				}
			}
		}
		else
		{
		var xx_ = player.x+irandom_range(-16,16)
		var yy_ = player.y+irandom_range(-16,16)
		var random_val___ = percentage_k(15)
			if random_val___ = 1
			{
			var random_val___2 = percentage_k(30)
			create_buble_effect(player.image_alpha*0.1,270+irandom_range(-5,5),0,choose(-1)*irandom_range(50,100)/70,0.01,0.01,$FF3ACAFF,c_white,1,$FF3ACAFF,xx_,yy_,depth-random_val___2,0,false,false)
			}
		}
	}
	
	if message_phase = 7 && global.show_guide_mes = -4
	{
	player.image_alpha += (0.8-irandom_range(30,10)/100 - player.image_alpha)*0.07
	player.guarding = 1
		if !instance_exists(check__)
		{
		var sfx = audio_play_sound(glow_sfx,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "!"
		check__.target = player.id
		check__.parents = id
		}
	}
	
	if !instance_exists(check__) && message_phase = 8
	{
	player.guarding = 1
	player.image_alpha += (0.8-irandom_range(30,10)/100 - player.image_alpha)*0.07
	global.show_guide_mes_spr = 6
	global.show_guide_mes = "몸이 점점 사라져간다"
	message_phase++
	}
	
	if message_phase = 9 && global.show_guide_mes != -4
	{
	player.guarding = 1
	}
	
	if !instance_exists(check__) && message_phase = 9
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "..."
	check__.target = player.id
	check__.parents = id
	}

	if !instance_exists(check__) && global.show_guide_mes = -4 && message_phase = 10
	{
		if __sfx__ = 0 && player.image_alpha < 0.1
		{
		instance_destroy(check__)
		var sfx = audio_play_sound(glow_sfx,0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
		__sfx__ = 1
		}
	player.image_alpha += (-0.01 - player.image_alpha)*0.03
	depth = obj_camera.depth-10
	audio_stop_sound(ending_select)
		if timer2 > 50
		{
		obj_camera.t_y = player.y-ending_mes_timer-timer2*0.5
		}
	
		if timer2 > 170
		{
			if !audio_is_playing(nomal_ending)
			{
			bgm = audio_play_sound(nomal_ending,0,true)
			audio_sound_gain(bgm,0.23*global.master_volume*2*global.bgm_volume*global.certain_music_volume,0)
			}
		global.gameover_reason_title = "[소멸 엔딩]"
		global.gameover_reason = "과거로 보낸 왁드로이드로 인해 과거의 자신이 사망하여 없어졌기에\n현재의 자신 또한 존재할 수 없게 되었다"
		show_ending += (1 - show_ending)*0.01
		global.fix_camera = 0
		ending_mes_timer += 0.5

			if ending_mes_timer > 150
			{
			global.credit_b_alpha += 0.0012
				if ending_mes_timer > 450
				{
				message_phase = 11
				}
			}
		}
		else
		{
		timer2 ++
		}
	}
	
	if message_phase = 11
	{
	global.credit_b_alpha += 0.0012
	obj_camera.t_y = player.y-ending_mes_timer
		if global.credit_b_alpha > 0.3
		{
		show_ending += (-0.08 - show_ending)*0.01
			if show_ending < 0
			{
			message_phase = 99
			}
		}
	}
	

	//check__ = instance_create_depth(x,y,depth-1,player_message)
	//check__.text = "(과거로 보내버린 왁드로이드가 폭발하여, 과거의 자신이 폭발에 휘말려 사망한듯 하다)"
	//check__.target = player.id
	//check__.parents = id

	//check__ = instance_create_depth(x,y,depth-1,player_message)
	//check__.text = "(과거가 존재하지 않으므로, 현재의 나는 존재할 수 없다)"
	//check__.target = player.id
	//check__.parents = id
	

	
	//엔딩2 - 노멀 엔딩
	if !instance_exists(check__) && message_phase = 30
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "..."
	check__.target = player.id
	check__.parents = id
	}
	
	if message_phase >= 31 && message_phase <= 35
	{
	volume__ += (-0.1 - volume__)*0.1
	}
	
	if !instance_exists(check__) && message_phase = 31
	{
	global.show_guide_mes_spr = 6
	global.show_guide_mes = "왁드로이드의 자폭으로 인해 폭발하는 연구소"
	message_phase++
	}
	
	if !instance_exists(check__) && global.show_guide_mes = -4 && message_phase = 32
	{
	global.show_guide_mes_spr = 6
		if global.none_wakgood_mode = true
		{
		global.show_guide_mes = "이를 모르는 연구소 내의 동료들이 폭발에 휘말릴 것이다"
		}
		else
		{
		global.show_guide_mes = "이를 모르는 이세돌 멤버들과 팬치들, 천양이는 폭발에 휘말릴 것이다"
		}
	message_phase++
	}
	
	if !instance_exists(check__) && global.show_guide_mes = -4 && message_phase = 33
	{
	global.show_guide_mes_spr = 6
	global.show_guide_mes = "답은 한가지 밖에 없다"
	message_phase++
	}
	
	if !instance_exists(check__) && global.show_guide_mes = -4 && message_phase = 34
	{
	global.show_guide_mes_spr = 6
	global.show_guide_mes = "되돌려야만 한다"
	message_phase++
	}
	
	if !instance_exists(check__) && message_phase = 35 && global.show_guide_mes = -4
	{
	player.suicide = 1
	player.suicide_sfx = 0
	message_phase = 61
	}
	
	if message_phase >= 49 && message_phase <= 51
	{
	volume__ += (-0.1 - volume__)*0.1
	}
	
	//엔딩3 - 도망자 엔딩
	if global.b_alpha > 3 && message_phase = 49
	{
	room_goto(room_sector_outside)
	global.t_b_alpha = -0.01
	}
	
	if !instance_exists(check__) && message_phase = 50
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "..."
	check__.target = player.id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 51
	{
	audio_stop_sound(ending_select)
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "!"
	check__.target = player.id
	check__.parents = id
	}
	
	if message_phase >= 52 && message_phase < 57
	{
	volume__ += (1 - volume__)*0.1
	}
	
	if !instance_exists(check__) && message_phase = 52
	{
	global.show_guide_mes_spr = 6
	global.show_guide_mes = "왁드로이드의 자폭에 대한 사실을 모르는"
	message_phase++
	}
	
	if !instance_exists(check__) && global.show_guide_mes = -4 && message_phase = 53
	{
	global.show_guide_mes_spr = 6
		if global.none_wakgood_mode = true
		{
		global.show_guide_mes = "연구소 내의 동료들이 폭발에 휘말려 버렸다"
		}
		else
		{
		global.show_guide_mes = "이세돌 맴버들과 팬치들, 그리고 천양이는 폭발에 휘말려 버렸다"
		}
	message_phase = 55
	}

	if !instance_exists(check__) && message_phase = 55
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "..."
	check__.target = player.id
	check__.parents = id
	}
	
	//엔딩 선택
	if !instance_exists(check__) && message_phase = 56
	{
	global.choice += (1 - global.choice)*0.1
	global.choice_name[0] = "Re:wind시계를 이용해 폭발 이전의 과거로 되돌아간다"
	global.choice_name[1] = "박사의 계획을 저지했으니, 만족하고 집으로 돌아간다"
	global.choice_name[2] = -4
	
		if global.choosed > 0
		{
			if global.choice_now = 0
			{
			message_phase = 57
			}
			
			if global.choice_now = 1
			{
			message_phase = 70
			}
		global.choice = 0
		global.choosed = 0
		}
	}
	
	//사망 회귀 엔딩
	if message_phase = 57
	{
	volume__ += (-0.1 - volume__)*0.1
		if !instance_exists(check__)
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "..."
		check__.target = player.id
		check__.parents = id
		}
	}
	
	if message_phase = 58
	{
	volume__ += (-0.1 - volume__)*0.1
		if !instance_exists(check__)
		{
		global.show_guide_mes_spr = 6
		global.show_guide_mes = "이 상황을 바꾸기 위해선,"
		message_phase++
		}
	}
	
	if !instance_exists(check__) && global.show_guide_mes = -4 && message_phase = 59
	{
	global.show_guide_mes_spr = 6
	global.show_guide_mes = "되돌려야만 한다"
	message_phase++
	}
	
	if !instance_exists(check__) && message_phase = 60 && global.show_guide_mes = -4
	{
	player.suicide = 1
	player.suicide_sfx = 0
	message_phase ++
	}
	
	if message_phase = 61
	{
		if !audio_is_playing(follower_bgm) && room = room_main && show_cinematic_sec = 0
		{
		bgm__ = audio_play_sound(follower_bgm,0,true)
		}
		
		if room = room_main
		{
			if !instance_exists(check__)
			{
				if player.y > 739
				{
				obj_camera.x = 1213
				obj_camera.y = 734
				obj_camera.t_x = 1213
				obj_camera.t_y = 734
				player.x = 1213
				player.y = 734
				}
			global.b_alpha = 0
			audio_stop_sound(ending_select)
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "!"
			check__.target = player.id
			check__.parents = id
			global.never_move = 1
			}
			else
			{
				if player.y > 739
				{
				obj_camera.x = 1213
				obj_camera.y = 734
				obj_camera.t_x = 1213
				obj_camera.t_y = 734
				player.x = 1213
				player.y = 734
				}
			}
		}
		
		if room != room_main
		{
		global.w_alpha -= 0.05
		global.playing_scene = 0
		}
	}
	
	if !instance_exists(check__) && message_phase = 62 && global.show_guide_mes = -4
	{
	global.show_guide_mes_spr = 6
	global.show_guide_mes = "빨리 왁드로이드의 자폭에 대한 사실을 알려야만 한다!"
	message_phase++
	}
	
	if message_phase >= 61 && message_phase <= 64 && room = room_main
	{
	volume__ += (1 - volume__)*0.04
	}
	
	if !instance_exists(check__) && message_phase = 63 && global.show_guide_mes = -4
	{
		if global.real_ending = 0
		{
			if player.x < 1179
			{
			player.image_xscale = -1
			global.movement_speed = 4
			player.image_index += 0.8
			}
			else
			{
			message_phase++
			}
		}
	}
	
	if !instance_exists(check__) && message_phase = 64 && global.show_guide_mes = -4
	{
		if global.real_ending = 0
		{
			if player.x < 1179
			{
			message_phase = 61
			}
			else
			{
			global.never_move = 0
				if !instance_exists(player_message)
				{
				global.playing_scene = 0
				}
			}
		}
		else
		{
			if player.x < 1179 && room = room_main
			{
				if global.t_b_alpha != 3.01
				{
				var	sfx__ = audio_play_sound(walk_sfx,0,false)
				audio_sound_gain(sfx__,0.3,0)
				global.t_b_alpha = 3.01
				}
			global.never_move = 1
				if global.b_alpha > 3
				{
				global.t_b_alpha = -0.1
				global.never_move = 0
				global.ending_story = 0
				room_goto(room_sector_B07)
				}
			}
		}
	}
	
	//도망자 엔딩
	if message_phase = 70
	{
	volume__ += (-0.1 - volume__)*0.1
		if !instance_exists(check__)
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "..."
		check__.target = player.id
		check__.parents = id
		}
	}
	
	if !instance_exists(check__) && message_phase = 71
	{
	obj_camera.t_x = -4
	global.fix_camera = 0
	global.movement_speed = 1
	player.image_index += 0.15
	player.image_xscale = -1
	timer2 ++
	
		if timer2 > 200
		{
		depth = obj_camera.depth-10
		audio_stop_sound(ending_select)
			if !audio_is_playing(ending_sec_bgm)
			{
			bgm = audio_play_sound(ending_sec_bgm,0,true)
			audio_sound_gain(bgm,0.23*global.master_volume*2*global.bgm_volume*global.certain_music_volume,0)
			}
		global.gameover_reason_title = "[도망자 엔딩]"
		if global.none_wakgood_mode = true
		{
		global.gameover_reason = "연구소 내의 동료들을 구하지 않고 혼자 탈출 했다"
		}
		else
		{
		global.gameover_reason = "이세돌 멤버들과, 팬치들 그리고 천양이를 구하지 않고 혼자 탈출 했다"
		}
		show_ending += (1 - show_ending)*0.01
		obj_camera.t_y = player.y-120-ending_mes_timer
		ending_mes_timer += 0.5

			if ending_mes_timer > 150
			{
			global.credit_b_alpha += 0.0012
				if ending_mes_timer > 450
				{
				message_phase = 72
				}
			}
		}
	}
	
	if message_phase = 72
	{
	global.credit_b_alpha += 0.0012
	obj_camera.t_y = player.y-120-ending_mes_timer
		if global.credit_b_alpha > 0.3
		{
		show_ending += (-0.08 - show_ending)*0.01
		
			if show_ending < 0
			{
			message_phase = 99
			}
		}
	}
	
	if message_phase = 99
	{
	show_mes_ending = 1
	show_ending += (1.0001 - show_ending)*0.01
	obj_camera.t_y = player.y-120-ending_mes_timer
	
		if show_ending > 1
		{
		message_phase = 100
		}
	}
	
	if message_phase = 100
	{
	show_ending += (-0.08 - show_ending)*0.01
		if global.show_credits = 0 && global.credit_b_alpha > 0.8
		{
		global.show_credits = 1
		}
	}
}

if global.show_credits > 12000
{
volume_downer -= 0.001
audio_sound_gain(bgm,0.23*global.master_volume*2*global.bgm_volume*global.certain_music_volume*volume_downer,0)
	if volume_downer <= 0
	{
		if select_end = 0
		{
		global.choice += (1 - global.choice)*0.1
		global.choice_name[0] = "기존 데이터로 중간 지점부터 시작 하여 빠르게 엔딩만 보기"
		global.choice_name[1] = "다회차 플레이 하기"
		global.choice_name[2] = -4
			if global.choosed > 0
			{
				if global.choice_now = 0
				{
				save_and_load_data(1,1)
				alarm[10] = 30
				}
				
				if global.choice_now = 1
				{
				file_delete("Project_wak_beta_04.ini")
				global.replayed ++
				save_and_load_data(1,2)
				select_end = 1
				}
			global.choosed = 0
			}
		}
		else
		{
		global.choice += (-0.1 - global.choice)*0.3
		select_end ++
			if select_end <= 2
			{
			save_and_load_data(1,2)
			}
			
			if select_end > 10
			{
			game_restart()
			}
		}
	}
}


if room = room_sector_outside && global.real_ending > 0 && player.x > 1243 && show_cinematic = 0 && global.playing_scene = 0 && global.b_alpha < 0.1
{
show_cinematic ++
}

if show_cinematic > 0
{
global.never_move = 1
	if show_cinematic_sec < 7150
	{
	global.playing_scene = 1
	}
	
	if !instance_exists(check__) && show_cinematic = 1
	{
	obj_camera.t_x = player.x
	player.image_xscale = 1
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "..."
	check__.target = player.id
	check__.parents = id
	show_cinematic += 0.1
	}
	
	if !instance_exists(check__) && show_cinematic = 1.1
	{
	obj_camera.t_x = player.x
	player.image_xscale = 1
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "(전부 연구소 밖으로 대피해서 큰 피해는 없는 듯 하다)"
	check__.target = player.id
	check__.parents = id
	show_cinematic += 0.1
	}
	
	if !instance_exists(check__) && show_cinematic = 1.2
	{
	obj_camera.t_x = player.x
	player.image_xscale = 1
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "(박사의 계획 또한 저지되었다)"
	check__.target = player.id
	check__.parents = id
	show_cinematic += 0.1
	}
	
	if !instance_exists(check__) && show_cinematic = 1.3
	{
	obj_camera.t_x = player.x
	player.image_xscale = 1
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "..."
	check__.target = player.id
	check__.parents = id
	show_cinematic += 0.1
	}
	
	if !instance_exists(check__) && show_cinematic = 1.4
	{
	obj_camera.t_x = player.x
	player.image_xscale = 1
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "(돌아가자)"
	check__.target = player.id
	check__.parents = id
	show_cinematic = 2
	}
	
	if show_cinematic > 1 && show_cinematic_sec = 0 && !instance_exists(check__)
	{
	show_cinematic ++
	}
	
	if show_cinematic > 200 && show_cinematic_sec = 0
	{
	player.image_xscale = -1
	global.movement_speed = speed_pl
		if show_cinematic > 240
		{
		obj_camera.t_y = player.y-(show_cinematic-240)
			if speed_pl > 1.3
			{
			speed_pl = 1.3
			}
			else
			{
			speed_pl += 0.003+speed_pl*0.1
			}
		}
	}
	
	if show_cinematic > 540 && show_cinematic_sec = 0
	{
		if show_cinematic > 640
		{
		global.t_b_alpha += 0.01
		}
	
		if global.t_b_alpha > 3
		{
		show_ending += (-0.01 - show_ending)*0.03
		}
		else
		{
		show_ending += (1.001 - show_ending)*0.03
		}
		
		if global.t_b_alpha > 3.5 && global.show_credits = 0
		{
		global.show_credits = 1
		}
		
		if global.t_b_alpha > 6
		{
		obj_camera.t_x = -4
		obj_camera.t_y = -4
		obj_camera.x = 831
		obj_camera.y = -1000
		global.t_b_alpha = -0.1
		player.image_alpha = 0
		show_cinematic_sec = 1
		room_goto(tuto_room)
		global.gameover_reason_title = "[진엔딩]"
		bgm__ = audio_play_sound(ending_cinematic,0,true)
		}
	}
	
	if show_cinematic_sec > 0
	{
		if room != room_main
		{
		obj_camera.v_x = 1280
		obj_camera.v_y = 720
		obj_camera.tv_x = 1280
		obj_camera.tv_y = 720
		}
	global.never_move = 1
	if show_cinematic_sec < 8280
	{
	global.playing_scene = 1
	}
	show_cinematic_sec ++
	player.x = obj_camera.x
	player.y = obj_camera.y
	player.vspeed = 0
	player.gravity = 0
		if show_cinematic_sec < 500
		{
		obj_camera.t_x = 831
		obj_camera.t_y += (732 - obj_camera.t_y)*0.01
		}
		
		if show_cinematic_sec >= 500 && show_cinematic_sec < 600
		{
		obj_camera.t_x = 831
		obj_camera.t_y += (room_height - obj_camera.t_y)*0.01
		global.t_b_alpha = 2.1
		}
		
		if show_cinematic_sec >= 600 && show_cinematic_sec < 1100
		{
			if show_cinematic_sec = 600
			{
			room_goto(room_sector_B02_2)
			global.t_b_alpha = -0.1
			obj_camera.x = 2398
			obj_camera.t_x = 2398
			obj_camera.y = 956
			obj_camera.t_y = 956
			}
			else
			{
			obj_camera.t_x ++
			}
			
			if show_cinematic_sec >= 1070
			{
			global.t_b_alpha = 2.1
			}
		}
		
		if show_cinematic_sec >= 1100 && show_cinematic_sec < 1680
		{
			if show_cinematic_sec = 1100
			{
			room_goto(room_sector_B03_2)
			global.t_b_alpha = -0.1
			obj_camera.x = 4667
			obj_camera.t_x = 4667
			obj_camera.y = 956
			obj_camera.t_y = 956
			}
			else
			{
			obj_camera.t_x ++
			}
			
			if show_cinematic_sec >= 1600
			{
			global.t_b_alpha = 2.1
			}
		}
		
		if show_cinematic_sec >= 1680 && show_cinematic_sec < 2200
		{
			if show_cinematic_sec <= 1681
			{
			room_goto(room_sector_B04_2)
			global.t_b_alpha = -0.1
			obj_camera.x = 3005
			obj_camera.t_x = 3005
			obj_camera.y = room_height-400
			obj_camera.t_y = room_height-400
			}
			else
			{
				if show_cinematic_sec < 1920
				{
				obj_camera.t_y --
				}
				else
				{
				obj_camera.t_x ++
				}
			}
			
			if show_cinematic_sec = 1920
			{
			obj_camera.x = 1800
			obj_camera.t_x = 1800
			obj_camera.y = 642
			obj_camera.t_y = 642
			}
			
			if show_cinematic_sec >= 2160
			{
			global.t_b_alpha = 2.1
			}
		}
		
		if show_cinematic_sec >= 2200 && show_cinematic_sec < 2700
		{
			if show_cinematic_sec = 2200
			{
			room_goto(room_sector_B05_2)
			global.t_b_alpha = -0.1
			obj_camera.x = 1323
			obj_camera.t_x = 1323
			obj_camera.y = 1333
			obj_camera.t_y = 1333
			}
			else
			{
				if show_cinematic_sec < 2400
				{
				obj_camera.t_x += 0.8
				obj_camera.t_y -= 0.9
				}
				else
				{
				obj_camera.t_x ++
				}
			}
			
			if show_cinematic_sec = 2400
			{
			obj_camera.x = 5000
			obj_camera.t_x = 5000
			obj_camera.y = 2240
			obj_camera.t_y = 2240
			}
			
			if show_cinematic_sec >= 2700
			{
			global.t_b_alpha = 2.1
			}
		}
		
		if show_cinematic_sec >= 2760 && show_cinematic_sec < 3900
		{
			if show_cinematic_sec = 2760
			{
			room_goto(room_sector_B06_2)
			global.t_b_alpha = -0.1
			obj_camera.x = 144
			obj_camera.t_x = 144
			obj_camera.y = 2174
			obj_camera.t_y = 2172
			}
			else
			{
			obj_camera.t_x ++
			}
			
			if show_cinematic_sec = 3240
			{
			obj_camera.x = 3150
			obj_camera.t_x = 3150
			}
			
			if show_cinematic_sec >= 3800
			{
			global.t_b_alpha = 2.1
			}
		}
		
		if show_cinematic_sec >= 3900 && show_cinematic_sec < 4930
		{
			if show_cinematic_sec = 3900
			{
			room_goto(room_sector_B07)
			global.t_b_alpha = -0.1
			obj_camera.x = 1825
			obj_camera.t_x = 1825
			obj_camera.y = 2241
			obj_camera.t_y = 2241
			}
			else
			{
			obj_camera.t_x += 1.5
			}
			
			if show_cinematic_sec >= 4200
			{
			obj_camera.t_x += 1
			}
			
			if show_cinematic_sec >= 4920
			{
			global.t_b_alpha = 2.1
			}
		}
		
		if show_cinematic_sec >= 4930 && show_cinematic_sec < 6010
		{
			if show_cinematic_sec = 4930
			{
				if instance_exists(obj_angel)
				{
				instance_destroy(obj_angel.wall1)
				instance_destroy(obj_angel.wall2)
				instance_destroy(obj_angel._light_)
				instance_destroy(obj_angel.spear__)
				instance_destroy(obj_angel)
				}
			global.t_b_alpha = -0.1
			obj_camera.x = 4468
			obj_camera.t_x = 4468
			}
			else
			{
			obj_camera.t_x += 0.5
			}
			
			if show_cinematic_sec >= 6000
			{
			global.t_b_alpha = 2.1
			}
		}
		
		if show_cinematic_sec >= 6010 && show_cinematic_sec < 7150
		{
			if show_cinematic_sec = 6010
			{
			room_goto(room_sector_outside)
			global.t_b_alpha = -0.1
			obj_camera.x = 0
			obj_camera.t_x = 0
			obj_camera.y = 913
			obj_camera.t_y = 913
			}
			else
			{
			obj_camera.t_x ++
			}
			
			if show_cinematic_sec > 6400
			{
			global.rainy = 0
			}
		}
		
		if show_cinematic_sec >= 7200 && show_cinematic_sec < 8280
		{
			if show_cinematic_sec <= 7201
			{
			global.rainy = 1
			room_goto(room_main)
			global.t_b_alpha = -0.1
			obj_camera.x = 669
			obj_camera.t_x = 669
			obj_camera.y = 664
			obj_camera.t_y = 664
			global.guisanga_doo_event = 1
			global.already_played_platform_scene = 1
			}
			else
			{
				if show_cinematic_sec < 7800
				{
				obj_camera.t_x ++
				}
				else
				{
				obj_camera.t_x += 0.3
				}
			}
			
			if show_cinematic_sec = 7800
			{
			obj_camera.v_x = 1280*0.7
			obj_camera.v_y = 720*0.7
			obj_camera.tv_x = 1280*0.7
			obj_camera.tv_y = 720*0.7
			obj_camera.x = 3000
			obj_camera.t_x = 3000
			}
		}
		
		if show_cinematic_sec >= 8280 && show_cinematic_sec < 8500
		{
		global.t_b_alpha = 2.1
		}
		
		if show_cinematic_sec >= 8500 && show_cinematic_sec < 9300
		{
			if show_cinematic_sec = 8500
			{
			room_goto(room_sector_B03_2_remaked)
			}
			
			if show_cinematic_sec <= 8501
			{
			global.t_b_alpha = -0.1
			obj_camera.x = 5181
			obj_camera.t_x = 5181
			obj_camera.y = 811
			obj_camera.t_y = 811
			}
			else
			{
			obj_camera.t_y ++
			}
		}
		
		if show_cinematic_sec >= 9300 && show_cinematic_sec < 10000
		{
			if show_cinematic_sec = 9300
			{
			room_goto(room_sector_B03_3_remaked)
			}
			
			if show_cinematic_sec <= 9301
			{
			global.t_b_alpha = -0.1
			obj_camera.x = 500
			obj_camera.t_x = 500
			obj_camera.y = 325
			obj_camera.t_y = 325
			}
			else
			{
			obj_camera.t_y ++
			}
		}
		
		if show_cinematic_sec >= 10000 && show_cinematic_sec < 12000
		{
			if show_cinematic_sec <= 10000
			{
			global.t_b_alpha = -0.1
			obj_camera.x = 3071
			obj_camera.t_x = 3071
			obj_camera.y = 1492
			obj_camera.t_y = 1492
			}
			else
			{
			obj_camera.t_x ++
			}
		}
		
		if show_cinematic_sec >= 12000
		{
		global.t_b_alpha = 2.1
			if global.b_alpha >= 1 && room != room_main
			{
			global.guisanga_doo_event = 0
			global.already_played_platform_scene = 0
			global.playing_scene = 0
			room_goto(room_main)
			}
		}
	}
}

global.left_time = 99

