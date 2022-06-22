/// @description Insert description here
// You can write your code in this editor
if instance_exists(target)
{
show_debug_message(target)
var __temp = target
var temp_2 = d_text
var _target_f = 0
var s_id = id
	with(draw_hp_m)
	{
		if (s_id != id && target = __temp)
		{
		x = s_id.x
		y = s_id.ystart
		ystart = s_id.ystart
		c = 0
		time = 0
		d_text += real(temp_2);
		_target_f = 1
		}
	}
	
	if _target_f = 1
	{
	instance_destroy()
	}
}

<<<<<<< HEAD
<<<<<<< HEAD
can_draw = 1
=======
can_draw = 1

if image_blend = $FF82FF90
{
sfx_for_multiplayer(hp_up,0,0.07)
}
>>>>>>> parent of 0c218a9 (2022_06_22)
=======
can_draw = 1
>>>>>>> parent of 828e55e (2022_06_21)
