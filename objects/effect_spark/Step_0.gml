/// @description Insert description here
// You can write your code in this editor
depth = -room_width*1.7

var check_floor = instance_position(x,y,floor_parents)

for(var i = abs(hspeed); i > 0; i -= 0.5)
{
	if position_meeting(x+i*sign(hspeed),y,floor_parents)
	{
	hspeed = -hspeed*0.7
	break;
	}
}


for(var i = 6; i <= 20; i++)
{
spark_x[i] += (x - spark_x[i])*0.08*i
spark_y[i] += (y - spark_y[i])*0.08*i

spark_x[i] = floor(spark_x[i]*10)/10
spark_y[i] = floor(spark_y[i]*10)/10
}

time ++
if time > 120
{
time_s ++
	if time_s > 30
	{
	time_s = 1
	}
}

alpha2 -= 0.04

repeat(100)
{
	if check_floor > 0
	{
	gravity = 0
	y -= 0.1
	}
	else
	{
	break;
	}
}

if alpha >= 0.19
{
instance_destroy()
}


if check_floor > 0
{
	if bounced_time > 0
	{
	vspeed -= bounced_time*abs(vspeed)*0.4
	bounced_time -= 0.2
	}
}


if bounced_time <= 2.3
{
alpha += 0.05
alpha += irandom_range(0,300)/10000
}

if check_floor > 0
{
gravity = 0
hspeed += (0 - hspeed)*0.1
}
else
{
hspeed += (0 - hspeed)*0.06
gravity = 0.3
}


alpha += random_alpha_m/50
alpha2 -= random_alpha_m/50

if place_meeting(x,y,effect_quake_attacked) || place_meeting(x,y,rage_mode_knockback_attacked) || place_meeting(x,y,effect_special_skill_sec_attacked) || place_meeting(x,y,effect_special_skill_attacked)
{
color_1 = c_black
color_2 = c_gray
}