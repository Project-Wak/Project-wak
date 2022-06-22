/// @description Insert description here
// You can write your code in this editor
image_alpha -= 0.12

if image_alpha <= 0
{
instance_destroy()
}


if image_index > 3
{
image_index = 3
}

x += t_x
t_x += (0 - t_x)*0.08