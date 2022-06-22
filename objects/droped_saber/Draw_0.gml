/// @description Insert description here
// You can write your code in this editor
if already_droped = 1
{
var x_p_cal = 0
if abs(image_angle + 135) > 20
{
x_p_cal = (image_angle + 135)/2
}
draw_sprite_ext(Sprite18088,image_index,x+x_p_cal,y,image_xscale*0.9,image_yscale*0.7,45,c_black,0.4*image_alpha)
}
draw_self()
