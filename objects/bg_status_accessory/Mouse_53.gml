/// @description Insert description here
// You can write your code in this editor
if pressed > 0
{
	if !place_meeting(mouse_x,mouse_y,self) && point_distance(x,y,mouse_x,mouse_y) > image_xscale*41
	{
	var __check__ = sign_k(mouse_x - x)
	pressed += __check__
	var sfx = audio_play_sound(message_sfx,0,0)
	audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
		if __check__ < 0
		{
		event_user(0)
		}
		else
		{
		event_user(1)
		}
	}
}
