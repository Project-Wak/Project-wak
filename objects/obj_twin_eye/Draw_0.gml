/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_shadow,0,x,check_floor+100,(1-abs(y+100-check_floor)/48)*2,2*(1-abs(y+100-check_floor)/64),0,c_white,(1-abs(y-check_floor)/256)*0.3)
draw_sprite_ext(sprite_index,image_index+2,x,y,image_xscale,image_yscale,image_angle+45,c_white,image_alpha)
draw_sprite_ext(sprite_index,image_index+2,x,y,image_xscale,image_yscale,image_angle+45,c_black,alpha*0.7)
draw_self()
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_black,alpha*0.7)






if global.fps_draw > 0
{
draw_text(x+32,y,scene__)
draw_text(x-32,y,patturn)
draw_text(x+100,y,timer)
draw_text(x-100,y,instance_number(obj_wak_doo))
}

if instance_exists(player) && laser_alpha > 0
{
draw_set_alpha(laser_alpha)
draw_set_color(c_red)
var xx = player.x
var yy = player.y
	for(var i = 1; i > 0.5; i -= 0.1)
	{
	draw_triangle(x,y,x,y-3,xx,yy,false)
	}
}

if w_alpha_laser > 0
{
w_alpha_laser += (-0.01 - w_alpha_laser)*0.1
var xx = player.x
var yy = player.y

draw_set_alpha(w_alpha_laser)
draw_set_color(c_white)
	for(var i = 1; i > 0.5; i -= 0.1)
	{
	draw_triangle(x,y,x,y-3,xx,yy,false)
	}
}