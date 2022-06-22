/// @description Insert description here
// You can write your code in this editor
if image_alpha > 0
{
can_des = 1
}

if can_des = 1
{
image_index += 0.24
image_alpha -= 0.08
	if image_alpha < 0
	{
	instance_destroy()
	}
	
	if sprite_index = quake_effect
	{
		if image_index >= 8
		{
		instance_destroy()
		}
	}
}
