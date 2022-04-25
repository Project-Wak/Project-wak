/// @description Insert description here
// You can write your code in this editor

if (can_interect = 1 && interecting_now = 0 && keyboard_check_released(ord(string(global.skip_key)))) && global.playing_scene_black_bg < 0.1
{
interecting_now = 1
}

if interecting_now = 1
{
global.never_move = 1
global.playing_scene = 1
	if !instance_exists(check__) && message_phase = 0
	{
		if global.choosed > 0
		{
			if global.choice_now = 0
			{
			alarm[2] = 1
			}
			
			if global.choice_now = 1
			{
			global.playing_scene = 0
			message_phase = 0
			interecting_now = 0
			can_interect = 0
			save_and_load_data(1,1)
			alarm[1] = 1
			}
		global.choice = 0
		global.choosed = 0
		}
		else
		{
		global.choice += (1 - global.choice)*0.1
		global.choice_name[0] = "휴식 하기"
		global.choice_name[1] = "저장 하기"
		global.choice_name[2] = -4
		}
	}
	
	if !instance_exists(check__) && message_phase = 1
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "()"
	check__.target = player.id
	check__.parents = id
	}
	
	if message_phase = 1
	{
	global.show_time = 1
		if set_time = 0
		{
		check__.text = "<-     (취소한다)     ->"
		}
		else
		{
		check__.text = "<-     ("+string(set_time)+"시간 잔다)     ->"
		}
		
		
		if keyboard_check_pressed(vk_left)
		{
		set_time --
		var sfx = audio_play_sound(message_sfx,0,0)
		audio_sound_gain(sfx,0.12*global.master_volume*2*global.sfx_volume,0)
		}
		
		if keyboard_check_pressed(vk_right)
		{
		set_time ++
		var sfx = audio_play_sound(message_sfx,0,0)
		audio_sound_gain(sfx,0.12*global.master_volume*2*global.sfx_volume,0)
		}
		
		if set_time < 0
		{
		set_time = 24
		}
		
		if set_time > 24
		{
		set_time = 0
		}
	}
	
	
	if !instance_exists(check__) && message_phase = 2
	{
		if set_time = 0
		{
		global.show_time = 0
		message_phase = 0
		alarm[1] = 1
		}
		else
		{
			if sfx_a = 0
			{
			sfx_for_multiplayer(tic_tak,0,0.15)
			sfx_for_multiplayer(sleep_sfx,0,0.11)
			sfx_a = 1
			}
			

		global.t_b_alpha = 1.0001
			if global.b_alpha > 1
			{
			global.show_time = 0
			activated = 1
			global.n_time += set_time
			global.left_time -= set_time
			global.tiredness -= set_time
			message_phase = 0
			alarm[1] = 1
			global.t_b_alpha = -0.01
			global.playing_scene = 0
			
				if global.first_sleep = 0
				{
				global.show_guide_mes = "시간 시스템\n\n시간의 경우, 시간대 마다 npc나 맵의 요소가 바뀔수 있다.\n\n특히 밤의 경우, 몬스터들이 더욱 강력해지고,\n연구소 전체가 절전 상태가 되어 어두워지니 조심하자\n또한 D-day가 모두 지나게 되어 왁드로이드가 완성되게 되면,\n'완전한 게임오버'가 된다."
				global.show_guide_mes_spr = 0
				global.first_sleep = 1
				}
			}
		}
	}
}



if place_meeting(x,y,player) && player.cannot_move = 0 && global.never_move = 0 && global.playing_scene = 0 && global.never_move_in_setting = 0
{
can_interect = 1
}
else
{
can_interect = 0
}
