/// @description Insert description here
// You can write your code in this editor
depth = -999997

image_alpha += (t_image_alpha - image_alpha)*0.06


if auto_destroy = 1
{
t_image_alpha -= 0.05
}

if wipe > 0
{
t_image_alpha -= 0.05
}

if image_alpha <= 0 && t_image_alpha <= 0
{
instance_destroy()
}


w_alpha += (-0.01 - w_alpha)*0.1