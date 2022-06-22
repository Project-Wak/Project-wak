/// @description Insert description here
// You can write your code in this editor

if !variable_instance_exists(id,"sfx_play")
{
sfx_play = -4
}




image_alpha -= 0.05

if image_alpha <= 0
{
instance_destroy()
}


if image_index > 5
{
image_index = 5
}

if image_alpha <= 0.5 && image_index = 3
{
xscale += (0 - xscale)*0.34
yscale += (0 - yscale)*0.18
}
else
{
xscale += (image_xscale - xscale)*0.18
yscale += (image_yscale - yscale)*0.18
}

//x += t_x
//t_x += (0 - t_x)*0.08

var ins_pl = instance_place(x,y,ef_blood)
if ins_pl >= 0
{
	if sfx = 0 && sfx_play = true
	{
	var sfx__ = audio_play_sound(sound5,0,false)
	audio_sound_gain(sfx__,0.06,0)
	sfx = 1
	}
	
	if abs(ins_pl.image_angle - image_angle) < 30 && activated = 0
	{
	activated = 1
	ins_pl.activated = 1
	image_angle = ins_pl.image_angle+90
	}
image_angle += image_xscale
}

