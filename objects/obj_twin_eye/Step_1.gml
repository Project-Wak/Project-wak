/// @description Insert description here
// You can write your code in this editor
if total_died_from_here > 2
{
global.guide_boss = 1
}

check_floor = -4
for(var i = 0; i <= 160; i++)
{
	if place_meeting(x,y+i,obj_floor_tile1)
	{
	check_floor = y+i
	break;
	}
}

if place_meeting(x,y,obj_twin_eye)
{
check_met_other_eye = 1
}
else
{
check_met_other_eye = 0
}


repeat(100)
{
	if place_meeting(x,y+0.2,obj_floor_tile1)
	{
	check_on_floor = 1
		if patturn != 0
		{
		y -= 0.1
		}
		else
		{
		break;
		}
	}
	else
	{
	check_on_floor = 0
	break;
	}
}


if cannot_step = 0 && ((patturn > 2 && patturn <= 2.6) || (patturn > 1 && patturn <= 1.6))
{
	if place_meeting(x,y,player) && player.charge_attack = 0 && player.spin = 0 && player.dash_attack = 0
	{
	var p_m_ins = instance_place(x,y,player)
		if (p_m_ins.object_index) = player
		{
		var __i = sign(p_m_ins.x - x)

			if __i = 0
			{
			__i = choose(-0.2,0.2)
			}
		t_x = player.x
		//global.movement_speed += __i
		global.movement_speed = __i*4
			if cannot_move = 0
			{
			cannot_move = 1
			alarm[2] = 14
			}
		}
		else
		{
			if p_m_ins.sprite_index != p_m_ins.hurt_sprite
			{
			var __i = sign(p_m_ins.x - x)

				if __i = 0
				{
				__i = choose(-0.2,0.2)
				}
			t_x = player.x
			p_m_ins.movement_speed += __i*2
				if cannot_move = 0
				{
				cannot_move = 1
				alarm[2] = 14
				}
			}
		}
	}
}