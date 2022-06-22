/// @description Insert description here
// You can write your code in this editor
if image_index > 16
{
image_index = 16
instance_destroy()
}

if image_index >= 10
{
image_alpha -= 0.01*image_index
}



if image_index > 2
{
	if alpha = 0
	{
	image_speed = 1
	image_alpha = 0.6
	alpha = 1
	
		repeat(8)
		{
		var _ef = instance_create_depth(x-irandom_range(-6,6),y+irandom_range(-6,0),depth-1,effect_spark)
		_ef.hspeed = irandom_range(5,20)*choose(-1,1)
		_ef.vspeed = irandom_range(-4,2)
		}
	}
}
else
{
image_speed = 0.5
image_alpha += 0.01
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
	draw_sprite_ext(sprite_index,floor(image_index),xx-i,yy,image_xscale,image_yscale,image_angle,c_white,image_alpha*0.015*i)
	draw_sprite_ext(sprite_index,floor(image_index),xx+i,yy,image_xscale,image_yscale,image_angle,c_white,image_alpha*0.015*i)
	draw_sprite_ext(sprite_index,floor(image_index),xx,yy-i,image_xscale,image_yscale,image_angle,c_white,image_alpha*0.015*i)
	draw_sprite_ext(sprite_index,floor(image_index),xx,yy+i,image_xscale,image_yscale,image_angle,c_white,image_alpha*0.015*i)
	}

	for(var i = 1; i <= 2; i += 0.25)
	{
	draw_sprite_ext(sprite_index,floor(image_index),xx,yy,image_xscale/i,image_yscale,image_angle,c_white,image_alpha)
	}
gpu_set_blendmode(bm_normal)
surface_reset_target()
}
