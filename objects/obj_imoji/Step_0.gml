/// @description Insert description here
// You can write your code in this editor
if des = 0
{
image_xscale += (0.8 - image_xscale)*0.1
image_yscale += (0.8 - image_yscale)*0.1
dy += (-80 - dy)*0.1
image_alpha += (1.1 - image_alpha)*0.1
}
else
{
image_xscale += (0 - image_xscale)*0.1
image_yscale += (0 - image_yscale)*0.1
dy += (-160 - dy)*0.1
image_alpha += (-0.1 - image_alpha)*0.1

	if image_alpha < 0
	{
	instance_destroy()
	}
}

x = target.x
y = target.y