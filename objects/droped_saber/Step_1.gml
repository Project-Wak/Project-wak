/// @description Insert description here
// You can write your code in this editor
if timer = 0
{
	for(var i = 0; i < vspeed; i++)
	{
		if place_meeting(x,y+i,floor_parents)
		{
		timer ++
		check_floor = y+i
		break;
		}
	}
}
else
{
timer ++
}


if check_floor != -4
{
y = check_floor
}



for(var i = 0.1; i < abs(hspeed); i += 0.5)
{
	if position_meeting(x+i*sign(hspeed),y,floor_parents)
	{
	x = x+i;
	hspeed = -hspeed/2;
	image_xscale = -image_xscale;
	break;
	}
}

if global.aed > 0 && global.already_aed_used = 0
{
	if timer_back_to_player = 0
	{
	timer_back_to_player = 1
	}
already_droped = 1

	if timer_back_to_player > 40 && timer_back_to_player < 60
	{
	gravity = 0
	vspeed += (0 - vspeed)*0.05
	hspeed += (0 - hspeed)*0.05
	image_angle += (random_angle_p - image_angle)*0.08
	random_angle_p += (sign(player.x - x) - random_angle_p)*0.05
	}
}

if timer_back_to_player > 0
{
timer_back_to_player ++
}

if timer_back_to_player > 60
{
x += (player.x - x)*0.1
y += (player.y - y)*0.1
random_angle_p += (sign(player.x - x) - random_angle_p)*0.05
image_angle += (random_angle_p - image_angle)*0.08
	
	if point_distance(x,y,player.x,player.y) <= 75
	{
	instance_destroy()
	}
}

if spin_speed > 1
{
spin_speed -= 0.1
}


if timer > 400
{
image_alpha -= 0.1
	if image_alpha <= 0
	{
	instance_destroy()
	}
}

if !place_meeting(x,y+3,floor_parents) && already_droped = 0
{
image_angle -= sign(random_angle_p)*spin_speed*3
}

if place_meeting(x,y+3,floor_parents) && already_droped = 0
{
	if set_angle = 0
	{
	image_angle += (random_angle_p - image_angle)*0.2
	set_angle = 1
	}
image_angle += (random_angle_p - image_angle)*0.08
}

hspeed += (hspeed*0.9 - hspeed)*0.01

if place_meeting(x,y+3,floor_parents) && already_droped = 0
{
image_angle = random_angle_p
hspeed = 0
gravity = 0
vspeed = 0
already_droped = 1
random_angle_p = 0
check_floor += 26+irandom_range(-18,-9)
depth = player.depth+10
			


repeat(4)
{
var _ef__ = instance_create_depth(x,y+23,player.depth-1,effect_spark)
_ef__.hspeed = real(irandom_range(-10,10))
_ef__.vspeed = real(irandom_range(-2,2))
}

image_index ++

var sfx = audio_play_sound(guard,0,0)
audio_sound_gain(sfx,0.02*global.master_volume*2*global.sfx_volume,0)

var sfx = audio_play_sound(sword_ready,0,0)
audio_sound_gain(sfx,0.025*global.master_volume*2*global.sfx_volume,0)
}

if global.b_alpha > 1
{
instance_destroy()
}
