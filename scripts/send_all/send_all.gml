function send_all(argument0) 
{
buffer = argument0;

if(code.is_server == false) {
	network_send_packet(code.server , buffer, buffer_get_size(buffer));
}
else 
{
	for(var i = 0; i < ds_list_size(global.clients); i++) {
		var soc = global.clients[| i];
		if (soc < 0) continue;
		network_send_packet(soc , buffer, buffer_get_size(buffer));
	}
}
}