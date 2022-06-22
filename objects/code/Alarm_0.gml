/// @description Insert description here
// You can write your code in this editor
var _check_same_nickname = 0
with(player)
{
	if name = global.nickname
	{
	_check_same_nickname ++;
	}
}

if _check_same_nickname >= 2
{
	with(player)
	{
	image_alpha = -10
	}

global.t_b_alpha = 2
alarm[3] = 60
}

if global.build_ver != global.server_build_ver
{
	with(player)
	{
	image_alpha = -10
	}
global.t_b_alpha = 2
alarm[3] = 60
}

if global.ban_from_server > 0
{
	with(player)
	{
	image_alpha = -10
	}
global.t_b_alpha = 2
alarm[3] = 60
}