/// @description Insert description here
// You can write your code in this editor
if set_brightness >= 1
{
	if global.never_move_in_setting = 0 && menu_alpha > 0.1 && global.b_alpha < 0.1 && global.show_credits = 0 && global.show_achievement = 0 && wheel_cooltime <= 0
	{
	wheel_cooltime = 15
	t_set_menu_choose --
	var sfx_ = audio_play_sound(message_sfx,0,0)
	audio_sound_gain(sfx_,0.05*global.master_volume*2*global.sfx_volume,0)
	}
	
	if global.show_achievement > 0
	{
	global.achievement_tyy -= 64
	}
}
