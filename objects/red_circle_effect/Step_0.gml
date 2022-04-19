/// @description Insert description here
// You can write your code in this editor


if image_xscale > t_scale
{
image_xscale -= 0.012
image_yscale -= 0.012
}
else
{
global.black_bg_ef = 0
image_xscale -= 0.005
image_yscale -= 0.005
}

image_xscale += (t_scale - image_xscale)*0.01
image_yscale += (t_scale - image_yscale)*0.01

if scale_plus > 0
{
scale_plus -= 0.01
}

if image_xscale <= 0
{
instance_destroy()
}

if des > 0
{
	if des = 1
	{
	scale_plus = 0.2
	des = 2
	}
t_scale = -0.01
image_alpha -= 0.1
}
else
{
image_alpha += 0.1
}