///@param soundid
///@param priority
///@param volume
function sfx_for_multiplayer(argument0, argument1, argument2) 
{
var can_not_play = 0
	if (global.n_sword = 6 && (argument0 = swing_lightsaber_sfx1 || argument0 = swing_lightsaber_sfx2 || argument0 = swing_lightsaber_sfx3)) || global.slow_motion > 0 || audio_is_playing(ending_cinematic)
	{
	can_not_play = 1
	}
	
	if can_not_play = 0
	{
	var my_p = get_my_player()
	var sfx = audio_play_sound(argument0,argument1,0)

	if my_p != -4 && instance_exists(my_p)
	{
	audio_sound_gain(sfx,(1-point_distance(my_p.x,my_p.y,x,y)/320)*argument2*global.master_volume*2*global.sfx_volume,0)
	}

	if argument0 = global.hit_sfx_1 || argument0 = global.hit_sfx_2 || argument0 = global.hit_sfx_3
	{
	var sfx = audio_play_sound(sparking_sound,0,0)
	audio_sound_gain(sfx,(1-point_distance(my_p.x,my_p.y,x,y)/320)*0.4*global.master_volume*2*global.sfx_volume,0)
	}

	//buffer_seek(command_buffer, buffer_seek_start, 0);
	//buffer_write(command_buffer, buffer_u8, code.DATA.COMMAND);
	//buffer_write(command_buffer, buffer_u8, code.my_ID);
	//buffer_write(command_buffer, buffer_u8, code.COMM.SFX);
	//buffer_write(command_buffer, buffer_string, global.nickname);
	//buffer_write(command_buffer, buffer_string, argument0);
	//buffer_write(command_buffer, buffer_string, argument1);
	//buffer_write(command_buffer, buffer_string, floor(argument2*100));
	//buffer_write(command_buffer, buffer_string, floor(my_p.x*100));
	//buffer_write(command_buffer, buffer_string, floor(my_p.y*100));
	//////send_all(command_buffer);
	return sfx;
	}
return -4;
}
