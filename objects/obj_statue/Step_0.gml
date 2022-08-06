/// @description Insert description here
// You can write your code in this editor



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




if global.weapon_owned[3] > 0 && global.weapon_owned[4] > 0
{
can_give_item = 1
}
else
{
can_give_item = 0
}




if (can_interect = 1 && interecting_now = 0 && keyboard_check_released(ord(string(global.skip_key))))
{
interecting_now = 1
}


if interecting_now = 1
{
global.never_move = 1
global.playing_scene = 1
	if can_give_item = 1
	{
		if !instance_exists(check__) && message_phase = 0
		{
			if global.choosed = 0
			{
			global.choice_name[0] = "제단에 붉은 광선검과 푸른 광선검을 바친다"
			global.choice_name[1] = "취소 한다"
			global.choice_name[2] = -4
			global.choice += (1 - global.choice)*0.1
			}
			else
			{
				if global.choice_now = 0
				{
				message_phase = 1
				image_index = 1
				}
				else
				{
				interecting_now = 0
				message_phase = 0
				alarm[1] = 5
				}
			global.choice_now = 0
			global.choosed = 0
			global.choice_name[0] = -4
			global.choice_name[1] = -4
			global.choice = 0
			}
		}
		
		if !instance_exists(check__) && message_phase = 1
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "!"
		check__.target = player.id
		check__.parents = id
		
		var sfx = audio_play_sound(laser_skill_ready,0,0)
		audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
		}
	}
	else
	{
		if !instance_exists(check__) && message_phase = 0
		{
		player.image_xscale = sign_k(x - player.x)
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "!"
		check__.target = player.id
		check__.parents = id
		}
	
		if !instance_exists(check__) && message_phase = 1
		{
		player.image_xscale = sign_k(x - player.x)
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "(왁두 제단이다)"
		check__.target = player.id
		check__.parents = id
		}
	
		if !instance_exists(check__) && message_phase = 2
		{
		player.image_xscale = sign_k(x - player.x)
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "(왠지 양손에 광선검 무기 2종을 걸쳐놓을 수 있을 것 같다)"
		check__.target = player.id
		check__.parents = id
		}
	
		if !instance_exists(check__) && message_phase = 3
		{
		message_phase = 0
		alarm[1] = 1
		}
	}
	
	if message_phase >= 1 && can_give_item = 1
	{
	view_shake(0.1,0.1,1)
	message_phase++
	}
	
	if message_phase > 150
	{
	var sfx = audio_play_sound(mob_faint,0,0)
	audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
	///////////////////////////////////////////
	repeat(irandom_range(14,17))
	{
	create_buble_effect(1.2,irandom_range(0,359),0,choose(-1)*irandom_range(1,100)/7,0.08,0.08,$FF00D2FE,$FF076BFE,1.5,$FF737272,x,y,-room_width*1.5,0,true,false)
	}
	
	repeat(irandom_range(7,10))
	{
	create_buble_effect(1.45,irandom_range(0,359),0,choose(-1)*irandom_range(1,100)/7,0.07,0.07,c_white,$FF00D2FE,1.5,$FF342F32,x,y,-room_width*1.5,1,true,false)
	}
	
	view_shake(choose(0,0,0,0,1),irandom_range(10,15),choose(0,1))
	var y_set = y+irandom_range(-16,16)
	repeat(8)
	{
	var _ef = instance_create_depth(x,y_set,depth-1,effect_spark)
	_ef.hspeed = irandom_range(5,20)*choose(-1,1)
	_ef.vspeed = irandom_range(-8,-3)
	}
	
	var a___ = audio_play_sound(bomb_sfx,0,0)
	audio_sound_gain(a___,0.07*global.master_volume*2*global.sfx_volume,0)
	give_item(2,1)
	
	global.weapon_upgraded[1] = global.weapon_upgraded[3]+global.weapon_upgraded[4]
	
	global.weapon_owned[3] = 0
	global.weapon_owned[4] = 0
	
	if global.achievement[7] != 1
	{
	var _achievement = instance_create_depth(x,y,depth,bg_achievement)
	_achievement.text = string(global.achievement_name[7])
	_achievement.icon_num = 0
	global.achievement[7] = 1
	}
	
	global.never_move = 0
	global.playing_scene = 0
	interecting_now = 0
	instance_destroy()
	instance_destroy(check__)
	}
}




if abs(x - player.x) <= 32 && player.cannot_move = 0 && global.never_move = 0 && global.playing_scene = 0 && global.never_move_in_setting = 0
{
can_interect = 1
}
else
{
can_interect = 0
}

