/// @description Insert description here
// You can write your code in this editor
image_alpha = -10

/*buffer_seek(command_buffer, buffer_seek_start, 0);
buffer_write(command_buffer, buffer_u8, code.DATA.COMMAND);
buffer_write(command_buffer, buffer_u8, code.my_ID);
buffer_write(command_buffer, buffer_u8, code.COMM.IMAGE);
buffer_write(command_buffer, buffer_string, name);
buffer_write(command_buffer, buffer_string, sprite_index);
buffer_write(command_buffer, buffer_string, floor(image_xscale*100));
buffer_write(command_buffer, buffer_string, floor(image_yscale*100));
buffer_write(command_buffer, buffer_string, floor(image_index*100));
buffer_write(command_buffer, buffer_string, floor(image_angle*100));
buffer_write(command_buffer, buffer_string, floor(w_alpha*100));
buffer_write(command_buffer, buffer_string, floor(image_alpha*100));
//send_all(//////send_all(command_buffer);

buffer_delete(//////send_all(command_buffer);