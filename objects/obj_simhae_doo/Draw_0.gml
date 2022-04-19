/// @description Insert description here
// You can write your code in this editor
if b_alpha_ > 0
{
draw_set_alpha(b_alpha_)
draw_set_color(c_black)
draw_rectangle(player.x-2000,player.y-2000,player.x+2000,player.y+2000,false)
}

draw_sprite_ext(sprite_index,1,x+(player.x-x)/150,y+(player.y-y)/150,image_xscale,image_yscale,image_angle,image_blend,image_alpha)

if patturn > 1
{
draw_sprite_ext(sprite_index,2,x+(player.x-x)/150,y+(player.y-y)/150,image_xscale,image_yscale,image_angle,image_blend,image_alpha*(abs(patturn-1.65))/0.5)
}
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_black,alpha*0.7*image_alpha)

if global.fps_draw > 0
{
draw_text(x+32,y,scene__)
draw_text(x-32,y,patturn)
draw_text(x+100,y,timer)
draw_text(x-100,y,instance_number(obj_wak_doo))
}

