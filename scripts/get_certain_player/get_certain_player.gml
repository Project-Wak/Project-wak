///@desc get_certain_player(target)
///@param target

function get_certain_player(argument0) 
{
var _check = 0
var _id = -4
	with(player)
	{
		if(name == argument0)
		{
		_check = 1
		_id = id;
		}
	}
	
	if _check = 0
	{
	return -4;
	}
	else
	{
	return _id;
	}
}
