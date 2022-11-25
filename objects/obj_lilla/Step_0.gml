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
	if floor(image_index) = 1 || floor(image_index) = 2
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
alarm_timer = 0
attack_delay = 0
random_attack_timer = irandom_range(-300,0)
alarm_timer = 0
}

if hit_motion > 0
{
sprite_index = hurt_sprite
image_index = 0
}

if abs(movement_speed) < 0.03 && sprite_index = move_sprite
{
image_index = 0
}

if gravity = 0
{
movement_ai = 1
}



//////////////////////////////////////////ai codes//////////////////////////////////////////////
var dis__ = (x - player.x)
if dis__ = 0
{
dis__ = choose(-1,1)
}

if movement_ai > 0
{
	if attack_ = 0 && gravity <= 0
	{
	random_move_delay ++
		if random_move_delay > 20
		{
		image_xscale = sign(dis__)*abs(image_xscale)
		random_move_delay = 0
		}
	
		if abs(dis__) >= 70
		{
		movement_speed = -image_xscale;
		}
	}
}
else
{
random_move_delay ++
	if (abs(dis__) < 450 && abs(dis__) >= 250)
	{
	random_attack_timer = irandom_range(400,300)
	movement_ai = 1
	}
	
	if (abs(dis__) < 250)
	{
	movement_ai = 1
	}
	
	if random_move_delay > 60
	{
	random_move = irandom_range(-1,1)
		if random_move != 0
		{
		image_xscale = random_move*abs(image_xscale)
		}
	random_move_delay = irandom_range(-60,0)
	}
	
movement_speed = -random_move
}


if movement_ai > 0
{
	//근접 공격
	if random_attack_timer = -400 && gravity <= 0
	{
	attack_ = 1
		if (attack_delay = 1)
		{
		image_index += 0.22
		movement_speed = -0.1*sign(image_xscale)
		sprite_index = attack_sprite
			if floor(image_index) >= 6
			{
			image_index = 6
			attack_delay = 2
			}
		}
		else
		{
		image_index += 0.4
			if (image_index < 12)
			{
				if (image_index < 10 && image_index >= 8.7 && attack_delay = 2)
				{
				image_index = 9
				var effect_ = instance_create_depth(x,y+48,depth+1,down_effect)
				effect_.t_image_xscale = 0.3*13
				effect_.t_image_yscale = 0.05*13
				effect_.received = 0
				
				var effect_ = instance_create_depth(x,y,depth+1,effect_lilla_attack)
				effect_.image_xscale = image_xscale
				effect_.image_yscale = image_yscale

				var sfx = audio_play_sound(down_attack_sfx,0,0)
				audio_sound_gain(sfx,0.5*global.master_volume*2*global.sfx_volume,0)
				attack_delay = 3
				}
			}
			else
			{
				if image_index >= 17
				{
					if alarm_timer = 0
					{
					var random_val = irandom_range(120,200)
					alarm[7] = random_val;
					alarm_timer = 1
					show_debug_message("alarmed")
					}
				random_attack_timer = 0
				attack_ = 0
				}
			}
		}
	}
	
	//멀리서 때리러 돌진 공격
	if random_attack_timer >= 500
	{
	sprite_index = attack_sprite
	attack_ = 1
		if attack_delay = 0
		{
		movement_speed = -0.1*sign(image_xscale)
		image_xscale = sign(dis__)*abs(image_xscale)
		image_index = 0
		attack_delay = 1
		}

		if random_attack_timer = 500
		{
		show_debug_message(image_index)
		image_index += 0.2
			if gravity = 0 && vspeed >= 0
			{
				if image_index > 5.6
				{
				image_index = 6
				y -= 3
				vspeed = -5.3
				var sfx = audio_play_sound(down_attack_sfx,0,0)
				audio_sound_gain(sfx,0.6*global.master_volume*2*global.sfx_volume,0)
				movement_speed = sign(image_xscale)*6
				random_attack_timer++
				}
			}
		}
	
		if random_attack_timer = 501
		{
			if gravity = 0 && vspeed >= 0
			{
			image_index -= 0.28
				if image_index <= 1
				{
				y -= 1
				vspeed = -6.4
				image_index = 0
					if dis__ > 450
					{
					dis__ = 450
					}
				movement_speed = -image_xscale*abs(dis__)/20
				random_attack_timer++
				}
			}
		}
	
		if random_attack_timer = 502
		{
			if gravity = 0 && vspeed >= 0
			{
			var effect_ = instance_create_depth(x,y+48,depth+1,down_effect)
			effect_.t_image_xscale = 0.3*13
			effect_.t_image_yscale = 0.05*13
			effect_.received = 0
			
			var effect_ = instance_create_depth(x,y,depth+1,effect_lilla_attack)
			effect_.image_xscale = image_xscale
			effect_.image_yscale = image_yscale
		
			var sfx = audio_play_sound(down_attack_sfx,0,0)
			audio_sound_gain(sfx,0.5*global.master_volume*2*global.sfx_volume,0)
			random_attack_timer++
			}
			else
			{
				if image_index <= 8
				{
				image_index += 0.28
				}
				else
				{
				image_index = 8
				}
			}
		}
	
		if random_attack_timer = 503
		{
		image_index += 0.32
			if image_index > 15.5
			{
				if alarm_timer = 0
				{
				var random_val = irandom_range(120,200)
				alarm[7] = random_val;
				alarm_timer = 1
				show_debug_message("alarmed")
				}
			attack_ = 0
			random_attack_timer = irandom_range(-300,0)
			}
		}
	}
	else
	{
		if (random_attack_timer >= -300 && sprite_index = move_sprite)
		{
			if global.show_guide_mes = -4
			{
			random_attack_timer++
			}
		}
	}
	
	if (abs(dis__) < 90 && attack_delay = 0)
	{
	image_index = 0
	random_attack_timer = -400
	attack_delay = 1
	}
}



///////////////////////////////////////////////////////////////////////////////////////////////


if global.show_guide_mes = -4
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
			if test_mob_type = 0
			{
			hit_motion = 1
			alarm[4] = 30
			}
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