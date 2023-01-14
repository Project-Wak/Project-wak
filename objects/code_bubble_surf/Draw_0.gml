/// @description Insert description here
// You can write your code in this editor
if surface_exists(global.bubble_surf)
{
shader_set(shader_outline)
var spr__ = sprite_create_from_surface(global.bubble_surf,0,0,1920,1080,true,true,960,540)
var tex=sprite_get_texture(spr__,0)
var tex_w=texture_get_texel_width(tex)
var tex_h=texture_get_texel_height(tex)
shader_set_uniform_f(handler,tex_w,tex_h)
shader_set_uniform_f(handler_1,32)//line thickness
shader_set_uniform_f(handler_2,0.4,0.4,0.4,1.0)//b
draw_sprite_ext(spr__,0,x,y,image_xscale,image_yscale,image_angle,c_black,image_alpha)
shader_reset()
}