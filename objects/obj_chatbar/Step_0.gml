/// @description Insert description here
// You can write your code in this editor
cannot_send += (-0.01 - cannot_send)*0.1
depth = obj_camera.depth-10
time ++


if(global.chat_activity)
{
alpha += (1 - alpha)*0.05
}
else
{
time = 0
alpha = -10
}

if time = 200
{
alpha = -2
}