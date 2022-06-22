/// @description Insert description here
// You can write your code in this editor
/*if global.in_practice = 0
{
buffer_seek(command_buffer, buffer_seek_start, 0);
buffer_write(command_buffer, buffer_u8, code.DATA._RED_CIRCLE_EFFECT);
buffer_write(command_buffer, buffer_string, string(global.nickname));
buffer_write(command_buffer, buffer_string, (floor(x*100)));
buffer_write(command_buffer, buffer_string, (floor(y*100)));
buffer_write(command_buffer, buffer_string, (floor(image_xscale*100)));
buffer_write(command_buffer, buffer_string, (floor(image_yscale*100)));
buffer_write(command_buffer, buffer_string, (floor(t_scale*100)));
//send_all(//////send_all(command_buffer);
}