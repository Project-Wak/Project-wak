/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_black,b_alpha)
draw_sprite_ext(sprite_index,2,x,y,image_xscale,image_yscale,image_angle,c_white,b_alpha)

for(var i = -4; i < 4; i += 0.5)
{
draw_sprite_ext(background_,bg_cloud.image_index,bg_cloud.x+i,bg_cloud.y-30,bg_cloud.image_xscale,-bg_cloud.image_yscale*0.5,0,c_black,i/100)
draw_sprite_ext(background_,bg_cloud.image_index,bg_cloud.x,bg_cloud.y-30+i,bg_cloud.image_xscale,-bg_cloud.image_yscale*0.5,0,c_black,i/100)
}



