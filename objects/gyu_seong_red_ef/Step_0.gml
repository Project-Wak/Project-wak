/// @description Insert description here
// You can write your code in this editor
if des = 1
{
	if global.graphics_for_code <= 2
	{
	image_alpha -= 0.1/global.graphics_for_code;
	}
	else
	{
	image_alpha -= 0.0125;
	}

	if image_alpha <= 0
	{
	instance_destroy();
	};
}
else
{
a += (0  - a)*0.05;
image_alpha += (alpha*1.5 - image_alpha)*0.1
	if image_alpha > a
	{
	image_alpha = alpha
	des = 1
	}
}

hspeed += (0 - hspeed)*0.1;


