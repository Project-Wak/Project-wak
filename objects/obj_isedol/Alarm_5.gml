/// @description Insert description here
// You can write your code in this editor
hit_cooltime = 0
image_xscale = -sign_k(player.x - x)

if !instance_exists(player_message_for_audience)
{
	if image_index = 6
	{
	check__ = instance_create_depth(x,y,depth-1,player_message_for_audience)
	check__.text = "아악! 때리지마요"
	check__.target = id
	check__.parents = id
	}
	else
	{
	check__ = instance_create_depth(x,y,depth-1,player_message_for_audience)
	check__.text = "꺄악! 뭐하는 거예요!!!!"
	check__.target = id
	check__.parents = id
	}
}
alarm[6] = 120