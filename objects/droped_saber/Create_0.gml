/// @description Insert description here
// You can write your code in this editor
var cal_val = 0
with(player)
{
	if image_alpha > 0 && hp <= 0
	{
	cal_val = sign(image_xscale)
	}
}

if cal_val = 0
{
cal_val = choose(-1,1)
}

hspeed = -cal_val*irandom_range(200,500)/50
random_angle_p = irandom_range(-110,-160)
already_droped = 0
gravity = 0.3
image_angle = sign(hspeed)*720
image_speed = 0
image_xscale = 0.85
image_yscale = 0.85
vspeed = -4
spin_speed = 6
set_angle = 0
timer_back_to_player = 0
timer = 0

var sfx = audio_play_sound(choose(swing_lightsaber_sfx2),0,0)
audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)

check_floor = -4