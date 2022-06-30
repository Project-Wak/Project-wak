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







if (can_interect = 1 && keyboard_check_released(ord(string(global.skip_key)))) && interecting_now = 0
{
	if player.assult_mode <= 0
	{
	interecting_now = 1
	}
	else
	{
		if !instance_exists(check__) && message_phase = 0
		{
		var sfx = audio_play_sound(cannot_buy,0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)

		dev_mes("(전투모드 활성화 상태 중엔 상호작용할 수 없습니다)")
		}
	}
}



if interecting_now = 1
{
global.never_move = 1
global.playing_scene = 1
player.x += (x-90 - player.x)*0.1
	if global.tutorial = 0
	{
		if !audio_is_playing(interaction_bgm)
		{
		var sfx = audio_play_sound(interaction_bgm,0,0)
		audio_sound_gain(sfx,0.12*global.master_volume*2*global.bgm_volume,0)
		}
		
		if !instance_exists(check__) && message_phase = 0
		{
		global.movement_speed = 0
		player.movement_speed = 0
		global.playing_scene = 1
	
		vspeed = -4
		image_index = 1
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "형! 왔구나!"
		check__.target = id
		check__.parents = id
		player.image_xscale = -1
		}
		
		if message_phase = 1
		{
			if !instance_exists(check__)
			{
			image_index = 0
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "혹시 '프로젝트 왁'에 대해 알아?"
			check__.target = id
			check__.parents = id
			}
		}
		
		if !instance_exists(check__) && message_phase = 2
		{
		image_index = 0
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "?"
		check__.target = player.id
		check__.parents = id
		}
		
		if !instance_exists(check__) && message_phase = 3
		{
		image_index = 0
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "아 모르는구나... 그럼 내가 설명해줄게!"
		check__.target = id
		check__.parents = id
		}
		
		if !instance_exists(check__) && message_phase = 4
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "어떤 한 광기의 박사 팬치가 주인공의 모습을 본딴"
		check__.target = id
		check__.parents = id
		}
		
		if !instance_exists(check__) && message_phase = 5
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "'왁드로이드'를 만들어 세계를 파괴하려 계획하고 있어"
		check__.target = id
		check__.parents = id
		}
		
		if !instance_exists(check__) && message_phase = 6
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "!"
		check__.target = player.id
		check__.parents = id
		}
		
		if !instance_exists(check__) && message_phase = 7
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "이걸 보고 '프로젝트 왁'이라고 불러"
		check__.target = id
		check__.parents = id
		}
		
		if !instance_exists(check__) && message_phase = 8
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "형이 이 일을 알기전에 내가 미리 이를 막으려 했지만"
		check__.target = id
		check__.parents = id
		}
		
		if !instance_exists(check__) && message_phase = 9
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "왁드로이드 연구실을 지키는 '강력한 여러 기계 보스'들이 너무 강력해서 막지 못했어"
		check__.target = id
		check__.parents = id
		}
		
		if !instance_exists(check__) && message_phase = 10
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "형이 부디 나 대신 꼭 박사의 계획을 저지해줬으면 해"
		check__.target = id
		check__.parents = id
		}
		
		if !instance_exists(check__) && message_phase = 11
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "?"
		check__.target = player.id
		check__.parents = id
		}
		
		if !instance_exists(check__) && message_phase = 12
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "물론 형 혼자서 막으라는건 아니야!"
		check__.target = id
		check__.parents = id
		}
		
		if !instance_exists(check__) && message_phase = 13
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "형이 박사의 계획 저지하는 대신, 나는 옆에서 지원해줄게!"
		check__.target = id
		check__.parents = id
		}
		
		if !instance_exists(check__) && message_phase = 14
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "?"
		check__.target = player.id
		check__.parents = id
		}
		
		if !instance_exists(check__) && message_phase = 15
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "무슨 지원을 할거냐고?"
		check__.target = id
		check__.parents = id
		}
		
		if !instance_exists(check__) && message_phase = 16
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "바로 '장비 강화'야!"
		check__.target = id
		check__.parents = id
		}
		
		if !instance_exists(check__) && message_phase = 17
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "형이 나에게 필요한 재료를 조공해주면, 내가 장비를 강화시켜줄게!"
		check__.target = id
		check__.parents = id
		}
		
		if !instance_exists(check__) && message_phase = 18
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "언제든 필요하면 나에게 말을 걸어줘!"
		check__.target = id
		check__.parents = id
		}
		
		if message_phase = 19
		{
			if !instance_exists(check__)
			{
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "..."
			check__.target = player.id
			check__.parents = id
			player.image_xscale = 1
			}
		}
		else
		{
			if (x - player.x) < 300
			{
			player.movement_speed = -4
			}
		}
		
		if !instance_exists(check__) && message_phase = 20
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "아 형!"
		check__.target = id
		check__.parents = id
		player.image_xscale = -1
		}
		
		if !instance_exists(check__) && message_phase = 21
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "깜빡한게 있어!"
		check__.target = id
		check__.parents = id
		}
		
		if !instance_exists(check__) && message_phase = 22
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "?"
		check__.target = player.id
		check__.parents = id
		}
		
		if !instance_exists(check__) && message_phase = 23
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "내가 구한 정보에 의하면, 박사의 '왁드로이드'는 아직 완성되지 않았고"
		check__.target = id
		check__.parents = id
		}
		
		if !instance_exists(check__) && message_phase = 24
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "완성까지 '3일'정도 남았대!"
		check__.target = id
		check__.parents = id
		}
		
		if !instance_exists(check__) && message_phase = 25
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "그 전에 개발중인 왁드로이드를 파괴하면 박사의 계획을 저지할 수 있어"
		check__.target = id
		check__.parents = id
		}
		
		if !instance_exists(check__) && message_phase = 26
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "이 연구소 내부의 지하 깊은 곳에 왁드로이드 개발실이 있어"
		check__.target = id
		check__.parents = id
		}
		
		if !instance_exists(check__) && message_phase = 27
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "근데 각 층 마다 해당 구역을 지키는 박사가 만든 로봇들이 있는데"
		check__.target = id
		check__.parents = id
		}
		
		if !instance_exists(check__) && message_phase = 28
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "그중에도 박사의 '매우 강력한 기계 보스'들이 각 구역을 지키고 있어"
		check__.target = id
		check__.parents = id
		}
			
		if !instance_exists(check__) && message_phase = 29
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "강력한 로봇을 처치하면 조금이나마 왁드로이드의 개발을 늦출 수 있을거야!" 
		check__.target = id
		check__.parents = id
		}
		
		if !instance_exists(check__) && message_phase = 30
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "아! 참고로 지하는 밖에있는 플렛폼을 타고 내려갈 수 있어"
		check__.target = id
		check__.parents = id
		}
		
		if !instance_exists(check__) && message_phase = 31
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "그럼 잘 부탁할게! 형!"
		check__.target = id
		check__.parents = id
		}
			
		if !instance_exists(check__) && message_phase = 32
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "일단 지금은 여기까지 오느라 피곤했을테니 한숨 자는게 좋겠어"
		check__.target = id
		check__.parents = id
		}
			
		if !instance_exists(check__) && message_phase = 33
		{
		global.show_guide_mes = "피로도와 수면 시스템\n\n피로도의 경우, 시간이 지날 때마다 증가하게 되며\n피로도가 18이상이 된 경우, 플레이어의 최대 체력이 줄어들게 된다.\n이때 피로도는, 플레이어가 수면을 취함으로써 회복할수 있다.\n\n(참고로 침대와 상호작용하면 게임이 저장되니 저장이 필요하면 이용하자)"
		global.show_guide_mes_spr = 0
		global.tutorial = 1
		message_phase = 0
		can_interect = 0
		alarm[0] = 1
		}
	}
	else
	{
		if story = 0
		{
		global.playing_scene = 1
		//global.never_move = 1
			if !instance_exists(check__) && message_phase = 0
			{
				if global.choosed > 0
				{
					if global.choice_now = 0
					{
					message_phase ++
					}
			
					if global.choice_now = 1
					{
					global.playing_scene = 0
					message_phase = 0
					interecting_now = 0
					can_interect = 0
					alarm[0] = 1
					}
				global.choice = 0
				global.choosed = 0
				}
				else
				{
				global.choice += (1 - global.choice)*0.1
				global.choice_name[0] = "장비를 강화 한다"
				global.choice_name[1] = "취소 하기"
				global.choice_name[2] = -4
				}
			}
		
			if !instance_exists(check__) && message_phase = 1
			{
				if global.key_setting_message = 0
				{
				global.n_to_setting__ = 5
				global.cursor = 1
				show_debug_message("inv")
				code.option ++
				instance_create_depth(x,y,-9998,bg_upgrage)

				var __aaa = instance_create_depth(x,y,-9999,obj_n_to_setting)
				__aaa.n_to_set = 5
				}
			message_phase = 0
			alarm[0] = 1
			}
		}
		else
		{
			if !audio_is_playing(interaction_bgm)
			{
			var sfx = audio_play_sound(interaction_bgm,0,0)
			audio_sound_gain(sfx,0.12*global.master_volume*2*global.bgm_volume,0)
			}
		
			if !instance_exists(check__) && message_phase = 0
			{
			global.movement_speed = 0
			player.movement_speed = 0
			global.playing_scene = 1
	
			vspeed = -4
			image_index = 1
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "형! 왔구나!"
			check__.target = id
			check__.parents = id
			player.image_xscale = -1
			}
			
			if !instance_exists(check__) && message_phase = 1
			{
			image_index = 0
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "?"
			check__.target = player.id
			check__.parents = id
			}
		
			if !instance_exists(check__) && message_phase = 2
			{
				if !instance_exists(check__)
				{
				image_index = 0
				check__ = instance_create_depth(x,y,depth-1,player_message)
				check__.text = "아, 별건 아니고"
				check__.target = id
				check__.parents = id
				}
			}
			
			if !instance_exists(check__) && message_phase = 3
			{
				if !instance_exists(check__)
				{
				image_index = 0
				check__ = instance_create_depth(x,y,depth-1,player_message)
				check__.text = "이제 점점 지하로 갈수록 어두워 질텐데"
				check__.target = id
				check__.parents = id
				}
			}
			
			if !instance_exists(check__) && message_phase = 4
			{
				if !instance_exists(check__)
				{
				image_index = 0
				check__ = instance_create_depth(x,y,depth-1,player_message)
				check__.text = "괜찮다면, 이거 받아줄래 형?"
				check__.target = id
				check__.parents = id
				}
			}
			
			if !instance_exists(check__) && message_phase = 5
			{
				if !instance_exists(check__)
				{
				image_index = 0
				check__ = instance_create_depth(x,y,depth-1,player_message)
				check__.text = "('랜턴'을 얻었다!)"
				check__.target = player.id
				check__.parents = id
				give_item(3,0)
				}
			}
			
			if !instance_exists(check__) && message_phase = 6
			{
				if !instance_exists(check__)
				{
				image_index = 0
				check__ = instance_create_depth(x,y,depth-1,player_message)
				check__.text = "어두운 곳에 접근하게 되면, 장비로서 착용하지 않아도 자동으로 불이 켜질 거야"
				check__.target = id
				check__.parents = id
				}
			}
			
			if !instance_exists(check__) && message_phase = 7
			{
				if !instance_exists(check__)
				{
				image_index = 0
				check__ = instance_create_depth(x,y,depth-1,player_message)
				check__.text = "별거 아니지만, 도움이 됐으면 좋겠어!"
				check__.target = id
				check__.parents = id
				}
			}
			
			if !instance_exists(check__) && message_phase = 8
			{
				if !instance_exists(check__)
				{
				image_index = 0
				check__ = instance_create_depth(x,y,depth-1,player_message)
				check__.text = "아 그리고, 무기 강화 기능 안 써봤으면 지금이라도 꼭 써봐!"
				check__.target = id
				check__.parents = id
				}
			}
			
			if !instance_exists(check__) && message_phase = 9
			{
			story = 0
			message_phase = 0
			can_interect = 0
			alarm[0] = 1
			}
		}
	}
}





if abs(x - player.x) <= 32 && player.cannot_move = 0 && global.never_move = 0 && global.playing_scene = 0 && global.never_move_in_setting = 0 && global.b_alpha < 0.1
{
can_interect = 1
}
else
{
can_interect = 0
}

if global.tutorial = 0 && abs(x - player.x) <= 600
{
global.playing_scene = 1
global.never_move = 1
interecting_now = 1
story = 0
}

if global.tutorial = 1 && abs(x - player.x) <= 600 && global.item_owned[6] > 0 && global.lenturn = 0
{
global.playing_scene = 1
global.never_move = 1
interecting_now = 1
story = 1
}
