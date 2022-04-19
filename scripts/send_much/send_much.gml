function send_much() 
{
var size = ds_list_size(list_names);
var var_name = ""; 
var	real_var = 0;
var type = 0;

buffer_seek(much_buffer, buffer_seek_start, 0);
buffer_write(much_buffer, buffer_u8, DATA.MUCH_DATA);

buffer_write(much_buffer, buffer_u8, my_ID);
buffer_write(much_buffer, buffer_u8, size);

for(var i = 0; i < size; i++) {
	var_name = list_names[|i];
	real_var = list_vals[|i];
	type = list_types[|i];
	
	buffer_write(one_buffer, buffer_u8, type);
	buffer_write(much_buffer, buffer_string, var_name);
	buffer_write(much_buffer, type, real_var);
}

network_send_packet(0 , much_buffer, buffer_get_size(much_buffer));

ds_list_clear(list_names);
ds_list_clear(list_vals);
ds_list_clear(list_types);
}