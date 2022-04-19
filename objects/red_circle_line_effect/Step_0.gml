/// @description Insert description here
// You can write your code in this editor
if instance_number(parents_obj) > 0
{
x = parents_obj.x+dir_x
y = parents_obj.y+dir_y

image_angle = point_direction(x,y,parents_obj.x,parents_obj.y)
}
else
{
instance_destroy()
}

dir_x += (0 - dir_x)*0.05
dir_y += (0 - dir_y)*0.05

if image_alpha > 0.8
{
image_alpha = 0.8
}


if image_xscale > t_scale
{
image_xscale += (t_scale - image_xscale)*0.0069
image_yscale += (t_scale*0.08 - image_yscale)*0.01
}
else
{
image_xscale -= 0.01
image_yscale -= 0.01*0.08
}


if image_alpha <= 0 && a = 1
{
instance_destroy()
}

if a = 0
{
image_alpha += 0.05
}
else
{
image_alpha -= 0.1
}
