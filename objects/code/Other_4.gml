/*if (room == room_main)
{
	global.my_instance_id = instance_create_depth(2040+irandom_range(-200,200),global.p_floor,-100, obj_nope);
	with(global.my_instance_id) 
	{
	name = global.nickname;
	playerID = 0;
	soc = 0;
	instance_change(player, true);
	
	alarm[1] = 1
	}
	if (is_server) 
	{
	ds_list_add(global.clients, -1);
	}
}