/// @description Insert description here
// You can write your code in this editor
if(global.chat_activity)
{
	if keyboard_string != "" && string_length(keyboard_string) <= 40
	{
	//send_all(chat_buffer);
	chat_up(string(keyboard_string));
	keyboard_string = "";
	}
	else
	{
	var sfx = audio_play_sound(cannot_buy,0,0)
	audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
	cannot_send = 1
	}
}


global.chat_activity = !global.chat_activity;
keyboard_string = "";
image_index = global.chat_activity;