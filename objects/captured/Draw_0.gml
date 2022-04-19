/// @description Insert description here
// You can write your code in this editor
var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])
var cm_vx = obj_camera.v_x/1280

draw_set_alpha(image_alpha*0.8)
draw_set_color(c_black)
draw_rectangle(xx+cm_vx*320,yy-cm_vx*210,xx-10,yy,0)

draw_text_kl_scale(xx+cm_vx*4,yy-cm_vx*200,"*스크린샷 저장 완료! ["+string(file_name)+"]",16,999,image_alpha,$FFF7D06D,0,-1,font0,1/3.5*cm_vx,1/3.5*cm_vx,image_angle)

draw_text_kl_scale(xx+cm_vx*4,yy-cm_vx*44,"저장 위치 : \n\n\n%localappdata%\\Hyumpanchi_of_Woowakgood_n_ver",16,1500,image_alpha,c_white,0,-1,font0,1/5*cm_vx,1/5*cm_vx,image_angle)
draw_text_kl_scale(xx+cm_vx*4,yy-cm_vx*44,"\n\n\n\n\n\n\n(F11키를 눌러 저장 위치 복사)",16,1500,image_alpha,c_yellow,0,-1,font0,1/5*cm_vx,1/5*cm_vx,image_angle)

if sprite_exists(sprite_)
{
draw_sprite_ext(sprite_,0,xx+cm_vx*4,yy-cm_vx*162,0.1*cm_vx,0.1*cm_vx,0,c_white,image_alpha)
}