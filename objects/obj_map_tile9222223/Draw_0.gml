/// @description Insert description here
// You can write your code in this editor
draw_self()

if instance_exists(obj_guisangadoo) && obj_guisangadoo.b_alpha_ > 0
{
shader_set(shFlash)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,$FF19110B,obj_guisangadoo.b_alpha_)
shader_reset()
}

if instance_exists(obj_guisangadoo) && obj_guisangadoo.w_alpha_elec > 0
{
shader_set(shFlash)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,obj_guisangadoo.w_alpha_elec)
shader_reset()
}
