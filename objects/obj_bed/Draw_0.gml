/// @description Insert description here
// You can write your code in this editor
var v_x = obj_camera.v_x/1280

draw_sprite_ext(sprite_index,image_index,x,y+6,image_xscale,image_yscale,image_angle,c_black,image_alpha*0.3)
draw_self()

if can_interect = 1
{
draw_text_kl_scale(x,y-v_x*64,"상호작용 ("+string(global.skip_key)+")",v_x*64,-1,1,c_white,0,0,font0,v_x*0.3,v_x*0.3,0);
}



