/// @description Insert description here
// You can write your code in this editor

if timer != -1
{
timer ++
obj_camera.t_x = 5181
obj_camera.t_y = 880
}

if timer = 60 || timer = 80
{
	repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
	{
	randomize()
	var dust = instance_create_depth(x+irandom_range(-5,5),427+irandom_range(-5,5),depth-1,pepsi_effect_received)
	var scale = irandom_range(20,40)/50
	dust.image_xscale = scale
	dust.image_yscale = scale
	dust.vspeed = irandom_range(-50,50)/37
	dust.hspeed = irandom_range(-50,50)/37
	dust.image_alpha = 1
	}
	
	
	var sfx = audio_play_sound(mob_faint,0,0)
	audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
	///////////////////////////////////////////
	repeat(irandom_range(14,17))
	{
	create_buble_effect(1.2,irandom_range(0,359),0,choose(-1)*irandom_range(1,100)/7,0.08,0.08,$FF00D2FE,$FF076BFE,1.5,$FF737272,x,y,-room_width*1.5,0,true,false)
	}
	
	repeat(irandom_range(7,10))
	{
	create_buble_effect(1.45,irandom_range(0,359),0,choose(-1)*irandom_range(1,100)/7,0.07,0.07,c_white,$FF00D2FE,1.5,$FF342F32,x,y,-room_width*1.5,1,true,false)
	}
	
	view_shake(choose(0,0,0,0,1),irandom_range(10,15),choose(0,1))
	var y_set = 427+irandom_range(-16,16)
	repeat(8)
	{
	var _ef = instance_create_depth(x,y_set,depth-1,effect_spark)
	_ef.hspeed = irandom_range(5,20)*choose(-1,1)
	_ef.vspeed = irandom_range(-8,-3)
	}
	
	var a___ = audio_play_sound(bomb_sfx,0,0)
	audio_sound_gain(a___,0.07*global.master_volume*2*global.sfx_volume,0)
}




if timer >= 60
{
y += (738 - y)*0.1
player.y += (920+timer - player.y)*0.1
player.x = 5181
}

if timer >= 120
{
obj_camera.t_x = -4
obj_camera.t_y = -4
timer = -1
}
