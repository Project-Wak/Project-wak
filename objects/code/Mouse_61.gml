/// @description Insert description here
// You can write your code in this editor
if global.select_dev_setting > 0
{
var sfx = audio_play_sound(change_etc,0,0)
audio_sound_gain(sfx,0.02*global.master_volume*2*global.sfx_volume,0)

setting_text_alpha = 0
	if global.select_dev_setting > 1
	{
	global.select_dev_setting --
	}
}