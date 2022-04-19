/// @description  bloody(angle);
/// @param angle
function bloody(argument0,argument1,argument2)
{
var _my_p = get_my_player()

	if _my_p != -4
	{
		if object_index = obj_angel
		{
		var _effect = instance_create_depth(x+irandom_range(-5,5),y+128+irandom_range(-5,5),depth-1,ef_blood_2);
		_effect.image_angle = point_direction(_my_p.x,_my_p.y,argument0,argument1);
		_effect.sprite_index = blood_effect;
		_effect.spark_cre = argument2;
		}
		else
		{
		var _effect = instance_create_depth(x+irandom_range(-5,5),y+irandom_range(-5,5),depth-1,ef_blood_2);
		_effect.image_angle = point_direction(_my_p.x,_my_p.y,argument0,argument1);
		_effect.sprite_index = blood_effect;
		_effect.spark_cre = argument2;
		}
	}
}