/// @description Insert description here
// You can write your code in this editor
if abs(player.x - x) <= 128 && abs(player.y - y) < 250
{
	if !instance_exists(global.boss_target) && player.assult_mode <= 0
	{
		if room = tuto_room
		{
			if global.n_sword > 0 && instance_number(draw_key_) <= 0
			{
			opened = 1
			}
		}
		else
		{
		opened = 1
		}
	}
	else
	{
		if abs(x - player.x) > 120
		{
		opened = 0
		}
	}
}
else
{
	if opened = 1 && global.can_close = 1
	{
		if abs(x - player.x) > 120
		{
		opened = 0
		}
	}
}

if opened = 1
{
y += (ystart-260 - y)*0.08
}
else
{
y += (ystart - y)*0.08
}

