/// @description Insert description here
// You can write your code in this editor


bg_alpha += (-0.01 - bg_alpha)*0.1

var _c_x = obj_camera.v_x/1280
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5-250*_c_x
var yy = camera_get_view_y(view_camera[0])+(200-10)*_c_x
x = xx
y = yy
image_xscale = _c_x*0.8
image_yscale = _c_x*0.8

if pressed > 0
{
can_press = 0
global.key_setting_message = 1
image_index = 9
var check_esc = keyboard_check_pressed(vk_escape)

	if check_esc
	{
	var sfx = audio_play_sound(cannot_buy,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	global.key_setting_message = 2
	pressed = -1
	alarm[1] = 1
	}

	if !check_esc
	{
		if keyboard_check_pressed(global.left_key)
		{
		var sfx = audio_play_sound(message_sfx,0,0)
		audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
		pressed --
		event_user(0)
		}
		
		if keyboard_check_pressed(global.right_key)
		{
		var sfx = audio_play_sound(message_sfx,0,0)
		audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
		pressed ++
		event_user(1)
		}
		
		if keyboard_check_pressed(global.skip_key)
		{
		var sfx = audio_play_sound(change_etc,0,0)
		audio_sound_gain(sfx,0.02*global.master_volume*2*global.sfx_volume,0)
		alarm[1] = 1
		alarm[2] = 2
		}
	}
	
	if pressed > global.total_weapon_num+1
	{
	pressed = 1
	}

	if pressed < 1 && pressed != -1
	{
	pressed = global.total_weapon_num+1
	}
}
else
{
image_index = 8

	if keyboard_check_pressed(global.use_item) && now_set_weapon > 0
	{
	var _check__1 = requirement[0]
	if _check__1 < 0
	{
	_check__1 = 0
	}
	
	var _check__2 = requirement[1]
	if _check__2 < 0
	{
	_check__2 = 0
	}
	
	var _check__3 = requirement[2]
	if _check__3 < 0
	{
	_check__3 = 0
	}
		
		if (global.item_owned[_check__1] >= requirement_amount[0] && global.item_owned[_check__2] >= requirement_amount[1] && global.item_owned[_check__3] >= requirement_amount[2] && global.gold >= requirement_gold)
		{
		global.item_owned[_check__1] -= requirement_amount[0]
		global.item_owned[_check__2] -= requirement_amount[1]
		global.item_owned[_check__3] -= requirement_amount[2]
		
		global.gold -= requirement_gold
		
		global.weapon_upgraded[now_set_weapon] ++
		var sfx = audio_play_sound(critical_sfx,0,0)
		audio_sound_gain(sfx,0.01*global.master_volume*2*global.sfx_volume,0)
			
		var sfx = audio_play_sound(buy_item,0,0)
		audio_sound_gain(sfx,0.02*global.master_volume*2*global.sfx_volume,0)
		dev_mes("강화 성공")
		bg_col = c_white
		bg_alpha = 0.5
		code.alarm[7] = 1
		
			if global.weapon_upgraded[now_set_weapon] = 100
			{
			var _achievement = instance_create_depth(x,y,depth,bg_achievement)
			_achievement.text = "신의 무기 (히든 도전과제)"
			_achievement.icon_num = 0
			}
		}
		else
		{
		var sfx = audio_play_sound(cannot_buy,0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
		dev_mes("강화 재료가 부족합니다")
		bg_col = c_red
		bg_alpha = 0.1
		}
	}
}


if pressed = -1
{
pressed = now_set_weapon+1
}