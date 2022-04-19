/// @description Insert description here
// You can write your code in this editor
check_floor = -4
for(var i = 0; i < 64; i++)
{
	if place_meeting(x,y+i,floor_parents)
	{
	check_floor = y+i
	break;
	}
}


if check_floor = -4 && force_move != 0
{
x += force_move*5
}

if check_floor != -4
{
force_move = 0
}


if sprite_index = move_sprite
{
	if floor(image_index) = 3 || floor(image_index) = 9
	{
		if !audio_is_playing(footstep_sfx)
		{
		sfx_for_multiplayer(footstep_sfx,0,0.1)
		}
	}
}


if hit_motion = -1
{
sprite_index = hurt_sprite
image_index = 1
attack_ = 0
}
else if hit_motion > 0
{
sprite_index = hurt_sprite
image_index = 0
attack_ = 0
}



if abs(x - player.x) > 700
{
	if targeted != -4
	{
	targeted = -4
	}
	else
	{
	movement_speed = 0
	}
}

//////////////////////////////////////////////attack_ai///////////////////////////////////////////////////////////

if gravity = 0 && vspeed >= 0 && cannot_move = 0
{
	if targeted = -4
	{
		if abs(x - player.x) <= 450 && y+32 > player.y
		{
		targeted = player
		}
	}
	else
	{
		if attack_ = 0 && spin = 0
		{
		run_delay ++
		targeting_delay ++
		attack_delay_timer ++
		
			if abs(x - player.x) > 64
			{
				if run_delay <= 60
				{
				movement_speed += (-sign_k(image_xscale)*2 - movement_speed)*0.1
				}
				else
				{
				movement_speed += (-sign_k(image_xscale)*6 - movement_speed)*0.1
				}
			}
			
			if abs(x - player.x) <= 160
			{
			attack_delay_timer ++
			}
			
		
			if targeting_delay >= 13
			{
			image_xscale = sign_k(x - player.x)
			targeting_delay = 0
			}
		
		
			if attack_delay_timer > 120
			{
			image_xscale = sign_k(x - player.x)
			movement_speed = -image_xscale*16
			attack_ = 1
			attack_delay_timer = irandom_range(-30,0)
			}
		}
	}
	
	if attack_ > 0
	{
	movement_speed += (0 - movement_speed)*0.03
	sprite_index = pl_move_skeleton_rush_slice_katana
	attack_ += 0.2


	image_index = attack_

		if attack_ < 2
		{
		movement_speed += (0 - movement_speed)*0.015
		}
	
		if attack_ > 3
		{
		movement_speed += (0 - movement_speed)*0.15
		}
	
		if attack_ >= 2.3 && attack_ < 2.83
		{
		movement_speed = -image_xscale*64
		attack_ = 2.83
	

		sfx_for_multiplayer(dash_attack_sfx,0,0.08)

	
			repeat(irandom_range(12,18))
			{
			randomize()
			var dust = instance_create_depth(x+irandom_range(-2,2),y+28+irandom_range(-2,2),depth+1,pepsi_effect)
			dust.image_xscale = 0.135
			dust.image_yscale = 0.135
			dust.vspeed = -irandom_range(100,200)/200
			dust.hspeed = (-movement_speed*irandom_range(10,50)/250)
			dust.image_alpha = 0.4
			}
		
			repeat(irandom_range(18,24))
			{
			randomize()
			var dust = instance_create_depth(x+irandom_range(-2,2),y+3+irandom_range(-5,5),depth+1,pepsi_effect)
			dust.image_xscale = 0.145
			dust.image_yscale = 0.145
			dust.vspeed = irandom_range(-220,100)/200
			dust.hspeed = (-movement_speed*irandom_range(10,50)/330)
			dust.image_alpha = 0.4
			}
		}
	
		if attack_ >= 5 && attack_ < 5.9
		{
		attack_ = 5.9
		}
	
		if attack_ >= 4 && attack_ < 4.04
		{
		attack_ = 4.04
		var __i = choose(-1,1)
		var bl_ef = instance_create_depth(x-movement_speed*14,y-8,depth-1,ef_blood_dash_attack_attacked)
		bl_ef.image_xscale = 2
		bl_ef.image_yscale = 0.42
		bl_ef.t_x = __i
	
		var __i = -movement_speed/25
		var bl_ef = instance_create_depth(x-movement_speed*14,y-8,depth-1,ef_blood)
		bl_ef.image_xscale = 2.3
		bl_ef.image_yscale = 0.42
		bl_ef.t_x = __i
	
		var effect_ = instance_create_depth(x-movement_speed*19,y-8,player.depth+1,down_effect)
		effect_.t_image_yscale = 0.3*3
		effect_.t_image_xscale = 0.05*3
		effect_.received = 0
	
		var effect_ = instance_create_depth(x-movement_speed*17,y-8,player.depth+1,down_effect)
		effect_.t_image_yscale = 0.15*3
		effect_.t_image_xscale = 0.025*3
		effect_.received = 0
		}

		if attack_ > 10
		{
		attack_ = 0
		cannot_move = 0
		sprite_index = move_sprite
		spin = 1
		image_index = 0
		}
	}


	////////////////////

	if spin = 0 && attack_ = 0
	{
	spin_delay++
		if abs(x - player.x) <= 128
		{
		spin_delay += (128 - abs(x - player.x))/16
		}
	}

	if spin_delay > 200
	{
	spin = 1
	spin_delay = 0
	}
}

if spin > 0
{
sprite_index = spin_sprite
spin += 0.3
cannot_move = 1
image_index = spin
	if spin = 1
	{
	sfx_for_multiplayer(spin_sfx,0,0.12)
	}


	if spin <= 11
	{
		for(var i = 0; i <= (11-spin); i++)
		{
			if !place_meeting(x-image_xscale*16,y-16,floor_parents)
			{
			x += -sign(image_xscale)*0.7
			}
			else
			{
			break;
			}
		}
	}
	
	if spin >= 11
	{
	cannot_move = 0
	sprite_index = move_sprite
	spin = 0
	spin_delay = irandom_range(-150,0)
	}
}





///////////////////////////////////////////////////////////////////////////////////////////////////////////////////



if sprite_index != hurt_sprite
{
var dis____ = movement_speed*0.7
	for(var i = abs(dis____); i > 0; i--)
	{
		if !place_meeting(x+(i+32)*sign(movement_speed),y,floor_parents)
		{
		var check_floor_exists = -4
			for(var ii = 0; ii <= 96; ii++)
			{
				if position_meeting(x+(i+24)*sign(movement_speed),y+ii,floor_parents)
				{
				check_floor_exists = 1
				break;
				}
			}
		
			if check_floor_exists != -4
			{
			x += i*sign(movement_speed)
			}
			else
			{
			movement_speed = 0
			}
		break;
		}
		else
		{
		movement_speed = 0
			if attack_ = 0
			{
			t_x = player.x
			}
		}
	}
}




if check_floor != -4 && knocked_down_ef = 0
{
movement_speed += (0 - movement_speed)*0.05
}


if hit_motion > 0
{
sprite_index = hurt_sprite
}
else
{
	if hit_motion != -1
	{
		if attack_ = 0 && spin = 0
		{
		sprite_index = move_sprite
		}
	}
}

if hit_cooltime = 0 && gravity_ignore = 0
{
	if place_meeting(x,y+1,floor_parents) || place_meeting(x,y+vspeed,floor_parents)
	{
	gravity = 0
	vspeed = 0
	y = y+vspeed
		if hit_stand_up = 1
		{
		hit_stand_up = 0
		alarm[2] = 45
		}
	}
	else
	{
	gravity = 0.2
	}
}

if place_meeting(x,y+1.3,floor_parents)
{
	if hit_motion > 0 && knocked_down_ef = 0
	{
	hit_motion = -1
	alarm[4] = 30
	}
}
else
{
	if !place_meeting(x,y+1.3,floor_parents)
	{
		if hit_motion != 1 && knocked_down_ef = 0
		{
		hit_motion = 1
		alarm[4] = 30
		}
	}
}


t_x = x
repeat(100)
{
	if place_meeting(x,y+0.2,floor_parents)
	{
	y -= 0.1
		if hit_stand_up = 1
		{
		hit_stand_up = 0
		alarm[2] = 45
		}
	}
	else
	{
	break;
	}
}

if sprite_index = move_sprite
{
	if abs(movement_speed) < 4
	{
	image_index += abs(movement_speed)*0.12
	}
	else
	{
	image_index += 4*0.12
	}
}