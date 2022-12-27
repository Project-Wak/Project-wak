///@param ignore_shild
///@param dmg


function hp_minus_for_mob(argument0,argument1)
{
	if image_xscale = 3
	{
	damage_calcul__ += argument1;
	}
	
	if place_meeting(x,y,effect_attack4) || place_meeting(x,y,effect_attack1)
	{
	var _ins = instance_create_depth(player.x-player.image_xscale*32,player.y,player.depth-1,effect_saber)
	_ins.image_xscale = player.image_xscale
	}
	
	
	
	var random_val = percentage_k(global.critical_plus*100)
	if random_val = 0
	{
	random_val = 1
	}
	else
	{
	random_val = 1.25
	var _ins = instance_create_depth(player.x-player.image_xscale*32,player.y,player.depth-1,effect_saber)
	_ins.image_xscale = player.image_xscale
	}
	
	var armor__ = armored_level
	if argument0 = 1
	{
	armor__ = 1
	}
	
	
	
	var damage_calcul = ((((argument1+global.weapon_upgraded[global.n_sword]*3)*random_val)/armor__)*global.damage_plus);

	
	if argument1 <= 0
	{
	random_val = 0
	view_shake(2,2,1)
	}
	
	if argument1 > 0
	{
	var __dmg_decrease = global.replayed*0.7
	if __dmg_decrease < 1
	{
	__dmg_decrease = 1
	}
	hp -= damage_calcul/__dmg_decrease
	damaged_time = 0
	var d_ef = instance_create_depth(x,y,depth-1,draw_hp_m)
	d_ef.d_text = round(damage_calcul)
	d_ef.target = id
	
	
	
		if argument1 <= argument1
		{
		d_ef.image_blend = $FF2019FF
		d_ef.image_xscale = 1.2
		d_ef.image_yscale = 1.2
		view_shake(3,4,2)
		}
		else
		{
		var sfx = audio_play_sound(critical_sfx,0,0)
		audio_sound_gain(sfx,0.05*global.master_volume*2*global.sfx_volume,0)

		d_ef.image_blend = c_red
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
		global.w_alpha = 0.15
		}
	}





	if argument1 > 0
	{
	global.rage_gauge += damage_calcul/19/(1+instance_exists(effect_special_skill_sec)+instance_exists(effect_special_skill))
		if global.awakening > 1 && global.stop_awakening = 0
		{
		global.awakening += 0.1/(1+instance_exists(effect_special_skill_sec)+instance_exists(effect_special_skill))
		}
	}




	if global.awakening > 1 && argument1 > 0
	{
	global.awakening += 0.0011
	}


}
