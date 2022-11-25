/// @description Insert description here

depth = -room_width*1.7




scaling_time ++

if scaling_time > 33
{
self_scaling += 0.004
}
else
{
self_scaling -= 0.004
}

if scaling_time >= 66
{
scaling_time = 0
}



image_xscale = width_*0.4
image_yscale = width_*0.55



var max_length = 3000
if damage_able > 0
{
	for(var i = 0; i < max_length; i ++)
	{
	x2 = x + lengthdir_x(i,direction)
	y2 = y + lengthdir_y(i,direction)

	length_laser = i

		if collision_point(x2,y2,floor_parents,true,0)
		{
			if image_alpha > 1
			{
			var _ef = instance_create_depth(x2,y2,depth-1,effect_spark)
			_ef.hspeed = irandom_range(-20,20)
			_ef.vspeed = irandom_range(-4,2)
			}
			
			if global.graphics_for_code >= 3
			{
				if collision_point(x2,y2,obj_floor_tile1,true,0)
				{
				instance_create_depth(x2,y2,player.depth+15,melt_effect)
				}
			}
		break;
		}

	
	
		if (instance_number(player) > 0 && player.spin <= 0 && collision_point(x2,y2,player,true,0)) && image_alpha > 0.77
		{
		var _calcul_ = sign(player.x - x)
		var guarding_now = 0
			if (_calcul_ = sign(player.image_xscale) && player.guarding > 0 && global.stamina >= 0.1)
			{
			guarding_now = 1
			}
		
			if guarding_now = 0
			{
				if player.hurt_cooltime = 0 && global.hp > 0 && player.dash_attack = 0
				{
				player.movement_speed = player.image_xscale*6
				player.vspeed = -5
				player.y -= 24
				player.hurt = 1
				player.hurt_cooltime = 30
				hp_minus_for_player(damage_able,player.id)
				var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
				audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
				}
			}
			else
			{
				if player.guard_cool_time = 0
				{
				var sfx = audio_play_sound(guard,0,0)
				audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
				
				var random_dir = -player.image_xscale
				repeat(8)
				{
				var _ef = instance_create_depth(player.x-image_xscale*4,player.y+irandom_range(-13,0),player.depth-1,effect_spark)
				_ef.hspeed = irandom_range(5,20)*random_dir
				_ef.vspeed = irandom_range(-4,2)
				}
				
				player.w_alpha = 1
				global.stamina -= 0.1
				global.rage_gauge += 1
				player.guarding = 2.5
				player.guard_cool_time = 3
				if player.charge_attack = 0
				{
				player.movement_speed = player.image_xscale*2
				}
				player.alarm[9] = 7
				}
			break;
			}
		}
	}
}
else
{
x2 = x + lengthdir_x(3000,direction)
y2 = y + lengthdir_y(3000,direction)
}
