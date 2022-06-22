/// @description Insert description here
// You can write your code in this editor
depth = player.depth-122

if place_meeting(x,y,player)
{
obj_camera.t_x = x
obj_camera.t_y = y
image_alpha += (0.5 - image_alpha)*0.1
}
else
{
image_alpha += (55 - image_alpha)*0.1
}


