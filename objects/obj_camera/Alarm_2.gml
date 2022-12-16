/// @description Insert description here
// You can write your code in this editor


if global.total_died > 10 && global.total_died%5 = 0 && !instance_exists(bangal_tree) && global.accessories_owned[14] > 0 && !instance_exists(obj_wakdroid)
{
	if !instance_exists(obj_wakdroid_ending)
	{
	instance_create_depth(player.x,player.y,depth,bangal_tree)
	}
}