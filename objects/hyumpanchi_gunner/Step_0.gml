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
		var sfx = audio_play_sound(footstep_sfx,0,0)
		audio_sound_gain(sfx,(1 - point_distance(x,y,player.x,player.y)/64)*0.2*global.master_volume*2*global.sfx_volume,0)
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



//////////////////////////////////////////////attack_ai///////////////////////////////////////////////////////////

if gravity = 0 && vspeed >= 0 && cannot_move = 0
{
	if targeted = -4
	{
		if abs(x - player.x) <= 350
		{
		targeted = player
		}
	}
	else
	{
	targeting_delay ++
	movement_speed = -sign_k(image_xscale)*2
		if targeting_delay >= 30
		{
		image_xscale = sign_k(x - player.x)
		targeting_delay = 0
		}
	}
	
	if attack_ > 0
	{
	attack_ ++
	image_xscale = sign_k(x - player.x)
	

		if attack_%5 = 0
		{
		//var angle__ = point_direction(x,y+9,targeted.x,targeted.y)
		var bullet__ = instance_create_depth(x,y+irandom_range(-1,1),depth+1,obj_bullet)
		bullet__.bullet_speed = -12*sign(image_xscale);
		}
		
		if attack_ >= 19
		{
		attack_ = 0
		}
	}


	////////////////////

	if spin = 0 && attack_ = 0
	{
	spin_delay++
		if abs(x - player.x) <= 128
		{
		spin_delay += 0.5
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
	attack_ = 1
	sfx_for_multiplayer(gun_sfx,0,0.3)
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
image_index += abs(movement_speed)*0.12
}