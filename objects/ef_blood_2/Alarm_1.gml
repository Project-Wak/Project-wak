/// @description Insert description here
// You can write your code in this editor
image_angle += irandom_range(-10,10)

speed = -image_xscale

if global.graphics_for_code >= 2
{
randomize()
	repeat(irandom_range(1,3))
	{
	var _fl_blood = instance_create_depth(x,y,depth,blood_gravity)
	_fl_blood.hspeed = -(image_xscale*irandom_range(10,65)/10)
	_fl_blood.vspeed = -irandom_range(10,65)/10
	_fl_blood.sprite_index = sprite64
		if global.blood_effect > 0
		{
		_fl_blood.sprite_index = sprite64
		}
	}
}


alarm[3] = 2


