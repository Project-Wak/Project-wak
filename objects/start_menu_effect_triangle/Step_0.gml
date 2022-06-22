/// @description Insert description here
// You can write your code in this editor

//set_time = irandom_range(120,240)
timer ++
if timer < set_time
{
speed += 0.01 + speed/100
}
else
{
speed -= 0.01 - speed/100
}

if abs(timer - set_time) < 25
{
speed += (0 - speed)*0.1
timer -= 0.5
}

image_angle += (t_angle - image_angle)*(speed/15)


angle_timer ++
if angle_timer > 100
{
t_angle = 90*irandom_range(-8,8)
angle_timer = irandom_range(-60,60)
}




glitch_effect_timer ++

if abs(glitch_effect_timer-glitch_effect_set_t) < 15
{
	if glitch_effect_timer%2
	{
	image_alpha *= -1
	}
}





if x < -128 || x > room_width+128
{
instance_destroy()
}




