function send_one_ID(argument0, argument1, argument2) 
{
var type = argument0;
var val_name = argument1;
var ID = argument2;

with(player) 
{
	if(playerID == ID) 
	{
	var real_val = variable_instance_get(id, val_name);
	}
}

buffer_seek(code.one_buffer, buffer_seek_start, 0);
buffer_write(code.one_buffer, buffer_u8, DATA.ONE_DATA);

buffer_write(code.one_buffer, buffer_u8, ID);
buffer_write(code.one_buffer, buffer_u8, type);
buffer_write(code.one_buffer, buffer_string, val_name);
buffer_write(code.one_buffer, type, real_val);

//send_all(code.one_buffer);
}