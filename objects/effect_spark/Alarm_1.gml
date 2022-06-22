/// @description Insert description here
// You can write your code in this editor
if instance_number(effect_spark) > 15
{
instance_destroy()
}

if global.graphics_for_code <= 2
{
var random_val = percentage_k(global.graphics_for_code*50)
	if random_val = 0
	{
	instance_destroy()
	}
}