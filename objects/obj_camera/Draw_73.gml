/// @description Insert description here
// You can write your code in this editor
var std_value = 44
if global.show_credits > 0
{
var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])
var xxx = camera_get_view_width(view_camera[0])
var yyy = camera_get_view_height(view_camera[0])
var v_x_ = obj_camera.v_x/1280

	if global.playing_scene > 0
	{
		if global.playing_scene_black_bg < std_value
		{
		global.playing_scene_black_bg ++
		}
	global.playing_scene_black_bg += (std_value - global.playing_scene_black_bg)*0.05
	}
	else
	{
		if global.playing_scene_black_bg > 0
		{
		global.playing_scene_black_bg --
		}
	global.playing_scene_black_bg += (-1 - global.playing_scene_black_bg)*0.05
	}

	if global.playing_scene_black_bg > 0
	{
	draw_set_alpha(global.playing_scene_black_bg/(std_value))
	draw_set_color(c_black)
	draw_rectangle(xx-32,yy-32,xx+xxx+32,yy-32+global.playing_scene_black_bg*v_x_,0)
	draw_rectangle(xx-32,yy+yyy+32,xx+xxx+32,yy+yyy+32-global.playing_scene_black_bg*v_x_,0)

		if global.hp > 0 && instance_exists(player_message) && global.show_ui = 1
		{
		draw_text_kl_scale(xx+xxx-32*v_x_,yy+yyy-(-64+global.playing_scene_black_bg)*v_x_,""+string(global.skip_key_for_draw)+"키를 눌러 넘기기)",v_x_*64,-1,0.5,c_white,0,1,font0,v_x_*0.3,v_x_*0.3,0);
		}
	}
}


