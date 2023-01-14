/// @description Insert description here
// You can write your code in this editor
check_floor = -4
for(var i = 0; i <= 160; i++)
{
	if place_meeting(x,y+i,obj_floor_tile1)
	{
	check_floor = y+i
	break;
	}
}

if cannot_step = 1
{
alpha += (1 - alpha)*0.1
sprite_index = Sprite172173
depth = 1200

image_xscale += (sign(image_xscale)*1.2 - image_xscale)*0.1
image_yscale += (1.2 - image_yscale)*0.1
}
else
{
alpha += (0 - alpha)*0.1
sprite_index = Sprite172
depth = player.depth-5

image_xscale += (sign(image_xscale)*1.3 - image_xscale)*0.1
image_yscale += (1.3 - image_yscale)*0.1
}

if place_meeting(x,y,obj_hand)
{
check_met_other_hand = 1
}
else
{
check_met_other_hand = 0
}

repeat(100)
{
	if place_meeting(x,y+0.2,obj_floor_tile1)
	{
	check_on_floor = 1
	y -= 0.1
	}
	else
	{
	check_on_floor = 0
	break;
	}
}