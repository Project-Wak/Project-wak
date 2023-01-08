/// @description  bloody(angle);
/// @param angle
function bloody(argument0,argument1,argument2)
{
var _my_p = get_my_player()

	if _my_p != -4
	{
	var _effect = instance_create_depth(player.x+global.movement_speed+player.movement_speed,player.y+vspeed*2,player.depth-1,ef_blood_2);
	_effect.image_angle = point_direction(_my_p.x,_my_p.y,argument0,argument1);
	_effect.sprite_index = blood_effect;
	_effect.spark_cre = argument2;
	}
}