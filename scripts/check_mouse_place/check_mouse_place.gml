// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_mouse_place()
{
	if (keyboard_check_pressed(string(ord(global.skip_key))) || keyboard_check_pressed(vk_enter)) && place_meeting(x,y,obj_mouse)
	{
	return true;
	}
	else
	{
	return false;
	}
}