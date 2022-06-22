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
var	sfx__ = audio_play_sound(walk_sfx,0,false)
audio_sound_gain(sfx__,0.3,0)
t_y = -64
global.never_move = 1
global.t_b_alpha = 2.1
}

if t_y = -64
{
	if global.b_alpha > 2
	{
	var n_index = image_index
		with(pl_practice)
		{
			if image_index != n_index
			{
			player.x = x
			obj_camera.x = x
			}
		}
	t_y = 0
	global.t_b_alpha = -0.01
	global.never_move = 0
	}
}

if image_index = 2 && abs(x - player.x) <= 800
{
depth = 1001
obj_camera.x = x
obj_camera.t_x = x
}

if image_index = 0 && player.x > x
{
obj_camera.t_x = x
}