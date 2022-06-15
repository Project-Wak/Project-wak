function hp_minus_for_player(argument0,argument1) 
{
bloody(x,y,1)
var img_bnd = c_white
var argu_0 = argument0
var random_plus_damage = global.n_night*15
var using_special_skill = sign(player.attack_laser+player.attack_laser_sec)

var dmg_min = 1
	if using_special_skill = 1
	{
	dmg_min = 0
	}

	
var calcul_damage = ((((argu_0+random_plus_damage)/(global.max_armor_plus))*global.difficulty)/global.super_easy)


	if !instance_exists(obj_wakdroid_ending)
	{
	player.assult_mode = 600
	var d_ef = instance_create_depth(player.x,player.y,depth-1,draw_hp_m)
	d_ef.d_text = round(calcul_damage)*dmg_min
	d_ef.target = id


		if calcul_damage*dmg_min <= argu_0
		{
		img_bnd = $FF2019FF
		d_ef.image_blend = img_bnd
		d_ef.image_xscale = 1.2
		d_ef.image_yscale = 1.2
		view_shake(3,4,2)
		}
		else
		{
		var sfx = audio_play_sound(critical_sfx,0,0)
		audio_sound_gain(sfx,0.05*global.master_volume*2*global.sfx_volume,0)

		img_bnd = c_red
		d_ef.image_blend = img_bnd
		view_shake(4,6.8,4)
		d_ef.image_xscale = 1.5
		d_ef.image_yscale = 1.5
	
	
		var __i = choose(-1,1)
		var bl_ef = instance_create_depth(x,y,depth-1,ef_blood)
		var img_scale = -__i*irandom_range(8,15)/5
		bl_ef.image_xscale = img_scale
		bl_ef.image_yscale = abs(img_scale)
		bl_ef.t_x = __i
		bl_ef.image_angle = irandom_range(-90,90)
		bl_ef.sfx_play = false
	
		var random_val_t = percentage_k(10)
	
			if random_val_t = 1
			{
			global.w_alpha = 0.1
			}
		}
	


		if global.hp > 0 && (calcul_damage*dmg_min) > 0
		{
		global.rage_gauge += 5*dmg_min



			if global.hp != code.before_hp
			{
			code.injured_effect = 1
			code.before_hp = global.hp
			}

			if calcul_damage*dmg_min <= argu_0
			{
			img_bnd = $FF1E9DFF
			d_ef.image_blend = img_bnd
			view_shake(4,0,10)
			}
			else
			{
			img_bnd = $FF2019FF
			d_ef.image_blend = img_bnd
			view_shake(4,0,15)
			}
		}
	}
	
	//if argument1.attack_owner != -4
	//{
	//buffer_seek(command_buffer, buffer_seek_start, 0);
	//buffer_write(command_buffer, buffer_u8, code.DATA.COMMAND);
	//buffer_write(command_buffer, buffer_u8, code.my_ID);
	//buffer_write(command_buffer, buffer_u8, code.COMM.ATTACKER_GET_RAGE);
	//buffer_write(command_buffer, buffer_string, argument1.attack_owner);
	//buffer_write(command_buffer, buffer_string, string(floor((calcul_damage)*4)));
	//buffer_write(command_buffer, buffer_string, string(floor((calcul_damage)*100)));
	//buffer_write(command_buffer, buffer_string, string(floor((argu_0)*100)));
	//////send_all(command_buffer);
	//}

	
	if global.playing_scene = 0
	{
	global.hp -= (calcul_damage)*dmg_min
		if instance_exists(obj_last_boss)
		{
		obj_last_boss.hp += calcul_damage/10
		}
		
		if instance_exists(obj_wakdroid)
		{
		obj_wakdroid.hp += calcul_damage/5
		}
	}
	
	if room = room_sector_B06_2
	{
	global.poisoning = 1
	}
}
