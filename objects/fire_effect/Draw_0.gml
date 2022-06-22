/// @description Insert description here
// You can write your code in this editor
del_fire++
if del_fire < 3
{
draw_sprite_ext(spr_gun_fire_effect,random_fire_img,xstart,ystart,image_xscale*1.5,image_yscale*1.5,image_angle,c_white,1)
}
else
{
instance_destroy()
}
