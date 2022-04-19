/// @description Insert description here
// You can write your code in this editor
w_alpha -= 0.01
depth = player.depth-1

timer ++

if timer > 120
{
image_xscale += (0 - image_xscale)*0.1
image_yscale += (0 - image_yscale)*0.1
image_alpha += (-0.1 - image_alpha)*0.1

	if image_alpha <= 0
	{
		repeat(4)
		{
		var _ef = instance_create_depth(x,y,depth-1,effect_spark)
		_ef.hspeed = irandom_range(-20,20)
		_ef.vspeed = irandom_range(-4,2)
		}
	var sfx = audio_play_sound(choose(swing_lightsaber_sfx1,swing_lightsaber_sfx2,swing_lightsaber_sfx3),0,0)
	audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
	instance_destroy()
	}
}
else
{
image_xscale += (1 - image_xscale)*0.1
image_yscale += (1 - image_yscale)*0.1
}

if point_distance(x,y,player.x,player.y) < 100
{
speed += (0 - speed)*0.07
}

if y > obj_angel.y+230
{
speed += (0 - speed)*0.1
}
