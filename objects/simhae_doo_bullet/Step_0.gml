/// @description Insert description here
// You can write your code in this editor
for(var i = 0; i <= 32; i++)
{
alpha[i] -= 0.1
	if des_time = 1
	{
	alpha[i] -= 0.05
	}
}


if des_time > 0
{
image_alpha += (-1 - image_alpha)*0.15
image_xscale += (-0.1 - image_xscale)*0.15
image_yscale += (-0.1 - image_yscale)*0.15
	if image_alpha <= 0
	{
	instance_destroy()
	}
}
else
{
angle += sign_k(x - player.x)*16

image_xscale += (0.7 - image_xscale)*0.1
image_yscale += (0.7 - image_yscale)*0.1
image_alpha += (1.01 - image_alpha)*0.1
image_angle += (angle - image_angle)*0.1
}



ii += 0.5

if ii > 32
{
ii = 0
}

if ii = floor(ii) && des_time = 0
{
	if alpha[ii] <= 0
	{
	xx[ii] = x
	yy[ii] = y
	alpha[ii] = 1
	}
}


if attack_type != 2
{
	if timer > 60
	{
		if attack_type = 0
		{
			if speed < 14 && des_time = 0
			{
			speed += bullet_speed
			}

			if timer < 183
			{
			var scale_ = 40
				if abs(global.movement_speed) < 6
				{
				scale_ = 80
				}
			speed = 0
			direction = point_direction(x,y,player.x+sign(floor(global.movement_speed))*scale_,player.y)
			timer = 183
			}
		}
	
		if attack_type = 1
		{
			if timer < 140
			{
			speed += bullet_speed
			direction = 90
				if timer >= 60
				{
				timer ++
				}
			}
			else
			{
			speed = 20
			direction = point_direction(x,y,player.x,player.y)
			}
		}
	}
	else
	{
	speed = 2
	direction = image_angle
	timer ++
	}
}
else
{
var scale_ = 40
	if abs(global.movement_speed) < 6
	{
	scale_ = 80
	}
speed += (bullet_speed*3 - speed)*0.01
direction = point_direction(x,y,player.x,player.y)
}


if place_meeting(x,y-2,floor_parents) || (place_meeting(x,y,player) && player.spin = 0)
{
sfx_for_multiplayer(critical_sfx,0,0.01)
speed = 0
image_alpha += (-1 - image_alpha)*0.15
image_xscale += (-0.1 - image_xscale)*0.15
image_yscale += (-0.1 - image_yscale)*0.15
des_time = 1
	repeat(2)
	{
	var _ef = instance_create_depth(x,y,depth-1,effect_spark)
	_ef.hspeed = -irandom_range(5,20)*sign(bullet_speed)
	_ef.vspeed = irandom_range(-4,2)
	}
}





//var s_w = camera_get_view_width(view_camera[0])
//var s_h = camera_get_view_height(view_camera[0])

if surface_exists(global.light_surf)
{
var s_x = camera_get_view_x(view_camera[0])
var s_y = camera_get_view_y(view_camera[0])
surface_set_target(global.light_surf)
gpu_set_blendmode(bm_add);
var xx = other.x - s_x
var yy = other.y - s_y

	for(var i = 3; i <= 20; i += 0.5)
	{
	//var alpha_ = image_alpha/i
	var alpha_ = (image_alpha/i)
	var color = $FF75F2FF
	draw_sprite_ext(sprite64,0,xx,yy,image_xscale*4/i,image_yscale*4/i,floor(image_angle),color,alpha_)
	}
gpu_set_blendmode(bm_normal)
surface_reset_target()
}