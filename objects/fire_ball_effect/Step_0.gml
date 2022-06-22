/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y+1,floor_parents)
{
gravity = 0
vspeed = 0
hspeed += (0 - hspeed)*0.03
}
else
{
gravity = 0.1
}

repeat(100)
{
	if place_meeting(x,y+0.2,floor_parents)
	{
	y -= 0.1
	}
	else
	{
	break;
	}
}


var xx_ = x
var yy_ = y-128
var random_val___ = percentage_k(5)
if random_val___ = 1
{
var random_val___2 = percentage_k(5)
create_buble_effect(image_xscale*0.4,270+irandom_range(-20,20),0,choose(-1)*irandom_range(1,150)/7,0.1,0.1,$FF47BBFF,$FF4C81FF,2,$FF534CFF,xx_+18+image_xscale*5,yy_+170+image_yscale*12,depth-random_val___2,0,false,false)
}

	
var random_val___ = percentage_k(10)
if random_val___ = 1
{
create_buble_effect(image_xscale*1.1*0.4,270+irandom_range(-20,20),0,choose(-1)*irandom_range(1,150)/7,0.07,0.07,$FF62D1F7,$FF6C60CD,2,$FF191919,xx_+18+image_xscale*5,yy_+170+image_yscale*12,depth+10,1,false,false)
}

if global.w_alpha < 0.1
{
timer++
}

if timer > 5000
{
image_xscale -= 0.001
	if image_xscale <= 0
	{
	instance_destroy()
	}
}
