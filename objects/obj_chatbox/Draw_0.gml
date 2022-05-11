if global.show_ui = 1
{
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])
var yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-global.camera_vx*64
var v_x = global.camera_vx
x = xx
y = yy

if global.chat_activity > 0
{
draw_set_alpha(0.7)
draw_set_color(c_black)
draw_rectangle(xx-v_x*900,yy-v_x*260,xx,yy+v_x*64,false)

	for(var i = chat_line; i < 10+chat_line; i++) 
	{
	draw_text_kl_scale(xx-v_x*(600-16)-v_x*(320-16),yy+v_x*(-20-(i-chat_line)*24),chat[i],v_x*64,-1,1,c_white,-1,-1,font0,v_x*0.4,v_x*0.4,0);
	}
	
	if w_alpha > 0
	{
	var _dis_cal = abs(-v_x*260 - v_x*64)/32
	draw_set_alpha(w_alpha)
	draw_set_color(c_white)
	draw_rectangle(xx+v_x*305,yy+v_x*_dis_cal-_dis_cal*t_chat_line,xx+v_x*315,yy-v_x*_dis_cal-_dis_cal*t_chat_line,false)
	}
}
else
{
	if new_chat > 0
	{
	draw_set_alpha(0.7*alpha_for_newchat)
	draw_set_color(c_black)
	draw_rectangle(xx-v_x*320,yy+32*v_x-v_x*24*new_chat,xx,yy+v_x*64,false)

		for(var i = 0; i < new_chat; i++) 
		{
		draw_text_kl_scale(xx-v_x*(320-16),yy+32*v_x-v_x*i*24,chat[i],v_x*64,-1,alpha_for_newchat,c_white,0,-1,font0,v_x*0.3,v_x*0.3,0);
		}
	}
}
}
