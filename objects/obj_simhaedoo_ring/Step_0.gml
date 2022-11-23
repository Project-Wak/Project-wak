/// @description Insert description here
// You can write your code in this editor
var xx_ = x+irandom_range(-image_xscale*512,image_xscale*512)
var yy_ = y+irandom_range(-16,16)
repeat(2)
{
	var random_val___ = percentage_k(5+global.graphics_for_code*7)
	if random_val___ = 1
	{
	create_buble_effect(0.3,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.1,0.1,$FF3E2D24,$FF473021,2,$FF513524,xx_,yy_,depth+10,0,false,false)
	}
}
	
var random_val___ = percentage_k(global.graphics_for_code*3)
if random_val___ = 1
{
var random_val___2 = percentage_k(1)
create_buble_effect(0.3*0.5,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.07,0.07,$FF62D1F7,$FF6C60CD,2,$FF191919,xx_,yy_,depth-random_val___2,1,false,false)
}


y += (ystart - y)*0.06


depth = player.depth+1
if surface_exists(global.light_surf)
{
var s_x = camera_get_view_x(view_camera[0])
var s_y = camera_get_view_y(view_camera[0])
surface_set_target(global.light_surf)
gpu_set_blendmode(bm_add);
var xx = x - s_x
var yy = y - s_y
	for(var i = -4; i < 4; i += 0.5)
	{
	draw_sprite_ext(sprite_index,1,xx,yy+i,image_xscale,image_yscale,image_angle,$FF4BACFF,image_alpha/i/5)
	draw_sprite_ext(sprite_index,1,xx+i,yy,image_xscale,image_yscale,image_angle,$FF4BACFF,image_alpha/i/5)
	}
	
	for(var i = -4; i < 4; i += 0.5)
	{
	draw_sprite_ext(sprite_index,2,xx,yy+i,image_xscale,image_yscale,image_angle,$FF4BACFF,image_alpha/i/5)
	draw_sprite_ext(sprite_index,2,xx+i,yy,image_xscale,image_yscale,image_angle,$FF4BACFF,image_alpha/i/5)
	}
gpu_set_blendmode(bm_normal)
surface_reset_target()
}


if des = 0
{
image_alpha += (1.01 - image_alpha)*0.07
	if image_alpha >= 1
	{
	des = 1
	}
}



image_xscale -= 0.02
image_yscale -= 0.01

if (image_yscale <= 0 || image_xscale <= 0 || image_alpha <= 0) && des = 1
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
