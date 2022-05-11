var v_x = global.camera_vx
var xx = camera_get_view_x(view_camera[0])+v_x*16
var yy = camera_get_view_y(view_camera[0])+v_x*16


//draw_text_kl_scale(room_width*0.5,room_height*0.2,"스페이스바를 눌러 서버 참가",v_x*64,-1,1,c_white,0,0,font0,v_x*0.4,v_x*0.4,0);


if playing_gameover_scene >= 120
{
	for(var i = 0; i < 10; i += 0.5)
	{
	draw_set_color(c_white)
	draw_set_alpha(i*0.03)
	draw_circle(-3,713,(playing_gameover_scene-120)*i/3,false)
	}
}


if global.fps_draw > 0
{
//draw_text_k_scale(xx,yy+v_x*160,string(global.return_player_id),v_x*64,-1,1,c_white,0,0,font0,v_x*0.35,v_x*0.35,0);

draw_text_k_scale(xx,yy+v_x*220,string(string(player.x)+" , "+string(player.y)+" / hurt : "+string(player.hurt)+" / hp : "+string(global.hp)),v_x*64,-1,1,c_white,0,-1,font0,v_x*0.35,v_x*0.35,0);
draw_text_k_scale(xx,yy+v_x*280,"(F2 to console)\n\nBest fps (maximum fps) : "+string(max_fps)+" (F1 to reset)",v_x*64,-1,1,c_white,0,-1,font0,v_x*0.35,v_x*0.35,0);
draw_text_k_scale(xx,yy+v_x*350,"accessories : "+string(global.accessories_equip[0])+" / "+string(global.accessories_equip[1])+"   fixed_camera : "+string(global.fix_camera),v_x*64,-1,1,c_white,0,-1,font0,v_x*0.35,v_x*0.35,0);
}





if global.show_ui = 1
{
var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])*0.35

draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-v_x*16,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-40*v_x,"* "+string(global.dev_message),32,-1,global.dev_message_alpha,c_gray,0,1,font0,1/3*v_x,1/3*v_x,0)
}





if instance_number(red_circle_effect) > 0
{
	if sepa_alpha <= 0
	{
	sepa_alpha = 1.3
	sepa_power = 25
	}
}

if global.awakening > 1
{
	if sepa_alpha <= 0
	{
	sepa_alpha = 1.3
	sepa_power = 5
	}
}

if global.slow_motion > 0 && global.slow_motion < 15
{
	if sepa_alpha <= 0
	{
	sepa_alpha = 1.3
	sepa_power = 25
	}
}

