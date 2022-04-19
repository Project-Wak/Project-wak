/// @description Insert description here
// You can write your code in this editor
if global.voice_option = 0 && ((text = "왁초리" || text = "VR" || text = "승부 빤스" || text = "15kg짜리 가축" || text = "왁기의 빨대" || text = "헤르메스 부츠"))
{
	if text = "왁기의 빨대"
	{
	var sfx = audio_play_sound(wakgi_ddi,0,0)
	audio_sound_gain(sfx,0.32*global.master_volume*2*global.sfx_volume,0)
	}
	else
	{
	var sfx = audio_play_sound(gibungoa,0,0)
	audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
	}
}