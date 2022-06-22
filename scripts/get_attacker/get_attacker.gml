// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_attacker(argument0)
{
	if instance_exists(argument0)
	{
	var _attacker = argument0.attack_owner;
	return _attacker;
	}
}