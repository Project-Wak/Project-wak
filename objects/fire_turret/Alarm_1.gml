/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_messi)
{
	if image_index = 0 && obj_messi.activated = 0
	{
	attack = 1
	sfx___ = sfx_for_multiplayer(fire_sfx,0,0.2)
		if sfx___ != -4
		{
		audio_sound_pitch(sfx___,0.6)
		}
	}
}
else
{
attack = 1
sfx___ = sfx_for_multiplayer(fire_sfx,0,0.2)
	if sfx___ != -4
	{
	audio_sound_pitch(sfx___,0.6)
	}
}
alarm[2] = 150
