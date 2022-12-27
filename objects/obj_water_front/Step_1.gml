/// @description Insert description here
// You can write your code in this editor
depth = player.depth-32


if place_meeting(x,y,player)
{
	if placing_player != 1
	{
	var effect_ = instance_create_depth(player.x+(global.movement_speed+player.movement_speed)*2,y-52,depth-10,down_effect)
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
	if !place_meeting(player.x,player.y,obj_water_inside)
	{
		if placing_player != 0
		{
		var effect_ = instance_create_depth(player.x,y-52,depth-10,down_effect)
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
}
