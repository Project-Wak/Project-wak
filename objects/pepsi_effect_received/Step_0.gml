/// @description Insert description here
// You can write your code in this editor
image_xscale += (-0.01 - image_xscale)*0.1
image_yscale += (-0.01 - image_yscale)*0.1
w_alpha -= 0.05

if image_xscale <= 0
{
instance_destroy()
}

vspeed += (0 - vspeed)*0.1
hspeed += (0 - hspeed)*0.1
image_alpha -= 0.02