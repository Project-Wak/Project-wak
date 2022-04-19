/// @description Insert description here
// You can write your code in this editor
image_xscale += (t_image_xscale - image_xscale)*0.1
image_yscale += (t_image_yscale - image_yscale)*0.1

t_image_yscale += 0.03
t_image_xscale += 0.005
image_alpha -= 0.11

if image_alpha <= 0
{
instance_destroy()
}