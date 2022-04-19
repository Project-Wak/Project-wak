/// @description Insert description here
// You can write your code in this editor
for(var i = 0; i <= 19; i++)
{
spark_x[i] += (x - spark_x[i])*0.08*i
spark_y[i] += (y - spark_y[i])*0.08*i

spark_x[i] = spark_x[i]
spark_y[i] = spark_y[i]
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


repeat(16)
{
	if y > ystart
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

alpha += 0.01

if y >= ystart+1
{
	if bounced_time > 0
	{
	vspeed -= bounced_time*abs(vspeed)*0.4
	bounced_time -= 0.2
	}
}


if y >= ystart+1
{
y = global.p_floor+27
gravity = 0
hspeed += (0 - hspeed)*0.1
}

if y < ystart+1
{
hspeed += (0 - hspeed)*0.06
gravity = 0.23
}


