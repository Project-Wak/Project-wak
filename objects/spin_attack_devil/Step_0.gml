/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,player)
{
speed += (0 - speed)*0.1
	if des < 1
	{
	des += 0.01
	}
}

if y > 2375 || des = 1
{
speed += (0 - speed)*0.1
image_alpha -= 0.1
	if image_alpha < 0
	{
	instance_destroy()
	}
}
else
{
speed += 0.1
}
		



spin_attack_delay++
var _angle = (spin_attack_delay*60+10)*sign(image_xscale)
var ef = instance_create_depth(x,y,depth-1,gyu_seong_red_ef)
ef.sprite_index = sprite_index
ef.image_index = 7
ef.image_xscale = image_xscale
ef.image_yscale = image_yscale
ef.image_alpha = 0.3
ef.image_angle = image_angle+_angle

	if spin_attack_delay > 1
	{
	image_angle += 120*sign(image_xscale)
	spin_attack_delay = 0
	}
