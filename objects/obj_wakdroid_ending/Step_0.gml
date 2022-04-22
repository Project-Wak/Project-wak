/// @description Insert description here
// You can write your code in this editor
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

if audio_is_playing(ending_select)
{
audio_sound_gain(bgm__,volume__*0.04*global.master_volume*2*global.bgm_volume,0)
}


if global.b_alpha < 0.6
{
interecting_now = 1
}





if interecting_now = 1
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
	audio_stop_sound(boss_bgm)
	}
	
	if !instance_exists(check__) && message_phase = 1
	{
	global.show_guide_mes_spr = 6
	global.show_guide_mes = "(박사의 계획은 성공적으로 저지된듯 하다)"
	message_phase++
	}
	
	if message_phase = 2
	{
	obj_camera.t_x = x
	obj_camera.x += (x - obj_camera.x)*0.1
	player.guarding = 1.8
	}
	
	if !instance_exists(check__) && global.show_guide_mes = -4 && message_phase = 2
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
	global.choice_name[0] = "시계를 던져 자폭 단계의 왁드로이드를 과거로 보내버린다"
	global.choice_name[1] = "일부러 폭발에 휘말려 시계를 이용해 과거로 되돌아간다"
	global.choice_name[2] = "연구소 밖으로 도망 간다"
	
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
	volume__ += (-0.01 - volume__)*0.05
		if !instance_exists(check__) && clock_throw_scene > 200
		{
		global.show_guide_mes_spr = 6
		global.show_guide_mes = "(성공적으로 자폭 직전의 왁드로이드는 과거로 가버린듯 하다)"
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
	global.show_guide_mes = "(몸이 점점 사라져간다)"
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
			if !audio_is_playing(it_s_over)
			{
			var sfx = audio_play_sound(it_s_over,0,true)
			audio_sound_gain(sfx,0.23*global.master_volume*2*global.bgm_volume,0)
			}
		global.gameover_reason = "[소멸 엔딩]\n과거로 보낸 왁드로이드로 인해 과거의 자신이 사망하여 없어졌기에\n현재의 자신 또한 존재할 수 없게 되었다"
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
			if global.show_credits = 0 && global.credit_b_alpha > 0.8
			{
			global.show_credits = 1
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
	
	if !instance_exists(check__) && message_phase = 31
	{
	global.show_guide_mes_spr = 6
	global.show_guide_mes = "(왁드로이드의 자폭으로 인해 폭발하는 연구소)"
	message_phase++
	}
	
	if !instance_exists(check__) && global.show_guide_mes = -4 && message_phase = 32
	{
	global.show_guide_mes_spr = 6
	global.show_guide_mes = "(그리고, 이를 모르는 이세돌 멤버들과 팬치들, 천양이가 폭발에 휘말릴 것이다)"
	message_phase++
	}
	
	if !instance_exists(check__) && global.show_guide_mes = -4 && message_phase = 33
	{
	global.show_guide_mes_spr = 6
	global.show_guide_mes = "(답은 한가지 밖에 없다)"
	message_phase++
	}
	
	if !instance_exists(check__) && global.show_guide_mes = -4 && message_phase = 34
	{
	global.show_guide_mes_spr = 6
	global.show_guide_mes = "(되돌려야만 한다)"
	message_phase++
	}
	
	if !instance_exists(check__) && message_phase = 35
	{
	player.suicide = 1
	player.suicide_sfx = 0
	}
	
	
	//엔딩3 - 도망자 엔딩
	if global.b_alpha > 3 && message_phase = 49
	{
	volume__ += (-0.1 - volume__)*0.1
	room_goto(room_sector_outside)
	global.t_b_alpha = -0.01
	}
	
	if !instance_exists(check__) && message_phase = 50
	{
	volume__ += (-0.1 - volume__)*0.1
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "..."
	check__.target = player.id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 51
	{
	volume__ += (-0.1 - volume__)*0.1
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "!"
	check__.target = player.id
	check__.parents = id
	}
	
	if message_phase >= 52
	{
	volume__ += (1 - volume__)*0.1
	}
	
	if !instance_exists(check__) && message_phase = 52
	{
	global.show_guide_mes_spr = 6
	global.show_guide_mes = "(왁드로이드의 자폭에 대한 사실을 모르는)"
	message_phase++
	}
	
	if !instance_exists(check__) && global.show_guide_mes = -4 && message_phase = 53
	{
	global.show_guide_mes_spr = 6
	global.show_guide_mes = "(이세돌 맴버들과 팬치들, 그리고 천양이는 폭발에 휘말려 버렸다)"
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
	global.choice_name[0] = "Re:wind시계를 이용해 과거로 되돌아간다"
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
	volume__ += (-0.01 - volume__)*0.1
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
	volume__ += (-0.01 - volume__)*0.1
		if !instance_exists(check__)
		{
		global.show_guide_mes_spr = 6
		global.show_guide_mes = "(이 상황을 바꾸기 위해선)"
		message_phase++
		}
	}
	
	if !instance_exists(check__) && global.show_guide_mes = -4 && message_phase = 59
	{
	global.show_guide_mes_spr = 6
	global.show_guide_mes = "(되돌려야만 한다)"
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
		if !instance_exists(check__) && room = room_main && global.b_alpha < 0.1
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "!"
		check__.target = player.id
		check__.parents = id
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
	global.show_guide_mes = "(빨리 왁드로이드의 자폭에 대한 사실을 알려야만 한다!)"
	message_phase++
	}
	
	if !instance_exists(check__) && message_phase = 63 && global.show_guide_mes = -4
	{
		if player.x < 1179
		{
		player.image_xscale = -1
		global.movement_speed = 5.6
		player.image_index += 0.8
		}
		else
		{
		message_phase++
		}
	}
	
	if !instance_exists(check__) && message_phase = 64 && global.show_guide_mes = -4
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
	
	//도망자 엔딩
	if message_phase = 70
	{
	volume__ += (-0.01 - volume__)*0.1
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
			if !audio_is_playing(it_s_over)
			{
			var sfx = audio_play_sound(it_s_over,0,true)
			audio_sound_gain(sfx,0.23*global.master_volume*2*global.bgm_volume,0)
			}
		global.gameover_reason = "[도망자 엔딩]\n이세돌 멤버들과, 팬치들 그리고 천양이를 구하지 않고 혼자 탈출 했다"
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
			if global.show_credits = 0 && global.credit_b_alpha > 0.8
			{
			global.show_credits = 1
			}
		}
	}
}



