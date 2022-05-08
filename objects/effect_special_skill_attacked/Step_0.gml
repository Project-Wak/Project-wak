/// @description Insert description here
// You can write your code in this editor
alpha1 -= 0.1

if image_xscale < 1 && time <= 58
{
image_xscale += 0.026
image_xscale += image_xscale*0.1
}

if image_yscale < 1
{
image_yscale += 0.026*2
image_yscale += image_yscale*0.2
}

if image_xscale > 1 && time <= 58
{
image_xscale = 1
	if time = 0
	{
	time ++
	}
}

if time > 0
{
effect_index += 0.005
	if effect_index < 1
	{
	effect_index += 0.09
	}
time ++
}


if a = 0 && time > 1
{
var sfx = audio_play_sound(laser_skill_using,0,0)
audio_sound_gain(sfx,0.05*global.master_volume*2*global.sfx_volume*(1 - point_distance(x,y,player.x,player.y)/1200),0)
alpha1 = 1.2
global.w_alpha = 1.1
a = 1
}

if time > 58
{
image_xscale -= 0.026
image_xscale -= image_xscale*0.1
	if image_xscale <= 0
	{
	instance_destroy()
	}
}



if a = 1
{
laser_dis += 20
laser_dis += laser_dis*0.25
effect_y += 3.3
effect_y += effect_y*0.1
}



if surface_exists(global.light_surf)
{
var s_x = camera_get_view_x(view_camera[0])
var s_y = camera_get_view_y(view_camera[0])
surface_set_target(global.light_surf)
gpu_set_blendmode(bm_add);
var xx = x - s_x
var yy = y - s_y

	for(var i = 3; i <= 20; i += 0.5)
	{
	//var alpha_ = image_alpha/i
	var alpha_ = (image_alpha*0.2*0.1/i)
	var color = $FF75F2FF
	draw_sprite_ext(Sprite143,0,xx,yy,image_xscale*5/i,image_yscale*13/i,0,color,alpha_)
	
	var alpha_ = (image_alpha*0.2*0.5/i)
	var color = c_white
	draw_sprite_ext(Sprite143,0,xx,yy,image_xscale*5/i,image_yscale*13/i,0,color,alpha_)
	}
gpu_set_blendmode(bm_normal)
surface_reset_target()
}
