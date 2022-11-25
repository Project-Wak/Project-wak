/// @description Insert description here
// You can write your code in this editor

if room = room_sector_runaway
{
global.platform_speed = -15
}


if global.b_alpha >= 1
{
player.x = 1000
player.y = 700

global.save_point_x = 1000
global.save_point_y = 700

global.never_move = 0
global.playing_scene = 0

	if global.slow_motion > 0
	{
	phase = 0
	message_phase = 0
	instance_destroy(mob_parents)
	}
}

if room = room_sector_B03_1
{
global.room_brightness = 0.35
}


if global.slow_motion > 8000
{
slow_motioned = 1
}

if slow_motioned = 1 && global.b_alpha < 1
{
global.platform_speed = 10
slow_motioned = 0
}


var lay_id = layer_get_id("Background");
layer_hspeed(lay_id,-global.platform_speed)


if player.x >= 1140 || player.x <= 844
{
player.x += (992 - player.x)*0.1
}


player.assult_mode = 300


if global.total_died >= 3 && global.back_stage_guide = 0
{
global.show_guide_mes = "스테이지 나가기\n\n현재 스테이지에서 나가고 싶다면 자살("+string(global.suicide_key_for_draw)+"키)을 통한\n사망 회귀로 해당 스테이지를 오기 전의 과거로 돌아갈 수 있다.\n\n(자살 키는 환경설정에서 변경가능하며,\n"+string(keyconverter(global.suicide_key))+"키를 누르지 않아도 환경설정에서 자살할 수 있다)"
global.show_guide_mes_spr = 0
global.back_stage_guide = 1
}


if global.b_alpha < 0.06 && global.show_guide_mes = -4 && !instance_exists(master_volume_setting)
{
var xx = 1000
var yy = irandom_range(120,0)
	if room = room_sector_B02_1
	{
		if phase = 0 && !instance_exists(mob_parents)
		{
		var test_mob = instance_create_depth(xx+500,1280,player.depth+3,hyumpanchi_gunner)
		test_mob.image_xscale = -1
		test_mob.image_yscale = 1
		test_mob.test_mob_type = 0
		test_mob.vspeed = -19
		test_mob.alarm[11] = 1
		phase++
		}

		if phase = 1 && !instance_exists(mob_parents)
		{
		var test_mob = instance_create_depth(xx-500,1280,player.depth+3,hyumpanchi_gunner)
		test_mob.image_xscale = -1
		test_mob.image_yscale = 1
		test_mob.test_mob_type = 0
		test_mob.vspeed = -19
		test_mob.alarm[10] = 1
		phase++
		}

		if phase = 2 && !instance_exists(mob_parents)
		{
		var test_mob = instance_create_depth(xx-100,0+yy,player.depth+3,hyumpanchi_gunner)
		test_mob.image_xscale = -1
		test_mob.image_yscale = 1
		test_mob.test_mob_type = 0

		phase++
		}


		if phase = 3 && !instance_exists(mob_parents)
		{
		var test_mob = instance_create_depth(xx-100,0+yy,player.depth+3,wak_drone)
		test_mob.image_xscale = -1
		test_mob.image_yscale = 1
		test_mob.test_mob_type = 1

		phase++
		}

		if phase = 4 && !instance_exists(mob_parents)
		{
		var test_mob = instance_create_depth(xx-150,0+yy,player.depth+3,wak_turret)
		test_mob.image_xscale = -1.1
		test_mob.image_yscale = 1.1
		test_mob.test_mob_type = 1

		phase++
		}

		if phase = 5 && !instance_exists(mob_parents)
		{
		var test_mob = instance_create_depth(xx-150,0+yy,player.depth+3,wak_turret)
		test_mob.image_xscale = -1.1
		test_mob.image_yscale = 1.1
		test_mob.test_mob_type = 1

		var test_mob = instance_create_depth(xx+150,0+yy,player.depth+3,obj_lilla)
		test_mob.image_xscale = 1.1
		test_mob.image_yscale = 1.1
		test_mob.test_mob_type = 1

		phase++
		}

		if phase = 6 && !instance_exists(mob_parents)
		{
		obj_elevator.activated = 1
		phase ++
		}
	}
	
	
	if room = room_sector_B03_1
	{
		if !instance_exists(check__) && message_phase = 0
		{
		global.never_move = 1
		player.image_xscale = -1
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "..."
		check__.target = player.id
		check__.parents = id
		}
		
		if message_phase = 1 && !instance_exists(mob_parents)
		{
		global.never_move = 0
		var test_mob = instance_create_depth(xx-150,0+yy,player.depth+3,wak_drone)
		test_mob.image_xscale = -0.8
		test_mob.image_yscale = 0.8
		test_mob.test_mob_type = 1

		message_phase++
		}

		if message_phase = 2 && !instance_exists(mob_parents)
		{
		global.never_move = 0
		var test_mob = instance_create_depth(xx+150,0+yy,player.depth+3,wak_drone)
		test_mob.image_xscale = 0.8
		test_mob.image_yscale = 0.8
		test_mob.test_mob_type = 1

		message_phase++
		}
		
		
		if broken_platform = 0
		{
			if !instance_exists(check__) && message_phase = 3 && !instance_exists(mob_parents)
			{
			global.never_move = 1
			player.image_xscale = -1
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "..."
			check__.target = player.id
			check__.parents = id
			}
		
		
			if message_phase = 4 && !instance_exists(mob_parents)
			{
			obj_elevator.activated = 1
			message_phase ++
			}
		}
		else
		{
			if message_phase >= 90 && !instance_exists(mob_parents)
			{
			global.platform_speed += (0 - global.platform_speed)*0.1
			player.guarding = 1.3
			}
			
			if !instance_exists(check__) && message_phase = 3 && !instance_exists(mob_parents)
			{
			global.never_move = 1
			player.image_xscale = -1
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "..."
			check__.target = player.id
			check__.parents = id
			}
		
		
			if message_phase >= 4
			{
			global.playing_scene = 1
			global.never_move = 1
				if !instance_exists(check__) 
				{
				message_phase ++
				plusment += 0.7+plusment/100
				}
				
				if instance_exists(obj_elevator)
				{
					if message_phase >= 90
					{
					depth = obj_elevator.depth
					var xx_ = obj_elevator.x
					var yy_ = obj_elevator.y
					repeat(2)
					{
						var random_val___ = percentage_k(45)
						if random_val___ = 1
						{

						var random_val___2 = percentage_k(5)
						create_buble_effect(1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.1,0.1,$FF47BBFF,$FF4C81FF,2,$FF534CFF,xx_-18-image_xscale*5,yy_+32+image_yscale*12,obj_elevator.depth+5-random_val___2*5,0,false,false)
						}
					}
	
					var random_val___ = percentage_k(10)
					if random_val___ = 1
					{
					create_buble_effect(1.1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.07,0.07,$FF62D1F7,$FF6C60CD,2,$FF191919,xx_-18-image_xscale*5,yy_+32+image_yscale*12,obj_elevator.depth+10,1,false,false)
					}
	
					repeat(2)
					{
						var random_val___ = percentage_k(45)
						if random_val___ = 1
						{
						var random_val___2 = percentage_k(5)
						create_buble_effect(1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.1,0.1,$FF47BBFF,$FF4C81FF,2,$FF534CFF,xx_+18+image_xscale*5,yy_+32+image_yscale*12,obj_elevator.depth+5-random_val___2*5,0,false,false)
						}
					}
	
					var random_val___ = percentage_k(10)
					if random_val___ = 1
					{
					create_buble_effect(1.1,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.07,0.07,$FF62D1F7,$FF6C60CD,2,$FF191919,xx_+18+image_xscale*5,yy_+32+image_yscale*12,obj_elevator.depth+10,1,false,false)
					}
					}
					
					if message_phase > 140
					{
					obj_elevator.real_t_y += plusment+1
					}
					else
					{
					obj_elevator.y += (obj_elevator.real_t_y - obj_elevator.y)*0.1
					}
				}
				
				if message_phase > 140 && message_phase < 240
				{
				obj_elevator.activated = 1
				player.jump = 1
				player.vspeed = -1
				}
				
				if message_phase >= 240
				{
				global.t_b_alpha = -0.1
				room_goto(room_sector_B03_2_remaked)
				}
				
				
				if message_phase = 90
				{
				var a___ = audio_play_sound(guard,0,0)
				audio_sound_gain(a___,0.07*global.master_volume*2*global.sfx_volume,0)
			
				var sfx = audio_play_sound(mob_faint,0,0)
				audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
				///////////////////////////////////////////
				repeat(irandom_range(14,17))
				{
				create_buble_effect(1.2,irandom_range(0,359),0,choose(-1)*irandom_range(1,100)/7,0.08,0.08,$FF00D2FE,$FF076BFE,1.5,$FF737272,obj_elevator.x,obj_elevator.y,-room_width*1.5,0,true,false)
				}
	
				repeat(irandom_range(7,10))
				{
				create_buble_effect(1.45,irandom_range(0,359),0,choose(-1)*irandom_range(1,100)/7,0.07,0.07,c_white,$FF00D2FE,1.5,$FF342F32,obj_elevator.x,obj_elevator.y,-room_width*1.5,1,true,false)
				}
	
				view_shake(choose(0,0,0,0,1),irandom_range(10,15),choose(0,1))
				var y_set = obj_elevator.y+irandom_range(-16,16)
				repeat(8)
				{
				var _ef = instance_create_depth(obj_elevator.x,y_set,obj_elevator.depth-1,effect_spark)
				_ef.hspeed = irandom_range(5,20)*choose(-1,1)
				_ef.vspeed = irandom_range(-8,-3)
				}
				
					if !instance_exists(check__) && !instance_exists(mob_parents)
					{
					global.never_move = 1
					player.image_xscale = -1
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "!"
					check__.target = player.id
					check__.parents = id
					}
				message_phase ++
				}
			}
		}
	}
	
	
	if room = room_sector_runaway
	{
	view_shake(0.1,0.1,1)
		if !audio_is_playing(quake_sfx)
		{
		var sfx = audio_play_sound(quake_sfx,0,0)
		audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
		}
		
		
		if phase = 0 && !instance_exists(mob_parents)
		{
		var test_mob = instance_create_depth(xx+500,1280,player.depth+3,hyumpanchi_gunner)
		test_mob.image_xscale = -1
		test_mob.image_yscale = 1
		test_mob.test_mob_type = 0
		test_mob.vspeed = -19
		test_mob.alarm[11] = 1
		phase++
		}
		
		if phase = 1 && !instance_exists(mob_parents)
		{
		var test_mob = instance_create_depth(xx+150,0+yy,player.depth+3,wak_turret)
		test_mob.image_xscale = 1.1
		test_mob.image_yscale = 1.1
		test_mob.test_mob_type = 1

		phase++
		}
		
		if phase = 2 && !instance_exists(mob_parents)
		{
		var test_mob = instance_create_depth(xx+150,0+yy,player.depth+3,obj_lilla)
		test_mob.image_xscale = 1.1
		test_mob.image_yscale = 1.1
		test_mob.test_mob_type = 1

		var test_mob = instance_create_depth(xx-150,0+yy,player.depth+3,obj_lilla)
		test_mob.image_xscale = -1.1
		test_mob.image_yscale = 1.1
		test_mob.test_mob_type = 1

		phase++
		}
		
		if phase = 3 && !instance_exists(mob_parents)
		{
		var test_mob = instance_create_depth(xx+500,1280,player.depth+3,hyumpanchi_gunner)
		test_mob.image_xscale = -1
		test_mob.image_yscale = 1
		test_mob.test_mob_type = 0
		test_mob.vspeed = -19
		test_mob.alarm[11] = 1
		
		var test_mob = instance_create_depth(xx-500,1280,player.depth+3,hyumpanchi_gunner)
		test_mob.image_xscale = 1
		test_mob.image_yscale = 1
		test_mob.test_mob_type = 0
		test_mob.vspeed = -19
		test_mob.alarm[10] = 1

		phase++
		}
		
		if phase = 4 && !instance_exists(mob_parents)
		{
		obj_elevator.activated = 1
		phase ++
		}
	}
}