function send_one(argument0, argument1) 
{
var type = argument0;
var val_name = argument1;
var real_val = variable_instance_get(global.my_instance_id, val_name);

buffer_seek(code.one_buffer, buffer_seek_start, 0);
buffer_write(code.one_buffer, buffer_u8, DATA.ONE_DATA);

buffer_write(code.one_buffer, buffer_u8, code.my_ID);
buffer_write(code.one_buffer, buffer_u8, type);
buffer_write(code.one_buffer, buffer_string, val_name);
buffer_write(code.one_buffer, type, real_val);

//send_all(code.one_buffer);
}