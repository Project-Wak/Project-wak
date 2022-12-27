/// @description Insert description here
// You can write your code in this editor

if floor(damaged_hp) != floor(hp)
{
	if hp_bar_alpha > 0
	{
	damaged_time++
		if damaged_time >= 60
		{
		damaged_hp += (hp - damaged_hp)*0.1
			if abs(damaged_hp - hp) < 2
			{
			damaged_hp = hp
			damaged_time = 0
			}
		}
	}
	else
	{
	damaged_hp = hp
	}
}


gravity = 0
if point_distance(x,y,player.x,player.y) < 450
{
targeted = 1
}

if attack > 0
{
attack ++
	if attack%6 = 0
	{
	var bullet__ = instance_create_depth(x+irandom_range(-64,64),y-16+irandom_range(-64,64),player.depth-1,simhae_doo_bullet)
	bullet__.bullet_speed = 0.7
	bullet__.attack_type = 0
	}
	
	if attack >= 18
	{
	timer = 0
	attack = 0
	}
}


if targeted = 1 && hp > 0 && global.b_alpha <= 0.2
{
timer += set_value_case(global.replayed*0.5,1,2,true)
speed += (0 - speed)*0.07
direction += (point_direction(x,y,player.x,player.y) - direction)*0.03
	if timer > 100
	{
	image_xscale = sign_k(x - player.x)
	var random_val = percentage_k(80)
		if random_val = 1
		{
		speed = 8
		}
		else
		{
		attack = 1
		}
	timer = 0
	}
}


if global.b_alpha >= 1
{
targeted = 0
}



var s_x = camera_get_view_x(view_camera[0])
var s_y = camera_get_view_y(view_camera[0])
//var s_w = camera_get_view_width(view_camera[0])
//var s_h = camera_get_view_height(view_camera[0])



if surface_exists(global.light_surf)
{
surface_set_target(global.light_surf)
gpu_set_blendmode(bm_add);
var xx = x - s_x
var yy = y - s_y

	for(var i = 3; i <= 20; i += 0.5)
	{
	//var alpha_ = image_alpha/i
	var alpha_ = (__light_alpha/i)*image_alpha
	var color = $FF4EB0F7
	draw_sprite_ext(sprite64,0,xx,yy,__light_image_xscale/i,__light_image_yscale/i,floor(image_angle),color,alpha_)
	}
gpu_set_blendmode(bm_normal)
surface_reset_target()
}
	
light_timer ++

if timer < 60
{
	if (light_timer > 80 && light_timer < 140)
	{
	__light_image_xscale += (5.6 - __light_image_xscale)*0.08
	__light_image_yscale += (5.6 - __light_image_yscale)*0.08
	__light_alpha += (image_alpha*0.5 - __light_alpha)*0.08
	}
			
	if (light_timer >= 140 && light_timer < 200)
	{
	__light_image_xscale += (5.2 - __light_image_xscale)*0.08
	__light_image_yscale += (5.2 - __light_image_yscale)*0.08
	__light_alpha += (image_alpha*0.4 - __light_alpha)*0.08
	}
}
else
{
__light_image_xscale += (5.2 - __light_image_xscale)*0.08
__light_image_yscale += (5.2 - __light_image_yscale)*0.08
__light_alpha += (0 - __light_alpha)*0.08
}
			
if light_timer >= 200
{
light_timer = 80
}
