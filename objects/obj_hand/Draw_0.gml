/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_shadow,0,x,check_floor+80,(1-abs(y+60-check_floor)/48)*2,2*(1-abs(y+60-check_floor)/64),0,c_white,(1-abs(y-check_floor)/256)*0.3)

draw_sprite_ext(sprite_index,image_index,x,y+16,image_xscale,image_yscale,image_angle-10*sign(image_xscale),c_black,image_alpha*0.3)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle-10*sign(image_xscale),c_white,image_alpha)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle-10*sign(image_xscale),c_black,alpha*0.7)