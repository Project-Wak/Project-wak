/// @description Insert description here
// You can write your code in this editor
if global.key_setting_message = 0 && global.n_to_setting__ != 2
{
	if global.hp > 0 && player.suicide = 0
	{
	//player.y -= 4
	//player.vspeed = -4
	code.alarm[8] = 1
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