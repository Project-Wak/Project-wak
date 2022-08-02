/// @description Insert description here
// You can write your code in this editor
if y < 900 && alpha = 0
{
global.room_brightness = 0.1

	if audio_is_playing(quake_sfx)
	{
	alpha = 1
	}
}
else
{
	if alpha = 1
	{
	global.room_brightness += (0.3 - global.room_brightness)*0.1
	}
	else
	{
	global.room_brightness = 0.3
	}
}
