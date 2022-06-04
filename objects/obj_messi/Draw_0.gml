/// @description Insert description here
// You can write your code in this editor
if surface_exists(owner_surface)
{
var surf__ = owner_surface
draw_outline(surf__,1.5)
}
else
{
owner_surface = surface_create(1920,1080)
}


draw_sprite_ext(sprite_index,1,x+(player.x-x)/50,y+(player.y-y)/100,image_xscale,image_yscale,image_angle,c_white,image_alpha)

if patturn > 1
{
draw_sprite_ext(sprite_index,2,x+(player.x-x)/50,y+(player.y-y)/100,image_xscale,image_yscale,image_angle,c_white,image_alpha*(abs(patturn-1.65))/0.5)
}
draw_self()
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_black,alpha*0.7)

if global.fps_draw > 0
{
draw_text(xstart+32,ystart,scene__)
draw_text(xstart-32,ystart,patturn)
draw_text(xstart+100,ystart,timer)
draw_text(xstart-100,ystart,instance_number(obj_wak_doo))
}




//draw_text(xstart+100,y-32,alpha)
