/// @description Insert description here
// You can write your code in this editor
depth = player.depth -10

if place_meeting(x,y,player)
{
	if abs(global.movement_speed) > 2 || abs(player.movement_speed) > 2
	{
		if audio_is_playing(footstep_sfx)
		{
			if timer_sec = 0
			{
			timer_sec = 1
			placing_player = -4
			}
		}
		else
		{
		timer_sec = 0
		}
	}
	
	if placing_player != 1
	{
	var effect_ = instance_create_depth(player.x+(global.movement_speed+player.movement_speed)*2,1150,depth-10,down_effect)
	effect_.t_image_xscale = 0.7*2
	effect_.t_image_yscale = 0.05*2
	effect_.received = 0
	effect_.image_alpha = 1.3
	if global.show_credits = 0
	{
	var sfx__ = audio_play_sound(water_in_sfx,0,false)
	audio_sound_gain(sfx__,0.9,0)
	}
	placing_player = 1
	}
}
else
{
	if placing_player != 0
	{
	var effect_ = instance_create_depth(player.x,1150,depth-10,down_effect)
	effect_.t_image_xscale = 0.7*2
	effect_.t_image_yscale = 0.05*2
	effect_.received = 0
	effect_.image_alpha = 1.3
	if global.show_credits = 0
	{
	var sfx__ = audio_play_sound(water_in_sfx,0,false)
	audio_sound_gain(sfx__,0.9,0)
	}
	placing_player = 0
	}
}





timer ++

if timer < 90
{
image_yscale += (0.7 - image_yscale)*0.01
}
else
{
image_yscale += (0.71 - image_yscale)*0.01
}

if timer > 200
{
timer = 0
}

