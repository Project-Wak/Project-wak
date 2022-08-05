/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_blinded_wall)
{
depth = player.depth+15
}

yy += (t_y - yy)*0.1



if place_meeting(x,y,player) && player.cannot_move = 0 && global.never_move = 0 && global.playing_scene = 0 && global.b_alpha < 0.1 && global.never_move_in_setting = 0
{
can_interect = 1
}
else
{
can_interect = 0
}


if instance_exists(obj_worm) && obj_worm.activated > 0
{
can_interect = 0
}


if can_interect = 1 && keyboard_check_pressed(ord(string(global.skip_key))) && t_y != -64
{
//var sfx = audio_play_sound(activate_sfx,0,0)
//audio_sound_gain(sfx,global.master_volume*2*global.sfx_volume,0)
t_y = -64
	if room != room_sector_B03_2_remaked && room != room_sector_B03_3_remaked
	{
	var	sfx__ = audio_play_sound(walk_sfx,0,false)
	audio_sound_gain(sfx__,0.3,0)
	}
global.never_move = 1
global.t_b_alpha = 2.1
}

if t_y = -64
{
	if global.b_alpha > 2
	{
	var check_connection = connected_with%2
	var my_connection = connected_with
	
	show_debug_message(string(check_connection)+" / "+string(my_connection))
		with(obj_tp_door_basement)
		{
			if check_connection = 0
			{
				if connected_with = my_connection+1
				{
				player.x = x
				player.y = y+32
				obj_camera.x = x
				obj_camera.y = y+65
				
					if my_connection = 14 && cre_shadow = 0
					{
					cre_shadow = 1
					}
				}
			}
			else
			{
				if connected_with = my_connection-1
				{
				player.x = x
				player.y = y+32
				obj_camera.x = x
				obj_camera.y = y+65
				
					if my_connection = 14 && cre_shadow = 0
					{
					cre_shadow = 1
					}
				}
			}
		}
	t_y = 0
	global.t_b_alpha = -0.1
	global.never_move = 0
	}
}


if cre_shadow = 1 && global.b_alpha < 0.7 && global.t_b_alpha <= 0 && room = room_sector_B06_2
{
var test_mob = instance_create_depth(58,571,player.depth+3,gumseong_shadow)
test_mob.test_mob_type = 0
test_mob.image_xscale = -1
test_mob.image_yscale = 1
cre_shadow = 2
}
