// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param surf_id
///@param duration
function draw_screen_rgb_split(argument0,argument1)
{
//var xx = camera_get_view_x(view_camera[0])
//var yy = camera_get_view_y(view_camera[0])
var sp_p = code.sepa_power
surface_copy(argument0,0,0,application_surface)
code.sepa_power += (-0.01 - sp_p)*argument1
code.sepa_alpha += (-0.01 - sp_p)*argument1
	
	if code.sepa_alpha > 0
	{
	var s_x = -camera_get_view_x(view_camera[0])
	var s_y = -camera_get_view_y(view_camera[0])
	var c_x = v_x/1280

	var ___ran_x___ = irandom_range(-sp_p,sp_p);
	var ___ran_y___ = irandom_range(-sp_p,sp_p);
	gpu_set_colorwriteenable( true , false , false , true );
	draw_surface_ext(argument0,s_x+___ran_x___,s_y+___ran_y___,c_x,c_x,0,c_white,code.sepa_alpha)
	
	var ___ran_x___ = irandom_range(-sp_p,sp_p);
	var ___ran_y___ = irandom_range(-sp_p,sp_p);
	gpu_set_colorwriteenable( false , true , false , true );
	draw_surface_ext(argument0,s_x+___ran_x___,s_y+___ran_y___,c_x,c_x,0,c_white,code.sepa_alpha)
	
	var ___ran_x___ = irandom_range(-sp_p,sp_p);
	var ___ran_y___ = irandom_range(-sp_p,sp_p);
	gpu_set_colorwriteenable( false , false , true , true );
	draw_surface_ext(argument0,s_x+___ran_x___,s_y+___ran_y___,c_x,c_x,0,c_white,code.sepa_alpha)
	gpu_set_colorwriteenable( true , true , true , true );
	}
}