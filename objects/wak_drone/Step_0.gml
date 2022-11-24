/// @description Insert description here
// You can write your code in this editor
check_floor = -4
for(var i = 0; i <= 160; i++)
{
	if place_meeting(x,y+i,floor_parents)
	{
	check_floor = y+i
	break;
	}
}


//////////////////////////////////////////attack ai/////////////////////////////////////////
timer_ ++

if timer_ > 100
{
random_laser_move_set *= -1
	if (targeted != -4 || targeted > 51)
	{
		if timer_ = 91
		{
		sfx_for_multiplayer(gun_sfx,0,0.3)
		}
		
		if timer_%5 = 0
		{
		var bullet__ = instance_create_depth(x,y+irandom_range(-4,4),depth+1,obj_bullet)
		bullet__.bullet_speed = 13;
		bullet__.direction = point_direction(x,y,player.x,player.y)
		}
		
		if timer_ >= 121
		{
		timer_ = 0
		}
	}
	else
	{
	timer_ = 0
	}
}

random_laser_move += (random_laser_move_set*45 - random_laser_move)*0.05

if timer_%2 = 0
{
	if (sign(x - player.x) = sign(image_xscale) && point_distance(x,y,player.x,player.y) < laser_dis)
	{
		if targeted = -4
		{
		targeted = player
		timer_ = 30
		}
	}
	else
	{
	targeted = -4
	}
}


////////////////////////////////////////////////////////////////////////////////////////////

var dis____ = movement_speed*0.7
for(var i = abs(dis____); i > 0; i--)
{
	if !place_meeting(x+(i+32)*sign(movement_speed),y,floor_parents)
	{
		if check_floor != -4
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
	
	if check_floor = -4 && force_move = 0
	{
	gravity = 0.1
	}
	else
	{
	vspeed += (0 - vspeed)*0.3
	gravity = 0
	}
	
	if hit_stand_up = 1
	{
	hit_stand_up = 0
	alarm[2] = 45
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