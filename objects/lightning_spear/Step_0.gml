/// @description Insert description here
// You can write your code in this editor
image_angle = direction+90
if des = 0
{
speed += (42 - speed)*0.1
}

if des = -1
{
	if direction != 270
	{
	x = player.x+lengthdir_x(64,direction)
	y = player.y+6
	}
	else
	{
	x = player.x+player.image_xscale*10
	y = player.y
	}
}


if des = 1
{
image_alpha += (-0.5 - image_alpha)*0.1
speed += (0 - speed)*0.3
	if image_alpha <= 0
	{
		repeat(5)
		{
		var _ef = instance_create_depth(x+irandom_range(-100,100),y+irandom_range(-60,100),depth-1,effect_spark)
		_ef.hspeed = irandom_range(-20,20)
		_ef.vspeed = irandom_range(-4,2)
		}
	instance_destroy()
	}
}

var _ef = instance_create_depth(x+irandom_range(-100,100),y+irandom_range(-60,100),depth-1,effect_spark)
_ef.hspeed = irandom_range(-20,20)
_ef.vspeed = irandom_range(-4,2)


if place_meeting(x,y,floor_parents) && des = 0
{
instance_create_depth(x,y,player.depth-15,obj_lightning_player)	
	
global.w_alpha = 0.3
var a___ = audio_play_sound(sparking_sound,0,0)
audio_sound_gain(a___,0.1*global.master_volume*2*global.sfx_volume,0)
view_shake(1,5,3)
des = 1
}


var s_x = camera_get_view_x(view_camera[0])
var s_y = camera_get_view_y(view_camera[0])
//var s_w = camera_get_view_width(view_camera[0])
//var s_h = camera_get_view_height(view_camera[0])

if surface_exists(global.light_surf)
{
surface_set_target(global.light_surf)
gpu_set_blendmode(bm_add);
var xx = other.x - s_x
var yy = other.y - s_y

	for(var i = 0; i <= 5; i += 0.3)
	{
	draw_sprite_ext(sprite_index,floor(image_index),xx-i,yy,image_xscale,image_yscale,image_angle,$FF4242FF,image_alpha*0.015*i)
	draw_sprite_ext(sprite_index,floor(image_index),xx+i,yy,image_xscale,image_yscale,image_angle,$FF4242FF,image_alpha*0.015*i)
	draw_sprite_ext(sprite_index,floor(image_index),xx,yy-i,image_xscale,image_yscale,image_angle,$FF4242FF,image_alpha*0.015*i)
	draw_sprite_ext(sprite_index,floor(image_index),xx,yy+i,image_xscale,image_yscale,image_angle,$FF4242FF,image_alpha*0.015*i)
	}

	for(var i = 1; i <= 2; i += 0.25)
	{
	draw_sprite_ext(sprite_index,floor(image_index),xx,yy,image_xscale/i,image_yscale,image_angle,c_white,image_alpha)
	}
gpu_set_blendmode(bm_normal)
surface_reset_target()
}
