///@param camera_zoom
///@param shake_view
///@param view_angle_shake
function view_shake(argument0, argument1, argument2) 
{
	if global.show_credits = 0
	{
	var zoom_scale = argument0*1.7
	var shake_scale = argument1*1.8
	var angle_shake_ = argument2/5
	
		global.shake_time = 0
		if shake_scale*13 < global.t_shake_x
		{
		global.t_shake_x = shake_scale*10;
		}
		else
		{
		global.t_shake_x += shake_scale*4.5;
		}

		if shake_scale*0.7 < global.t_shake_y
		{
		global.t_shake_y = shake_scale*0.9;
		}
		else
		{
		global.t_shake_y += shake_scale*0.45;
		}
		global.shake_x = choose(-1,1)
		global.shake_y = choose(-1,1)

		
		global.view_angle_ = choose(-1,1)*angle_shake_

		if instance_number(obj_camera) > 0
		{
		obj_camera.v_x -= zoom_scale*1.28
		obj_camera.v_y -= zoom_scale*0.72
		}
		
global.can_send_shake++
	//if global.in_practice = 0 && global.can_send_shake <= 15
	//{
	//buffer_seek(command_buffer, buffer_seek_start, 0);
	//buffer_write(command_buffer, buffer_u8, code.DATA.COMMAND);
	//buffer_write(command_buffer, buffer_u8, code.my_ID);
	//buffer_write(command_buffer, buffer_u8, code.COMM.VIEW_SHAKE);
	//buffer_write(command_buffer, buffer_string, global.nickname);
	//buffer_write(command_buffer, buffer_string, floor(argument0*100));
	//buffer_write(command_buffer, buffer_string, floor(argument1*100));
	//buffer_write(command_buffer, buffer_string, floor(argument2*100));
	//////send_all(command_buffer);
	//}
	}
}
