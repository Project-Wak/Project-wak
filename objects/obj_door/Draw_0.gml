/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index,2,x,ystart,image_xscale,image_xscale,0,c_white,0.4*image_alpha*(1-abs(y - ystart)/300))
draw_self()
draw_sprite_ext(sprite_index,1,x,ystart-244*image_xscale,image_xscale,image_xscale,0,c_white,image_alpha)