/// @description Insert description here
// You can write your code in this editor
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
global.show_guide_mes = "스테이지 나가기\n\n현재 스테이지에서 나가고 싶다면 자살("+string(global.suicide_key)+"키)을 통한\n사망 회귀로 해당 스테이지를 오기 전의 과거로 돌아갈 수 있다.\n\n(자살 키는 환경설정에서 변경가능하며,\n"+string(global.suicide_key)+"키를 누르지 않아도 환경설정에서 자살할 수 있다)"
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
	global.room_brightness = 0.35
	
		if !instance_exists(check__) && message_phase = 0
		{
		global.never_move = 1
		player.image_xscale = -1
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "..."
		check__.target = player.id
		check__.parents = id
		}
		
		if !instance_exists(check__) && message_phase = 1
		{
		global.never_move = 1
		player.image_xscale = -1
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "(이전보다 가는 길이 굉장히 어두운거 같다)"
		check__.target = player.id
		check__.parents = id
		}
		
		if message_phase = 2 && !instance_exists(mob_parents)
		{
		global.never_move = 0
		var test_mob = instance_create_depth(xx-150,0+yy,player.depth+3,wak_drone)
		test_mob.image_xscale = -1.1
		test_mob.image_yscale = 1.1
		test_mob.test_mob_type = 1

		message_phase++
		}

		if message_phase = 3 && !instance_exists(mob_parents)
		{
		global.never_move = 0
		var test_mob = instance_create_depth(xx+150,0+yy,player.depth+3,wak_drone)
		test_mob.image_xscale = 1.1
		test_mob.image_yscale = 1.1
		test_mob.test_mob_type = 1

		message_phase++
		}
		
		if !instance_exists(check__) && message_phase = 4 && !instance_exists(mob_parents)
		{
		global.never_move = 1
		player.image_xscale = -1
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "..."
		check__.target = player.id
		check__.parents = id
		}
		
		
		if message_phase = 5 && !instance_exists(mob_parents)
		{
		obj_elevator.activated = 1
		message_phase ++
		}
	}
}