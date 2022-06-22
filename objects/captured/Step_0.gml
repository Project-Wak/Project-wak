/// @description Insert description here
// You can write your code in this editor
if a = 0
{
	if image_alpha < 1
	{
	image_alpha += 0.1
	}
}
else
{
	if a != -1
	{
	image_alpha -= 0.1
		if image_alpha <= 0
		{
		instance_destroy()
		}
	}
}

