/// @description Insert description here
// You can write your code in this editor
depth = player.depth-5
timer ++


if global.rainy = 0
{
	if image_alpha < 0.1 && global.room_brightness > 0
	{
	image_yscale += 0.00005
	image_alpha += 0.0005
	}

	if image_alpha > 0.1
	{
	image_alpha = 0.1
	}
}
else
{
	if image_alpha < 0.08 && global.room_brightness > 0
	{
	image_yscale += 0.00005
	image_alpha += 0.0005
	}

	if image_alpha > 0.08
	{
	image_alpha = 0.08
	}
}




timer ++

if timer < 100
{
image_alpha -= 0.0005
}
else
{
image_alpha += 0.0005
}

if timer > 200
{
timer = 0
}

