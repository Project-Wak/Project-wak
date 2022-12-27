///@desc set_value_case(value,min,max,inner)
///@param value
///@param min
///@param max
///@param inner


function set_value_case(argument0,argument1,argument2,argument3)
{
var return_value__ = argument0;

	if argument3 = true //inner
	{
		if (argument0 < argument1)
		{
		return_value__ = argument1
		}
		
		if (argument0 > argument2)
		{
		return_value__ = argument2
		}
	}
	else
	{
		if (argument0 > argument1 && argument0 < argument2)
		{
		return_value__ = argument0
		}
	}
return return_value__;
}