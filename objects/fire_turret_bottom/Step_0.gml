/// @description Insert description here
// You can write your code in this editor


if instance_exists(_light_)
{
_light_.alpha += (-0.01 - _light_.alpha)*0.1
_light_2.alpha += (-0.01 - _light_2.alpha)*0.1
_light_3.alpha += (-0.01 - _light_3.alpha)*0.1
}

if attack > 0 && point_distance(x,y,obj_camera.x,obj_camera.y) < 735
{
	if !instance_exists(_light_)
	{
	_light_ = instance_create_depth(x,y,depth,obj_light)
	_light_.p_id = id
	_light_.alpha = 0
	_light_.sprite_index = sprite64
	_light_.image_blend = $FF4EB0F7
	_light_.light_type = 0
	_light_.image_xscale = 5
	_light_.image_yscale = 5
	
	_light_2 = instance_create_depth(x,y+96,depth,obj_light)
	_light_2.p_id = id
	_light_2.alpha = 0
	_light_2.sprite_index = sprite64
	_light_2.image_blend = $FF4EB0F7
	_light_2.light_type = 0
	_light_2.image_xscale = 3.5
	_light_2.image_yscale = 3.5
	
	_light_3 = instance_create_depth(x,y+192,depth,obj_light)
	_light_3.p_id = id
	_light_3.alpha = 0
	_light_3.sprite_index = sprite64
	_light_3.image_blend = $FF4EB0F7
	_light_3.light_type = 0
	_light_3.image_xscale = 2.5
	_light_3.image_yscale = 2.5
	}
	else
	{
	_light_.alpha += (0.4 - _light_.alpha)*0.1
	_light_2.alpha += (0.4 - _light_2.alpha)*0.1
	_light_3.alpha += (0.4 - _light_3.alpha)*0.1
	}
	
var xx_ = x
var yy_ = y
	repeat(6)
	{
	var random_val___ = percentage_k(50)
		if random_val___ = 1
		{
		create_buble_effect(0.8,irandom_range(-9,9)+90,90,-image_xscale*irandom_range(1,150)/5,0.05,0.05,$FF47BBFF,$FF4C81FF,2,$FF534CFF,xx_,yy_,depth-30,0,false,true)
		}
	}
	
	var random_val___ = percentage_k(10)
	if random_val___ = 1
	{
	create_buble_effect(0.8,irandom_range(-9,9)+90,90,-image_xscale*irandom_range(1,150)/5,0.05,0.05,$FF62D1F7,$FF6C60CD,2,$FF191919,xx_,yy_,depth-30,1,false,true)
	}
	
	
	if image_xscale > 0 
	{
		if abs(y - player.y) <= 400 && player.y > y && abs(x - player.x) <= 24
		{
		global.r_alpha += (0.17 - global.r_alpha)*0.1
			
		global.hp -= 10*global.difficulty
		global.stamina_cooltime = 0
			if !audio_is_playing(global.hit_sfx_1)
			{
			var sfx = audio_play_sound(global.hit_sfx_1,0,0)
			audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
			}
		}
	}
	else
	{
		if abs(y - player.y) <= 400 && player.y > y && abs(x - player.x) <= 24
		{
		global.r_alpha += (0.17 - global.r_alpha)*0.1
			
		global.hp -= 10*global.difficulty
		global.stamina_cooltime = 0
			if !audio_is_playing(global.hit_sfx_1)
			{
			var sfx = audio_play_sound(global.hit_sfx_1,0,0)
			audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
			}
		}
	}
}
