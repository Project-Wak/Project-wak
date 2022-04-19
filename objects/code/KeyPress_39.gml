/// @description Insert description here
// You can write your code in this editor
if global.select_dev_setting > 0
{
var sfx = audio_play_sound(change_etc,0,0)
audio_sound_gain(sfx,0.02*global.master_volume*2*global.sfx_volume,0)

setting_text_alpha = 0
	if global.select_dev_setting != 14 && global.select_dev_setting != 13 && global.select_dev_setting != 12
	{
	global.select_dev_setting ++
		if global.select_dev_setting > 8
		{
		global.select_dev_setting = 8
		}
	}
	else
	{
		if global.for_kick_player < global.to_return_player_id
		{
		global.for_kick_player ++
		}
	}
}