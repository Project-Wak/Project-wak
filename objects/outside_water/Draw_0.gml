/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index,1,x,y+14,image_xscale,image_yscale,image_angle,c_white,obj_map_tile_outside.b_alpha*5)
draw_sprite_ext(sprite_index,1,x,y+14,image_xscale,image_yscale,image_angle,c_black,obj_map_tile_outside.b_alpha)

draw_sprite_ext(player.sprite_index,player.image_index,player.x,1146+20,player.image_xscale,-player.image_yscale*0.65,player.image_angle,c_black,0.3*(1-abs(player.y - 1146)/94))





