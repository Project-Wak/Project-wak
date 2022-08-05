/// @description Insert description here
// You can write your code in this editor
if global.night_vision != 0
{
	if surface_exists(global.light_surf_nv)
	{
	var my_p = player
	var s_x = camera_get_view_x(view_camera[0])
	var s_y = camera_get_view_y(view_camera[0])
	surface_set_target(global.light_surf_nv)
	gpu_set_blendmode(bm_add);
	var xx = my_p.x - s_x
	var yy = my_p.y - s_y

		for(var i = 3; i <= 20; i += 0.5)
		{
		//var alpha_ = image_alpha/i
		var alpha_ = 0.2/i
		draw_sprite_ext(sprite173,0,xx,yy,8/i,8/i,floor(image_angle),c_white,alpha_)
		}
	gpu_set_blendmode(bm_normal)
	surface_reset_target()
	}
}


//화면 밝기
if surface_exists(global.light_surf) && global.night_vision = 0
{
var _pl_lenturn = 0
if instance_exists(player)
{
	if player.lenturn_turnon < 0
	{
	_pl_lenturn = -1
	}
	else
	{
	_pl_lenturn = player.lenturn_brightness
	}
}
surface_set_target(global.light_surf);
gpu_set_blendmode(bm_add);
draw_sprite_ext(sprite173,2,0,0,60,60,0,$ffffff,_pl_lenturn*0.05+global.room_brightness*global.brightness_setting*2.5/(global.n_night+1))
gpu_set_blendmode(bm_normal);
surface_reset_target()
}
