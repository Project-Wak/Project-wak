/// @description Insert description here
// You can write your code in this editor
if a = 0
{
	if image_alpha < 1
	{
	image_alpha += 0.1
	}
	
	if sign(scale_dir) > 0
	{
		if image_xscale < 1*random_scale
		{
		image_xscale += 0.1
		}
	}
	else
	{
		if image_xscale > -1*random_scale
		{
		image_xscale -= 0.1
		}
	}
	
	if image_yscale < 1*random_scale
	{
	image_yscale += 0.05
	}
	
}
else
{
image_alpha -= 0.1
	if image_alpha < 0
	{
	instance_destroy()
	}
}