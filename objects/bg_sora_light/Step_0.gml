/// @description Insert description here
// You can write your code in this editor
depth = player.depth-5
timer ++


if image_alpha < 0.08 && global.room_brightness > 0
{
image_yscale += 0.00005
image_alpha += 0.0005
}

if image_alpha > 0.08
{
image_alpha = 0.08
}

if global.room_brightness < 0.8
{
global.room_brightness += 0.001
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

