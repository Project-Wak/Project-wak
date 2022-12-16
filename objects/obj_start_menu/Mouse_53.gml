/// @description Insert description here
// You can write your code in this editor
if set_brightness >= 1
{
	if global.never_move_in_setting = 0 && menu_alpha > 0.1 && global.b_alpha < 0.1 && global.show_credits = 0 && global.show_achievement = 0
	{
		if (dis <= 83 && dis >= 71)
		{
		event_user(0)
		}
		else
		{
			if mouse_y > 400-73
			{
			t_set_menu_choose ++
			var sfx_ = audio_play_sound(message_sfx,0,0)
			audio_sound_gain(sfx_,0.05*global.master_volume*2*global.sfx_volume,0)
			}
	
			if mouse_y < 400-73
			{
			t_set_menu_choose --
			var sfx_ = audio_play_sound(message_sfx,0,0)
			audio_sound_gain(sfx_,0.05*global.master_volume*2*global.sfx_volume,0)
			}
		}
	}
}

if go_start < 3
{
use_keyboard_guide_timer = 300
}