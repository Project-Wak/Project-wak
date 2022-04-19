/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y+1,floor_parents)
{
gravity = 0
vspeed = 0
}
else
{
gravity = 0.23
}

repeat(100)
{
	if place_meeting(x,y+0.2,floor_parents)
	{
	y -= 0.1
	}
	else
	{
	break;
	}
}











if interecting_now = 1
{
global.never_move = 1
global.playing_scene = 1

	if !instance_exists(check__) && message_phase = 0
	{
	image_index = 1
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "..."
	check__.target = player.id
	check__.parents = id
	player.image_xscale = -1
	}
	
	if !instance_exists(check__) && message_phase = 1
	{
	image_xscale = 1
	vspeed = -4
	image_index = 1
	global.show_guide_mes_spr = 6
	global.show_guide_mes = "(박사의 계획은 성공적으로 저지된듯 하다)"
	}
	
	if message_phase = 2
	{
	obj_camera.t_x = x
	obj_camera.x += (x - obj_camera.x)*0.1
	player.guarding = 1.8
	}
	
	if global.show_guide_mes = -4 && message_phase = 2
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "(자폭 시스템를 가동합니다)"
	check__.target = id
	check__.parents = id
	}
	
	if message_phase = 3
	{
	obj_camera.t_x = player.x
	obj_camera.x += (x - obj_camera.x)*0.1
	player.guarding = 1.8
	}
	
	if !instance_exists(check__) && message_phase = 3
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "!"
	check__.target = player.id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 4
	{
	global.choice += (1 - global.choice)*0.1
	global.choice_name[0] = "시계를 던져 자폭 단계의 왁드로이드를 과거로 보내버린다"
	global.choice_name[1] = "일부러 폭발에 휘말려 시계를 이용해 과거로 되돌아간다"
	global.choice_name[2] = "연구소 밖으로 도망 간다"
	
		if global.choosed > 0
		{
			if global.choice_now = 0
			{
			message_phase = 5
			}
			
			if global.choice_now = 1
			{
			message_phase = 30
			}
			
			if global.choice_now = 2
			{
			message_phase = 50
			}
		global.choice = 0
		global.choosed = 0
		}
	}
	
	//엔딩1 - 소멸 엔딩
	if !instance_exists(check__) && message_phase = 5
	{
	//시계 던지는 연출
	}
	
	if !instance_exists(check__) && message_phase = 6
	{
	global.show_guide_mes_spr = 6
	global.show_guide_mes = "(성공적으로 자폭 직전의 왁드로이드는 과거로 가버린듯 하다)"
	message_phase++
	}
	
	if global.show_guide_mes = -4 && message_phase = 7
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "!"
	check__.target = player.id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 8
	{
	global.show_guide_mes_spr = 6
	global.show_guide_mes = "(몸이 점점 사라지고 있다)"
	message_phase++
	}
	
	if global.show_guide_mes = -4 && message_phase = 9
	{
	global.show_credits = 1
	global.credit_b_alpha += 0.001
	}
	
	

	//check__ = instance_create_depth(x,y,depth-1,player_message)
	//check__.text = "(과거로 보내버린 왁드로이드가 폭발하여, 과거의 자신이 폭발에 휘말려 사망한듯 하다)"
	//check__.target = player.id
	//check__.parents = id

	//check__ = instance_create_depth(x,y,depth-1,player_message)
	//check__.text = "(과거가 존재하지 않으므로, 현재의 나는 존재할 수 없다)"
	//check__.target = player.id
	//check__.parents = id
	

	
	//엔딩2 - 노멀 엔딩
	if !instance_exists(check__) && message_phase = 30
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "..."
	check__.target = player.id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 31
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "(왁드로이드의 자폭으로 인해 폭발하는 연구소)"
	check__.target = player.id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 32
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "(그리고, 이를 모르는 이세돌 멤버들과 팬치들, 천양이가 폭발에 휘말릴 것이다)"
	check__.target = player.id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 33
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "(답은 한가지 밖에 없다)"
	check__.target = player.id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 34
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "(되돌려야만 한다)"
	check__.target = player.id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 35
	{
	player.suicide = 1
	player.suicide_sfx = 0
	}
	
	
	//엔딩3 - 도망자 엔딩
	if !instance_exists(check__) && message_phase = 50
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "..."
	check__.target = player.id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 51
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "!"
	check__.target = player.id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 52
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "(중요한 사실을 간과했다!)"
	check__.target = player.id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 53
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "(왁드로이드의 자폭에 대한 사실을 모르는)"
	check__.target = player.id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 54
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "(이세돌 맴버들과 팬치들, 그리고 천양이는 폭발에 휘말려 버렸다)"
	check__.target = player.id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 55
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "..."
	check__.target = player.id
	check__.parents = id
	}
	
	//엔딩 선택
	if !instance_exists(check__) && message_phase = 56
	{
	global.choice += (1 - global.choice)*0.1
	global.choice_name[0] = "Re:wind시계를 이용한다"
	global.choice_name[1] = "아무것도 하지 않는다"
	global.choice_name[2] = -4
	
		if global.choosed > 0
		{
			if global.choice_now = 0
			{
			message_phase = 57
			}
			
			if global.choice_now = 1
			{
			message_phase = 70
			}
		global.choice = 0
		global.choosed = 0
		}
	}
	
	//사망 회귀 엔딩
	if !instance_exists(check__) && message_phase = 57
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "..."
	check__.target = player.id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 58
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "(이 상황을 바꾸기 위해선)"
	check__.target = player.id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 58
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "(되돌려야만 한다)"
	check__.target = player.id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 59
	{
	player.suicide = 1
	player.suicide_sfx = 0
	}
	
	//도망자 엔딩
	if !instance_exists(check__) && message_phase = 70
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "..."
	check__.target = player.id
	check__.parents = id
	}
}


if cre_boss = 1
{
	if !instance_exists(obj_wakdroid)
	{
	var test_mob = instance_create_depth(5703,2327,player.depth+3,obj_wakdroid)
	test_mob.image_xscale = 1
	test_mob.image_yscale = 1
	test_mob.test_mob_type = 1
	cre_boss = 0
	}
}



if player.x > 5000 && global.never_move = 0 && global.playing_scene = 0 && global.ending_story = 0
{
interecting_now = 1
global.ending_story = 1
}
else
{
can_interect = 0
}


