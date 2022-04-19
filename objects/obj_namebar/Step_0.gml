/// @description Insert description here
// You can write your code in this editor

dis_a_draw += (dis_a - dis_a_draw)*0.1

if keyboard_check_pressed(vk_anykey)
{
timer = -8
alpha1 = 0
}



timer += 0.1
if timer > 40
{
alpha1 += 0.1
}



if start = 2
{
image_alpha -= 0.05
}

if activate = 1
{
	if string_length(keyboard_string) >= 13
	{
	keyboard_string = global.nickname
	
	var sfx = audio_play_sound(cannot_buy,0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
	
	cannot_select_name = 1
	}
	
global.nickname = keyboard_string;

keyboard_string = string_replace(keyboard_string," ","");
global.nickname = string_replace(global.nickname," ","");
}

cannot_select_name -= 0.08


if activate = 0
{
	if auto_nick = 1
	{
		if global.nickname = -4
		{
		already_set_name = 0
		global.nickname = "아기뺑띠"+string(irandom_range(0,1000))
		}
	}
	else
	{
	already_set_name = 1
	}
}