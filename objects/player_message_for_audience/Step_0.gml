/// @description Insert description here
// You can write your code in this editor


real_text_time ++
if real_text_time > next_time && real_text_a <= string_length(text)+1
{
real_text = string_delete(text,real_text_a,string_length(text)+1)
real_text_a ++
real_text_time = 0

	if (string_char_at(text,real_text_a-2) = "." || string_char_at(text,real_text_a-2) = "?" || string_char_at(text,real_text_a-2) = "," || string_char_at(text,real_text_a-2) = "!")
	{
	next_time = 17
	}
	else
	{
	next_time = 1
	}
}


real_text = text
real_text_a = string_length(text)+2



if string_length(text) < 10
{
image_index = 0
}

if string_length(text) >= 10 && string_length(text) < 18
{
image_index = 1
}

if string_length(text) >= 18 && string_length(text) < 22
{
image_index = 2
}

if string_length(text) >= 22 && string_length(text) < 25
{
image_index = 3
}

if string_length(text) >= 25
{
image_index = 4
}



anime += 0.6

if instance_exists(target)
{
x = target.x
y = target.y-23
depth = target.depth-1
}


if des = 0
{
	if image_alpha < 1
	{
	image_alpha += 0.1
	}

	if anime < 9
	{
	image_xscale += (1.2 - image_xscale)*0.3
	image_yscale += (1.2 - image_yscale)*0.3
	}

	if anime >= 9 && anime < 13
	{
	image_xscale += (0.9 - image_xscale)*0.2
	image_yscale += (0.9 - image_yscale)*0.2
	}

	if anime >= 13
	{
	image_xscale += (1 - image_xscale)*0.2
	image_yscale += (1 - image_yscale)*0.2
	}
}
else
{
	if image_alpha > 0
	{
	image_alpha -= 0.1
	}
	
	image_xscale += (0 - image_xscale)*0.21
	image_yscale += (0 - image_yscale)*0.21

	if image_alpha <= 0
	{
	instance_destroy()
	}

}