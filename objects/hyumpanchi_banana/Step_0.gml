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
}
else if hit_motion > 0
{
sprite_index = hurt_sprite
image_index = 0
}







	if place_meeting(x+movement_speed*0.7-16*image_xscale,y+1,floor_parents)
	{
		if !place_meeting(x-image_xscale*16,y-1,floor_parents)
		{
		x += movement_speed*0.7
		}
	}
	else
	{
		movement_speed = 0
		if attack_ = 0
		{
		t_x = player.x
		image_index = 0
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
		if attack_ = 0
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
