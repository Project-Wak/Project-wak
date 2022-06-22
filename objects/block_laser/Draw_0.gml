/// @description Insert description here
// You can write your code in this editor
if !place_meeting(x,y,obj_wak_doo)
{
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*0.03,image_yscale*0.06,0,c_black,image_alpha*0.5)
}
//$FFBDA6EE 연


//$FF5B14EE
draw_set_color(color_)
draw_set_alpha(image_alpha*0.6)
draw_line_width(x,y,x2,y2,width_*1.4*global.light_scaling*self_scaling)
draw_set_color(color_)
draw_set_alpha(image_alpha*0.6)
draw_circle(x2,y2,1.2*width_*global.light_scaling*self_scaling*0.92,false)


draw_set_color(c_white)
draw_set_alpha(image_alpha*0.6)
draw_line_width(x,y,x2,y2,width_*global.light_scaling*self_scaling*0.5)
draw_set_color(c_white)
draw_set_alpha(image_alpha*0.6)
draw_circle(x2,y2,1.1*width_*global.light_scaling*self_scaling*0.7,false)

draw_set_color(c_white)
draw_set_alpha(image_alpha*0.9)
draw_line_width(x,y,x2,y2,width_*global.light_scaling*self_scaling*0.27)
draw_set_color(c_white)
draw_set_alpha(image_alpha*0.9)
draw_circle(x2,y2,width_*global.light_scaling*self_scaling*0.53,false)







//draw_set_font(dev_font)
//draw_text(x,y,string(width_)+" / "+string(self_scaling))