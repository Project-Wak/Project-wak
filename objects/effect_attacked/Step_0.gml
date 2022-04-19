/// @description Insert description here
// You can write your code in this editor
image_angle += (abs(image_xscale)/image_xscale)*1.5;
image_alpha -= 0.09;

if image_alpha <= 0
{
instance_destroy();
};