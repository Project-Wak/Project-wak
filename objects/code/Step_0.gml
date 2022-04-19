global.dev_message_alpha -= 0.08

if global.tiredness > 24
{
global.tiredness = 24
}

if global.n_time >= 21 || global.n_time < 6
{
global.n_night = 1
}
else
{
global.n_night = 0
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
	
	if keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_up)
	{
	global.choice_now -- 
	var sfx = audio_play_sound(message_sfx,0,0)
	audio_sound_gain(sfx,0.12*global.master_volume*2*global.sfx_volume,0)
	}
			
	if keyboard_check_pressed(vk_right) || keyboard_check_pressed(vk_down)
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


if (global.accessories_equip[0] > 1 || global.accessories_equip[1] > 1) && global.first_rewind = 0 && instance_exists(player) && global.b_alpha < 0.1
{
global.show_guide_mes = "Re:wind (사망 회귀) 시스템\n\n플레이어가 사망하게 된 경우, 1시간씩 시간을 소모하여\n사망 전의 과거(일종의 세이브 포인트)로 되돌린다.\n\n(이때의 시간 소모는, 게임 내의 '목숨'과 같은 시스템이라고 볼수 있다)"
global.show_guide_mes_spr = 0
global.first_rewind = 1
}



if global.left_time <= 0
{
global.platform_speed = 0
	if room != room_main
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
				global.gameover_reason = "D-day가 지나, 박사의 왁드로이드가 완성되어버렸다 [멸망 엔딩]"
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
				global.w_alpha += (playing_gameover_scene-70)/100
				}
			}
		}
		else
		{
		global.playing_scene = 1
		global.never_move = 1
			if instance_exists(player)
			{
			player.x = -100
			player.y = -100
			}
		playing_gameover_scene ++
			if playing_gameover_scene < 160
			{
				if instance_exists(obj_isedol)
				{
				obj_camera.t_x = obj_isedol.x
				obj_camera.t_y = obj_isedol.y
				}
		
				if playing_gameover_scene = 40
				{
				obj_isedol.image_xscale = 1
				var check__ = instance_create_depth(obj_isedol.x,obj_isedol.y,obj_isedol.depth-1,player_message)
				check__.text = "!"
				check__.target = obj_isedol.id
				check__.parents = obj_isedol.id
				}
			}
		
			if playing_gameover_scene >= 70
			{
			view_shake(1,1.3,1)
				if playing_gameover_scene >= 110
				{
				global.w_alpha += (playing_gameover_scene-110)/1000
				}
			}
		
			if playing_gameover_scene = 110
			{
			var sfx = audio_play_sound(gameover_explode,0,0)
			audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
			}
		
			if playing_gameover_scene >= 130
			{
			obj_camera.t_x = obj_isedol.x-1500
			obj_camera.t_y = obj_isedol.y
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

if global.free_stemina = 1
{
global.stemina = 11
}


if global.gold_for_draw != global.gold
{
	if gold_sfx = 0 && room != menu
	{
	var sfx = audio_play_sound(buy_item,0,0)
	audio_sound_gain(sfx,0.07*global.master_volume*2*global.sfx_volume,0)
	gold_sfx = 1
	}
global.gold_for_draw += (global.gold - global.gold_for_draw)*0.08
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


if keyboard_check_pressed(vk_escape) && global.playing_scene = 0 && global.show_guide_mes = -4
{
alarm[10] = 1
}

if keyboard_check_pressed(vk_tab) && global.playing_scene = 0 && global.show_guide_mes = -4
{
alarm[8] = 1
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
	
	if !instance_exists(_ins_)
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

if global.stemina < 0
{
global.stemina = 0
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




