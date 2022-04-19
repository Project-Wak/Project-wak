/// @description Insert description here
// You can write your code in this editor
var floor_y = global.p_floor-48
draw_sprite_ext(spr_shadow,0,x,floor_y+23,1-abs(y-floor_y)/48,1-abs(y-floor_y)/64,0,c_white,(1-abs(y-floor_y)/48)*0.3*image_alpha)

draw_self()
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_black,0.2*image_alpha)
