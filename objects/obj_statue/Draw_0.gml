/// @description Insert description here
// You can write your code in this editor
var v_x = obj_camera.v_x/1280


draw_sprite_ext(sprite_index,image_index,x,y+32*image_yscale,image_xscale,-image_yscale*0.5,0,c_black,0.3*image_alpha)
draw_sprite_ext(sprite_index,image_index,x,y-26,image_xscale,image_yscale,image_angle,c_white,image_alpha)
//draw_set_alpha(1)
//draw_text(x,y,message_phase)

if global.dreamy_alpha > 0
{
shader_set(shFlash)
draw_sprite_ext(sprite_index,image_index,x,y-26,image_xscale,image_yscale,image_angle,$FF473021,global.dreamy_alpha)
shader_reset()
}

if can_interect = 1
{
draw_text_kl_scale(x,y-v_x*64,"상호작용 ("+string(global.skip_key_for_draw)+")",v_x*64,-1,1,c_white,0,0,font0,v_x*0.3,v_x*0.3,0);
draw_sprite_ext(sprite_index,2,x,y-26,image_xscale,image_yscale,image_angle,c_white,image_alpha)
}

