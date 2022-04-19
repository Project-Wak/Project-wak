/// @description Insert description here
// You can write your code in this editor
img_ind += image_speed
if (image_index >= image_number || image_yscale <= 0)
{
instance_destroy()
}


//depth = -y

speed += (0 - speed)*speed_dec

image_xscale += (-0.01 - image_xscale)*des_speed*0.1
image_yscale += (-0.01 - image_yscale)*des_speed*0.1

//depth = -(y+32*image_yscale)

//image_alpha += (-0.01 - image_alpha)*des_speed*0.5
sec_alpha += (-0.01 - sec_alpha)*des_speed*1.2

x += lengthdir_x(speed,direction)*0.5
y += lengthdir_y(speed,direction)*0.5


if img_ind > image_number+1
{
speed += (0 - speed)*speed_dec
thi_col_able = 1

image_xscale += (-0.01 - image_xscale)*des_speed*0.5
image_yscale += (-0.01 - image_yscale)*des_speed*0.5

	if img_ind > 11
	{
	image_speed = 0.8
	image_xscale += (-0.01 - image_xscale)*des_speed*0.5
	image_yscale += (-0.01 - image_yscale)*des_speed*0.5
	}
	else
	{
	image_speed = 0.1
	image_index = 0
	}
}



if cannot_through_floor = true
{
	if place_meeting(x,y,obj_floor_tile1)
	{
	colition = 1
	}
}

if colition = 1
{
direction += random_dir*3
speed += (0 - speed)*0.45
image_xscale += (-0.01 - image_xscale)*des_speed*0.5
image_yscale += (-0.01 - image_yscale)*des_speed*0.5
}


