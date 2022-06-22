/// @description Insert description here
// You can write your code in this editor
image_angle += (abs(image_xscale)/image_xscale)
image_alpha -= 0.1

if image_alpha <= 0
{
instance_destroy()
}
