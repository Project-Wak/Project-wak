/// @description Insert description here
// You can write your code in this editor
var v_x_ = obj_camera.v_x/1280
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5
var yy = camera_get_view_y(view_camera[0])+32*v_x_

draw_sprite_ext(sprite_index,1,xx,yy,v_x_,v_x_*0.75,0,$FF462E24,image_alpha)
draw_sprite_ext(sprite_index,2,xx,yy,v_x_,v_x_*0.75,0,$FF33241E,image_alpha)
draw_sprite_ext(spr_icon,icon_num,xx-128*v_x_,yy,v_x_*0.5,v_x_*0.5,0,c_white,image_alpha)

draw_text_kl_scale(xx-96*v_x_,yy-18*v_x_,"도전과제 달성!",32,-1,image_alpha,$FF809AC4,0,-1,font0,1/3.5*v_x_,1/3.5*v_x_,0)
draw_text_kl_scale(xx-96*v_x_,yy+4*v_x_,text,32,-1,image_alpha,$FFB3D1E8,0,-1,font0,1/4*v_x_,1/4*v_x_,0)

draw_text_kl_scale(xx-96*v_x_,yy+4*v_x_,text,32,-1,w_alpha,c_white,0,-1,font0,1/4*v_x_,1/4*v_x_,0)