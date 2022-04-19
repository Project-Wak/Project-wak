function get_my_player() 
{
var _returning = -4
	with(player)
	{
		if(name == global.nickname)
		{
		_returning = id
		}
	}
return _returning;
}
