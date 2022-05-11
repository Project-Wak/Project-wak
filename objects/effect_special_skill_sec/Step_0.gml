/// @description Insert description here
// You can write your code in this editor
alpha1 -= 0.1
w_alpha__ += (-0.01 - w_alpha__)*0.2




image_yscale += 0.026*4
image_yscale += image_yscale*0.2


if image_xscale < 0.5 && time <= 58
{
image_xscale += 0.026
image_xscale += image_xscale*0.1
}




if image_xscale > 0.4 && time <= 58
{
image_xscale = 0.4
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

if saved_xscale < image_xscale
{
saved_xscale = image_xscale
}

if saved_yscale < image_yscale
{
saved_yscale = image_yscale
}


if a = 0 && time > 1
{
alpha1 = 1.2
global.w_alpha = 1.1
a = 1
}


if a > 0
{
a++
	if a >= 8 && a < 10
	{
	var ef = instance_create_depth(x,y,depth+1,gyu_seong_red_ef)
	ef.sprite_index = Sprite143
	ef.image_index = 0
	ef.image_xscale = saved_xscale
	ef.image_yscale = saved_yscale*0.8
	ef.alpha = 0.05*image_alpha
	ef.image_angle = image_angle
	}
}



if time > 48
{
image_xscale -= 0.1
image_xscale -= image_xscale*0.1
	if image_xscale <= 0
	{
	instance_destroy()
	}
}



if a >= 1
{
laser_dis += 20*4
laser_dis += laser_dis*0.25
effect_y += 3.3*4
effect_y += effect_y*0.1
}

shaker_time ++
if shaker_time <= 2
{
xscale_shaker += (1.2 - xscale_shaker)*0.15
}

if shaker_time >= 3
{
xscale_shaker += (0.6 - xscale_shaker)*0.15
}

if shaker_time >= 4
{
shaker_time = 0
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
	var color = $FF6D52F2
	draw_sprite_ext(Sprite143,0,xx,yy,image_xscale*5/i,image_yscale*13/i,image_angle,color,alpha_)
	
	var alpha_ = (image_alpha*0.2*0.5/i)
	var color = c_white
	draw_sprite_ext(Sprite143,0,xx,yy,image_xscale*5/i,image_yscale*13/i,image_angle,color,alpha_)
	}
gpu_set_blendmode(bm_normal)
surface_reset_target()
}
