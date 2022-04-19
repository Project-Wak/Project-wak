/// @description Insert description here
// You can write your code in this editor

obj_camera.tv_x = 1280
obj_camera.tv_y = 720
obj_camera.v_x = 1280
obj_camera.v_y = 720

timer ++

if timer < 90
{
image_yscale += (1 - image_yscale)*0.01
b_alpha += (0.2 - b_alpha)*0.01
}
else
{
image_yscale += (1.05 - image_yscale)*0.01
b_alpha += (0 - b_alpha)*0.01
}

if timer > 200
{
timer = 0
}
