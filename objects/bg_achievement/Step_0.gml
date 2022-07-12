/// @description Insert description here
// You can write your code in this editor
depth = obj_camera.depth-1280
timer ++
if timer < 240
{
image_alpha += (1 - image_alpha)*0.1
}
else
{
image_alpha += (-0.01 - image_alpha)*0.1
	if image_alpha <= 0
	{
	instance_destroy()
	}
}
w_alpha += (0 - w_alpha)*0.1