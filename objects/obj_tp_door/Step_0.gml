/// @description Insert description here
// You can write your code in this editor
yy += (t_y - yy)*0.1


if place_meeting(x,y,player) && player.cannot_move = 0 && global.never_move = 0 && global.playing_scene = 0 && global.b_alpha < 0.1 && global.never_move_in_setting = 0
{
can_interect = 1
}
else
{
can_interect = 0
}


if can_interect = 1 && keyboard_check_pressed(ord(string(global.skip_key))) && t_y != -64
{
var sfx = audio_play_sound(activate_sfx,0,0)
audio_sound_gain(sfx,global.master_volume*2*global.sfx_volume,0)
t_y = -64
global.never_move = 1
	if global.story_next < 100
	{
	global.t_b_alpha = 2.1
	}
	else
	{
	global.t_b_alpha = 1.01
	alarm[1] = 60
	}
var	sfx__ = audio_play_sound(walk_sfx,0,false)
audio_sound_gain(sfx__,0.3,0)
}

if t_y = -64
{
	if global.b_alpha > 2 && can_room_change = 1
	{
		if room != room_sector_outside
		{
		var n_index = id
			with(obj_tp_door)
			{
				if id != n_index
				{
				player.x = x
				player.y = y+32
				obj_camera.x = x
				obj_camera.y = y+32
				}
			}
		}
		else
		{
		global.story_next = -4
		room_goto(tuto_room)
		}
	t_y = 0
	global.t_b_alpha = -0.01
	global.never_move = 0
	}
}

