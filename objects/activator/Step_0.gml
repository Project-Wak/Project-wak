/// @description Insert description here
// You can write your code in this editor
depth = player.depth+11

if place_meeting(x,y,player) && player.cannot_move = 0 && global.never_move = 0 && global.playing_scene = 0 && global.b_alpha < 0.1 && global.never_move_in_setting = 0
{
can_interect = 1
}
else
{
can_interect = 0
}


if can_interect = 1 && keyboard_check_released(ord(string(global.skip_key)))
{

	if player.assult_mode <= 0
	{
		if !instance_exists(check__) && message_phase = 0
		{
			if global.tutorial = 1 && room = room_main
			{
			global.never_move = 1
			global.playing_scene = 1
	
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "(어디로 갈까?)"
			check__.target = player.id
			check__.parents = id
			}
			else
			{
			global.never_move = 1
			global.playing_scene = 1
			var sfx = audio_play_sound(activate_sfx,0,0)
			audio_sound_gain(sfx,global.master_volume*2*global.sfx_volume,0)
	
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "(버튼을 누름)"
			check__.target = player.id
			check__.parents = id
			}
		}
	}
	else
	{
		if !instance_exists(check__) && message_phase = 0
		{
		var sfx = audio_play_sound(cannot_buy,0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)

		dev_mes("(전투모드 활성화 상태 중엔 상호작용할 수 없습니다)")
		}
	}
}

if message_phase = 1
{
	if !instance_exists(check__)
	{
		if global.tutorial = 1 && room = room_main && cannot_active_more = 0
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "<-     (Sector B02)     ->"
		check__.target = player.id
		check__.parents = id
		
		var sfx = audio_play_sound(activate_sfx,0,0)
		audio_sound_gain(sfx,global.master_volume*2*global.sfx_volume,0)
		}
		else
		{
			if global.item_owned[5] > 0 && cannot_active_more = 0
			{
			global.never_move = 0
			global.playing_scene = 0
			message_phase = 0
	
				with(parents)
				{
				activated *= -1
				}
			}
			else if cannot_active_more = 1
			{
			var sfx = audio_play_sound(cannot_buy,0,0)
			audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "(더 이상 작동하지 않는것 같다)"
			check__.target = player.id
			check__.parents = id
			global.never_move = 1
			global.playing_scene = 1
			}
			else
			{
			var sfx = audio_play_sound(cannot_buy,0,0)
			audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "(키카드가 필요하다 뒤돌아가서 찾아보자)"
			check__.target = player.id
			check__.parents = id
			}
		}
	}
	else
	{
		if cannot_active_more = 0 && global.tutorial = 1 && room = room_main
		{
		global.never_move = 1
		global.playing_scene = 1
			if keyboard_check_pressed(vk_left)
			{
			var sfx = audio_play_sound(activate_sfx,0,0)
			audio_sound_gain(sfx,global.master_volume*2*global.sfx_volume,0)
			selected_sector --
			}
		
			if keyboard_check_pressed(vk_right)
			{
			var sfx = audio_play_sound(activate_sfx,0,0)
			audio_sound_gain(sfx,global.master_volume*2*global.sfx_volume,0)
			selected_sector ++
			}
		
			if selected_sector < 2
			{
			selected_sector = global.opened_sector
			}
		
			if selected_sector > global.opened_sector
			{
			selected_sector = 2
			}
		
			if selected_sector < 10
			{
				if selected_sector = 6
				{
				check__.text = "<-     (지하 하수도)     ->"
				}
				else if selected_sector = 7
				{
				check__.text = "<-     (왁드로이드 개발실 입구)     ->"
				}
				else
				{
				check__.text = "<-     (Sector B0"+string(selected_sector)+")     ->"
				}
			}
			else
			{
			check__.text = "<-     (Sector B"+string(selected_sector)+")     ->"
			}
		}
	}
}



if global.tutorial = 1 && room = room_main
{
	if message_phase = 2 && !instance_exists(check__)
	{
	parents.destination = selected_sector
	global.never_move = 1
	global.playing_scene = 1
		with(parents)
		{
		activated *= -1
		}
	message_phase = 0
	}
}
else
{
	if global.item_owned[5] > 0
	{
		if destination > 0
		{
			if message_phase = 2
			{
			global.never_move = 1
			global.playing_scene = 1
				with(parents)
				{
				activated *= -1
				}
			message_phase = 0
			}
		}
		else
		{
			if message_phase = 2
			{
			global.never_move = 0
			global.playing_scene = 0
			message_phase = 0
			}
		}
	}
	else
	{
		if message_phase >= 2
		{
			if !instance_exists(check__)
			{
			global.never_move = 0
			global.playing_scene = 0
			message_phase = 0
			}
		}
	}
}
