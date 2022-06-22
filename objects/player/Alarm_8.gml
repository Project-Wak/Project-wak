/// @description Insert description here
// You can write your code in this editor
/*if global.nickname = name
{
buffer_seek(command_buffer, buffer_seek_start, 0);
buffer_write(command_buffer, buffer_u8, code.DATA.SEND_NAME);
buffer_write(command_buffer, buffer_string, playerID);
buffer_write(command_buffer, buffer_string, global.nickname);
//send_all(//////send_all(command_buffer);
}
