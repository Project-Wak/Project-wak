// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @description  save_twitch_chat(sender_id,chat_data);
/// @param sender_id
/// @param chat_data
function save_twitch_chat(argument0, argument1) 
{
	if argument0 = "1047asd" && string_length(argument0) < 15 && string_length(argument1) < 20
	{
	dev_mes(string(argument1))
	global.chat_data = noone
	}
}
