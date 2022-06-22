/// @description Insert description here
// You can write your code in this editor
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
	if y > global.p_floor+27
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


if y >= global.p_floor+26
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

if y >= global.p_floor+27
{
y = global.p_floor+27
gravity = 0
hspeed += (0 - hspeed)*0.1
}

if y < global.p_floor+27
{
hspeed += (0 - hspeed)*0.06
gravity = 0.23
}


alpha += random_alpha_m/50
alpha2 -= random_alpha_m/50

if place_meeting(x,y,effect_quake) || place_meeting(x,y,rage_mode_knockback) || place_meeting(x,y,effect_special_skill_sec) || place_meeting(x,y,effect_special_skill)
{
color_1 = c_black
color_2 = c_gray
}