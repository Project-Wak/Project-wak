/// @description Insert description here
// You can write your code in this editor

if abs(global.platform_speed) > 0
{
x -= global.platform_speed
}


if instance_exists(obj_guisangadoo)
{
image_alpha = 1- obj_guisangadoo.b_alpha_
}

if instance_exists(obj_simhae_doo)
{
image_alpha = 1- obj_simhae_doo.b_alpha_
}