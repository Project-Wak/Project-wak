/// @description Insert description here
// You can write your code in this editor
	repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
	{
	randomize()
	var dust = instance_create_depth(x+irandom_range(-32,32),y+irandom_range(-32,32),depth-1,pepsi_effect)
	var scale = irandom_range(20,40)/50
	dust.image_xscale = scale
	dust.image_yscale = scale
	dust.vspeed = irandom_range(-50,50)/37
	dust.hspeed = irandom_range(-50,50)/37
	dust.image_alpha = 1
	}
	
var sfx = audio_play_sound(mob_faint,0,0)
audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)