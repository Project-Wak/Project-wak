/// @description Insert description here
// You can write your code in this editor





if cannot_step = 0
{
	if place_meeting(x,y,player) && player.charge_attack = 0 && player.spin = 0
	{
	var p_m_ins = instance_place(x,y,player)
		if (p_m_ins.object_index) = player
		{
		var __i = sign(p_m_ins.x - x)

			if __i = 0
			{
			__i = choose(-0.2,0.2)
			}
		//global.movement_speed += __i
		p_m_ins.x += __i*6
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
