// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @param x
/// @param y
/// @param color1
/// @param color2
/// @param vspeed
/// @param hspeed
/// @param alpha_m_sp
/// @param scale_m_sp
/// @param txscale
/// @param tyscale
/// @param image_alpha
/// @param shake_ef
/// @param for_send

function cre_buble_ef(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7,argument8,argument9,argument10,argument11,argument12)
{
	if global.low_quality = 0
	{
	var depth__ = depth+13
	if instance_exists(player)
	{
	depth__ = player.depth+13
	}
	var ef__ = instance_create_depth(argument0,argument1,depth__,obj_buble_ef)
	ef__.image_blend = argument2
	ef__.color2 = argument3
	ef__.vspeed = argument4
	ef__.hspeed = argument5
	ef__.alpha_m_sp = argument6
	ef__.scale_m_sp = argument7
	ef__.txscale = argument8
	ef__.tyscale = argument9
	ef__.image_alpha = argument10
	ef__.shake_ef = argument11


	//if argument12 = 1
	//{
	//buffer_seek(code.effect_buffer, buffer_seek_start, 0);
	//buffer_write(code.effect_buffer, buffer_u8, code.DATA.COMMAND);
	//buffer_write(code.effect_buffer, buffer_u8, code.my_ID);
	//buffer_write(code.effect_buffer, buffer_u8, code.COMM.BUBLE_EFFECT);
	//buffer_write(code.effect_buffer, buffer_string, global.nickname);
	//buffer_write(code.effect_buffer, buffer_string, (floor(argument0*100)));
	//buffer_write(code.effect_buffer, buffer_string, (floor(argument1*100)));
	//buffer_write(code.effect_buffer, buffer_string, (argument2));
	//buffer_write(code.effect_buffer, buffer_string, (argument3));
	//buffer_write(code.effect_buffer, buffer_string, (floor(argument4*100)));
	//buffer_write(code.effect_buffer, buffer_string, (floor(argument5*100)));
	//buffer_write(code.effect_buffer, buffer_string, (floor(argument6*100)));
	//buffer_write(code.effect_buffer, buffer_string, (floor(argument7*100)));
	//buffer_write(code.effect_buffer, buffer_string, (floor(argument8*100)));
	//buffer_write(code.effect_buffer, buffer_string, (floor(argument9*100)));
	//buffer_write(code.effect_buffer, buffer_string, (floor(argument10*100)));
	//buffer_write(code.effect_buffer, buffer_string, (floor(argument11*100)));
	////send_all(code.effect_buffer);
	//}
	//color1 = c_white
	//color2 = c_white
	//vspeed = 0
	//hspeed = 0
	//alpha_m_sp = 1
	//scale_m_sp = 1
	//txscale = 0
	//tyscale = 0
	//fir_alpha = image_alpha
	//sec_alpha = 0
	}
}