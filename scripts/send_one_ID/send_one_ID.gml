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

//send_all(code.one_buffer);
}