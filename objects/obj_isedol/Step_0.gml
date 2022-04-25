/// @description Insert description here
// You can write your code in this editor

if global.chunyang = 1 && image_index = 6
{
	if y > 800
	{
	y = 700
		if instance_exists(obj_wakdroid_ending)
		{
		x = xstart+600
		}
	}
}

if global.accessories_owned[2] = 1 && first_tuto = 1 && global.accessories_equip[0] < 2 && global.accessories_equip[1] < 2
{
	if player.x < 1140
	{
	player.x -= 1
	global.movement_speed = 12
	
	global.show_guide_mes = "Tab키를 눌러 방금 받은 악세사리를 착용해보자"
	global.show_guide_mes_spr = 6
	}
}

if global.real_ending = 0 && instance_exists(obj_wakdroid_ending)
{
wall_1 = instance_create_depth(1568,160,depth,obj_floor_tile3)
wall_1.image_yscale = 4.75
}
else
{
	if instance_exists(wall_1)
	{
	instance_destroy(wall_1)
	}
}

if image_index != 6
{
	if (global.accessories_owned[2] = 0 || (global.total_died >= 10 && global.accessories_owned[14] <= 0))
	{
		if abs(player.x - x) <= 64 && (global.tutorial = 1 && global.accessories_owned[2] = 0)
		{
		image_index = 0
		interecting_now = 1
		}
	
		if abs(player.x - x) <= 600 && global.total_died >= 10 && global.accessories_owned[14] = 0
		{
		image_index = 0
		interecting_now = 1
		give_healitem = 1
		}
	}
	else
	{
		if global.b_alpha >= 1
		{
			if global.n_time >= 20 && global.n_time <= 24
			{
			image_index = 0
			}

			if global.n_time >= 1 && global.n_time <= 4
			{
			image_index = 1
			}

			if global.n_time > 4 && global.n_time <= 9
			{
			image_index = 2
			}

			if global.n_time > 9 && global.n_time <= 13
			{
			image_index = 3
			}

			if global.n_time > 13 && global.n_time <= 17
			{
			image_index = 4
			}

			if global.n_time > 17 && global.n_time <= 20
			{
			image_index = 5
			}
		}
	}
}



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




if image_index = 1
{
	if global.accessories_owned[5] = 0
	{
	can_give_item = 1
	}
	else
	{
	can_give_item = 0
	}
}

if image_index = 2
{
	if global.accessories_owned[7] = 0
	{
	can_give_item = 1
	}
	else
	{
	can_give_item = 0
	}
}

if image_index = 3
{
	if global.accessories_owned[12] = 0
	{
	can_give_item = 1
	}
	else
	{
	can_give_item = 0
	}
}

if image_index = 4
{
	if global.accessories_owned[6] = 0
	{
	can_give_item = 1
	}
	else
	{
	can_give_item = 0
	}
}

if image_index = 5
{
	if global.accessories_owned[13] = 0
	{
	can_give_item = 1
	}
	else
	{
	can_give_item = 0
	}
}





if (can_interect = 1 && interecting_now = 0 && keyboard_check_released(ord(string(global.skip_key))))
{
	if player.assult_mode <= 0
	{
	interecting_now = 1
	//global.never_move = 1
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
player.x += (x-80*image_xscale - player.x)*0.1
global.never_move = 1
global.playing_scene = 1
	if image_index != 6
	{
		if !instance_exists(obj_wakdroid_ending)
		{
			if image_index = 0
			{
				if global.tutorial = 1 && global.accessories_owned[2] = 0
				{
					if !instance_exists(check__) && message_phase = 0
					{
					image_xscale = sign_k(x - player.x)
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "!"
					check__.target = player.id
					check__.parents = id
					}
		
					if !instance_exists(check__) && message_phase = 1
					{
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = string(global.nickname)+"님!"
					check__.target = id
					check__.parents = id
					}
		
					if !instance_exists(check__) && message_phase = 2
					{
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "도움이 될지 모르겠지만, 이거 받으세여"
					check__.target = id
					check__.parents = id
					}
		
					if !instance_exists(check__) && message_phase = 3
					{
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "(악세사리을 건네받았다!)"
					check__.target = player.id
					check__.parents = id
					}
		
					if !instance_exists(check__) && message_phase = 4
					{
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "그럼 화이팅!"
					check__.target = id
					check__.parents = id
					}
			
					if !instance_exists(check__) && message_phase = 5
					{
					give_item(1,2)
					can_give_item = 0
					message_phase = 0
					first_tuto = 1
					alarm[1] = 1
					}
				}
				else
				{
					if (global.total_died >= 10 && global.accessories_owned[14] = 0)
					{
						if !instance_exists(check__) && message_phase = 0
						{
						image_xscale = sign_k(x - player.x)
						check__ = instance_create_depth(x,y,depth-1,player_message)
						check__.text = "!"
						check__.target = player.id
						check__.parents = id
						}
		
						if !instance_exists(check__) && message_phase = 1
						{
						check__ = instance_create_depth(x,y,depth-1,player_message)
						check__.text = string(global.nickname)+"님! 꽤 힘들어 보이는데 괜찮으세요?"
						check__.target = id
						check__.parents = id
						}
		
						if !instance_exists(check__) && message_phase = 2
						{
						check__ = instance_create_depth(x,y,depth-1,player_message)
						check__.text = "도움이 될지 모르겠지만, 이거 받으세요!"
						check__.target = id
						check__.parents = id
						}
		
						if !instance_exists(check__) && message_phase = 3
						{
						check__ = instance_create_depth(x,y,depth-1,player_message)
						check__.text = "(악세사리을 건네받았다!)"
						check__.target = player.id
						check__.parents = id
						}
		
						if !instance_exists(check__) && message_phase = 4
						{
						check__ = instance_create_depth(x,y,depth-1,player_message)
						check__.text = "힘들 때 사용하면 체력이 오를 거예요! 화이팅!"
						check__.target = id
						check__.parents = id
						give_healitem = 0
						}
				
						if !instance_exists(check__) && message_phase = 5
						{
						give_item(1,14)
						message_phase = 0
						alarm[1] = 1
						}
					}
					else
					{
						if !instance_exists(check__) && message_phase = 0
						{
						image_xscale = sign_k(x - player.x)
						check__ = instance_create_depth(x,y,depth-1,player_message)
						check__.text = "!"
						check__.target = player.id
						check__.parents = id
						}
			
						if !instance_exists(check__) && message_phase = 1
						{
						check__ = instance_create_depth(x,y,depth-1,player_message)
						check__.text = "(아이네다)"
						check__.target = player.id
						check__.parents = id
						can_interect = 0
						}
			
						if !instance_exists(check__) && message_phase = 2
						{
						message_phase = 0
						alarm[1] = 1
						}
					}
				}
			}
		
			if image_index = 1
			{
				if can_give_item = 1
				{
					if !instance_exists(check__) && message_phase = 0
					{
					image_xscale = sign_k(x - player.x)
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "와! "+string(global.nickname)+"님!"
					check__.target = id
					check__.parents = id
					can_interect = 0
					}
			
					if !instance_exists(check__) && message_phase = 1
					{
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "도움이 될지 모르겠지만, 이거 받으세여"
					check__.target = id
					check__.parents = id
					}
			
					if !instance_exists(check__) && message_phase = 2
					{
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "(악세사리을 건네받았다!)"
					check__.target = player.id
					check__.parents = id
					}
			
					if !instance_exists(check__) && message_phase = 3
					{
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "화이팅!"
					check__.target = id
					check__.parents = id
					}
			
					if !instance_exists(check__) && message_phase = 4
					{
					give_item(1,5)
					message_phase = 0
					alarm[1] = 1
					}
				}
				else
				{
					if !instance_exists(check__) && message_phase = 0
					{
					image_xscale = sign_k(x - player.x)
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "!"
					check__.target = player.id
					check__.parents = id
					}
			
					if !instance_exists(check__) && message_phase = 1
					{
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "(주르르다)"
					check__.target = player.id
					check__.parents = id
					can_interect = 0
					}
			
					if !instance_exists(check__) && message_phase = 2
					{
					message_phase = 0
					alarm[1] = 1
					}
				}
			}
	
			if image_index = 2
			{
				if can_give_item = 1
				{
					if !instance_exists(check__) && message_phase = 0
					{
					image_xscale = sign_k(x - player.x)
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "헉! "+string(global.nickname)+"님이다!"
					check__.target = id
					check__.parents = id
					can_interect = 0
					}
			
					if !instance_exists(check__) && message_phase = 1
					{
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "선물로 이거 드릴게여"
					check__.target = id
					check__.parents = id
					}
			
					if !instance_exists(check__) && message_phase = 2
					{
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "(악세사리을 건네받았다!)"
					check__.target = player.id
					check__.parents = id
					}
			
					if !instance_exists(check__) && message_phase = 3
					{
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "화이팅!"
					check__.target = id
					check__.parents = id
					}
			
					if !instance_exists(check__) && message_phase = 4
					{
					give_item(1,7)
					message_phase = 0
					alarm[1] = 1
					}
				}
				else
				{
					if !instance_exists(check__) && message_phase = 0
					{
					image_xscale = sign_k(x - player.x)
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "!"
					check__.target = player.id
					check__.parents = id
					}
			
					if !instance_exists(check__) && message_phase = 1
					{
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "(고세구다)"
					check__.target = player.id
					check__.parents = id
					can_interect = 0
					}
			
					if !instance_exists(check__) && message_phase = 2
					{
					message_phase = 0
					alarm[1] = 1
					}
				}
			}
	
	
			if image_index = 3
			{
				if can_give_item = 1
				{
					if !instance_exists(check__) && message_phase = 0
					{
					image_xscale = sign_k(x - player.x)
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "와! "+string(global.nickname)+"님! 꿀팁 하나 알려드릴게여"
					check__.target = id
					check__.parents = id
					can_interect = 0
					}
			
					if !instance_exists(check__) && message_phase = 1
					{
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "돌진 베기 사용 도중엔 어떠한 공격도 맞지 않아요!"
					check__.target = id
					check__.parents = id
					}
			
					if !instance_exists(check__) && message_phase = 2
					{
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "아! 그리고 이건 선물이예영"
					check__.target = player.id
					check__.parents = id
					}
			
					if !instance_exists(check__) && message_phase = 3
					{
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "(악세사리을 건네받았다!)"
					check__.target = id
					check__.parents = id
					}
			
					if !instance_exists(check__) && message_phase = 4
					{
					give_item(1,12)
					message_phase = 0
					alarm[1] = 1
					}
				}
				else
				{
					if !instance_exists(check__) && message_phase = 0
					{
					image_xscale = sign_k(x - player.x)
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "!"
					check__.target = player.id
					check__.parents = id
					}
			
					if !instance_exists(check__) && message_phase = 1
					{
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "(비챤이다)"
					check__.target = player.id
					check__.parents = id
					can_interect = 0
					}
			
					if !instance_exists(check__) && message_phase = 2
					{
					message_phase = 0
					alarm[1] = 1
					}
				}
			}
	
	
			if image_index = 4
			{
				if can_give_item = 1
				{
					if !instance_exists(check__) && message_phase = 0
					{
					image_xscale = sign_k(x - player.x)
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "와! "+string(global.nickname)+"님!"
					check__.target = id
					check__.parents = id
					can_interect = 0
					}
			
					if !instance_exists(check__) && message_phase = 1
					{
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = string(global.nickname)+"님 이거 받으세영"
					check__.target = id
					check__.parents = id
					}
			
					if !instance_exists(check__) && message_phase = 2
					{
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "(악세사리을 건네받았다!)"
					check__.target = player.id
					check__.parents = id
					}
			
					if !instance_exists(check__) && message_phase = 3
					{
					give_item(1,6)
					message_phase = 0
					alarm[1] = 1
					}
				}
				else
				{
					if !instance_exists(check__) && message_phase = 0
					{
					image_xscale = sign_k(x - player.x)
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "!"
					check__.target = player.id
					check__.parents = id
					}
			
					if !instance_exists(check__) && message_phase = 1
					{
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "(징버거다)"
					check__.target = player.id
					check__.parents = id
					can_interect = 0
					}
			
					if !instance_exists(check__) && message_phase = 2
					{
					message_phase = 0
					alarm[1] = 1
					}
				}
			}
	
			if image_index = 5
			{
				if can_give_item = 1
				{
					if !instance_exists(check__) && message_phase = 0
					{
					image_xscale = sign_k(x - player.x)
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "와! "+string(global.nickname)+"님! 꿀팁 하나 알려드릴게요!"
					check__.target = id
					check__.parents = id
					can_interect = 0
					}
			
					if !instance_exists(check__) && message_phase = 1
					{
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "밤에는 몬스터들이 강력해지니 아침에 가시는걸 추천해요!"
					check__.target = id
					check__.parents = id
					}
			
					if !instance_exists(check__) && message_phase = 2
					{
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "아! 그리고 이거 받으세요! 선물입니당"
					check__.target = id
					check__.parents = id
					}
					
					if !instance_exists(check__) && message_phase = 3
					{
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "(악세사리을 건네받았다!)"
					check__.target = player.id
					check__.parents = id
					}
			
					if !instance_exists(check__) && message_phase = 3
					{
					give_item(1,13)
					message_phase = 0
					alarm[1] = 1
					}
				}
				else
				{
					if !instance_exists(check__) && message_phase = 0
					{
					image_xscale = sign_k(x - player.x)
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "!"
					check__.target = player.id
					check__.parents = id
					}
			
					if !instance_exists(check__) && message_phase = 1
					{
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "(릴파다)"
					check__.target = player.id
					check__.parents = id
					can_interect = 0
					}
			
					if !instance_exists(check__) && message_phase = 2
					{
					message_phase = 0
					alarm[1] = 1
					}
				}
			}
		}
		else
		{
			if !instance_exists(check__) && message_phase = 0
			{
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "!"
			check__.target = player.id
			check__.parents = id
			can_interect = 0
			}
		
			if !instance_exists(check__) && message_phase = 1
			{
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "헉!"
			check__.target = id
			check__.parents = id
			can_interect = 0
			}
		
			if !instance_exists(check__) && message_phase = 2
			{
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "그게 정말 사실이예요?"
			check__.target = id
			check__.parents = id
			can_interect = 0
			}
		
			if !instance_exists(check__) && message_phase = 3
			{
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "천양님이랑 팬치들한테도 미리 대피하라고 전해둘게요!"
			check__.target = id
			check__.parents = id
			can_interect = 0
			}
		
			if !instance_exists(check__) && message_phase = 4
			{
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = string(global.nickname)+"님은 빨리 왁드로이드를 처치하러 가세요!"
			check__.target = id
			check__.parents = id
			can_interect = 0
			}
			
			if !instance_exists(check__) && message_phase = 5
			{
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = string(global.nickname)+"님! 부디 무사하시길!"
			check__.target = id
			check__.parents = id
			can_interect = 0
			}
			
			if !instance_exists(check__) && message_phase = 6
			{
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "화이팅!"
			check__.target = id
			check__.parents = id
			can_interect = 0
			}
		
			if !instance_exists(check__) && message_phase = 7
			{
			global.real_ending = 1
			message_phase = 4
			alarm[1] = 1
			}
		}
	}
	else
	{
		if global.chunyang = 0
		{
			if !instance_exists(check__) && message_phase = 0
			{
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "헉!"
			check__.target = id
			check__.parents = id
			vspeed = -5
			obj_camera.tv_x = 1280*0.6
			obj_camera.tv_y = 720*0.6
			obj_camera.v_x = 1280*0.6
			obj_camera.v_y = 720*0.6
			obj_camera.t_x = x
			can_interect = 0
			}
		
			if !instance_exists(check__) && message_phase = 1
			{
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "들켜따..."
			check__.target = id
			check__.parents = id
			can_interect = 0
			}
		
			if !instance_exists(check__) && message_phase = 2
			{
			global.t_b_alpha = 2.0001
				if global.b_alpha > 2
				{
				global.t_b_alpha = -0.01
				y = 700
				player.y = 700
				obj_camera.tv_x = 1280*0.7
				obj_camera.tv_y = 720*0.7
				obj_camera.t_x = -4
				message_phase ++
				}
			}
		
			if !instance_exists(check__) && message_phase = 3
			{
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "사실..."
			check__.target = id
			check__.parents = id
			can_interect = 0
			}
		
			if !instance_exists(check__) && message_phase = 4
			{
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "형 몰래 뒤따라 여기 연구소까지 오게 됐는데"
			check__.target = id
			check__.parents = id
			can_interect = 0
			}
			
			if !instance_exists(check__) && message_phase = 5
			{
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "들켰으니 어쩔 수 없네요;;"
			check__.target = id
			check__.parents = id
			can_interect = 0
			}
			
			if !instance_exists(check__) && message_phase = 6
			{
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "다음번에 저한테 말을 거시면, 조금의 도움을 드릴게요!"
			check__.target = id
			check__.parents = id
			can_interect = 0
			}
			
			if !instance_exists(check__) && message_phase = 7
			{
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "화이팅!"
			check__.target = id
			check__.parents = id
			can_interect = 0
			}
		
			if !instance_exists(check__) && message_phase = 8
			{
			global.chunyang = 1
			message_phase = 0
			alarm[1] = 1
			}
		}
		else
		{	
			if !instance_exists(check__) && message_phase = 0
			{
			global.choice += (1 - global.choice)*0.1
			global.choice_name[0] = "체력을 강화 한다"
			global.choice_name[1] = "결투를 신청한다"
			global.choice_name[2] = -4
	
				if global.choosed > 0
				{
					if global.choice_now = 0
					{
					global.show_time = 2
					message_phase = 1
					}
			
					if global.choice_now = 1
					{
					message_phase = 3
					}
				global.choice = 0
				global.choosed = 0
				}
			}
		
			if message_phase = 1
			{
				if !instance_exists(check__)
				{
				global.show_time = 2
				check__ = instance_create_depth(x,y,depth-1,player_message)
				check__.text = ""
				check__.target = id
				check__.parents = id
				}
			
				if instance_exists(check__)
				{
				global.show_time = 2
				global.hp_upgrage_money = 2000+(global.add_max_hp*6000)
					if set_time = 0
					{
					check__.text = "<-     (취소한다)     ->"
					}
					else
					{
					check__.text = "<-     (체력 강화 하기)     ->"
					}
				
					if keyboard_check_pressed(vk_left)
					{
					set_time --
					var sfx = audio_play_sound(message_sfx,0,0)
					audio_sound_gain(sfx,0.12*global.master_volume*2*global.sfx_volume,0)
					}
		
					if keyboard_check_pressed(vk_right)
					{
					set_time ++
					var sfx = audio_play_sound(message_sfx,0,0)
					audio_sound_gain(sfx,0.12*global.master_volume*2*global.sfx_volume,0)
					}
		
					if set_time < 0
					{
					set_time = 1
					}
		
					if set_time > 1
					{
					set_time = 0
					}
				}
			}
			
			
			if !instance_exists(check__) && message_phase = 2
			{
				if set_time = 0
				{
				global.show_time = 0
				message_phase = 1
				alarm[1] = 1
				}
				else
				{
					if global.gold >= global.hp_upgrage_money
					{
					global.gold -= global.hp_upgrage_money
					global.add_max_hp ++
					global.hp += 50
					
					var sfx = audio_play_sound(critical_sfx,0,0)
					audio_sound_gain(sfx,0.01*global.master_volume*2*global.sfx_volume,0)
			
					var sfx = audio_play_sound(buy_item,0,0)
					audio_sound_gain(sfx,0.02*global.master_volume*2*global.sfx_volume,0)
					code.alarm[7] = 1
					dev_mes("강화 성공")
					}
					else
					{
					var sfx = audio_play_sound(cannot_buy,0,0)
					audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
					dev_mes("골드가 부족합니다")
					}
				message_phase = 0
				}
			}
			
			
			if !instance_exists(check__) && message_phase = 3
			{
			global.show_time = 0
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "헉!"
			check__.target = id
			check__.parents = id
			}
			
			if !instance_exists(check__) && message_phase = 4
			{
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "결투 신청하시는 거예요?"
			check__.target = id
			check__.parents = id
			}
			
			if !instance_exists(check__) && message_phase = 5
			{
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "그럼... 동전 던지기로 승부ㄱㄱ"
			check__.target = id
			check__.parents = id
			}
			
			if !instance_exists(check__) && message_phase = 6
			{
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "얼마 거실래요? 지면 잃고 이기면 2배로 드립니다"
			check__.target = id
			check__.parents = id
			}
			
			if message_phase = 7
			{
				if !instance_exists(check__)
				{
				check__ = instance_create_depth(x,y,depth-1,player_message)
				check__.text = ""
				check__.target = id
				check__.parents = id
				}
				else
				{
					if set_time != 0
					{
					check__.text = "<-     ("+string(set_time*100)+"골드를 건다)     ->"
					}
					else
					{
					check__.text = "<-     (취소 한다)     ->"
					}
				betted_gold = set_time*100
				}

				
				if keyboard_check_pressed(vk_left)
				{
				set_time --
				var sfx = audio_play_sound(message_sfx,0,0)
				audio_sound_gain(sfx,0.12*global.master_volume*2*global.sfx_volume,0)
				}
		
				if keyboard_check_pressed(vk_right)
				{
				set_time ++
				var sfx = audio_play_sound(message_sfx,0,0)
				audio_sound_gain(sfx,0.12*global.master_volume*2*global.sfx_volume,0)
				}
		
				if set_time < 0
				{
					while(true)
					{
					set_time ++
						if set_time*100 > global.gold
						{
						set_time --
						break;
						}
					}
				}
		
				if set_time*100 > global.gold
				{
				set_time = 0
				}
			}
			
			if !instance_exists(check__) && message_phase = 8
			{
				if set_time != 0
				{
				check__ = instance_create_depth(x,y,depth-1,player_message)
				check__.text = "초록색 면? 파란색 면?"
				check__.target = id
				check__.parents = id
				}
				else
				{
				global.show_time = 0
				message_phase = 0
				timer = 0
				coin_flip_speed = 0
				global.coin_flip = 0
				alarm[1] = 1
				}
			}
			
			if message_phase = 9
			{
				if !instance_exists(check__)
				{
				check__ = instance_create_depth(x,y,depth-1,player_message)
				check__.text = ""
				check__.target = id
				check__.parents = id
				}
				else
				{
					if set_time = 0
					{
					check__.text = "<-     (초록색 면에 건다)     ->"
					}
					else
					{
					check__.text = "<-     (파란색 면에 건다)     ->"
					}
				}
				
				if keyboard_check_pressed(vk_left)
				{
				set_time --
				var sfx = audio_play_sound(message_sfx,0,0)
				audio_sound_gain(sfx,0.12*global.master_volume*2*global.sfx_volume,0)
				}
		
				if keyboard_check_pressed(vk_right)
				{
				set_time ++
				var sfx = audio_play_sound(message_sfx,0,0)
				audio_sound_gain(sfx,0.12*global.master_volume*2*global.sfx_volume,0)
				}
		
				if set_time < 0
				{
				set_time = 1
				}
		
				if set_time > 1
				{
				set_time = 0
				}
			}
			
			if message_phase = 10
			{
			global.your_page = set_time
				if !instance_exists(check__)
				{
				check__ = instance_create_depth(x,y,depth-1,player_message)
				check__.text = ""
				check__.target = id
				check__.parents = id
				random_coin = percentage_k(40)
				}
			
			timer ++
			global.show_time = 3
				if timer < 700
				{
					if global.coin_flip > 1
					{
					global.coin_flip_n ++
					global.coin_flip = -1
					sfx_for_multiplayer(swing_2,0,0.1)
					}
				
					if global.coin_flip_n > 1
					{
					global.coin_flip_n = 0
					}
				global.coin_flip += coin_flip_speed
				}
				else
				{
				coin_flip_speed = 0
				global.coin_flip += (1 - global.coin_flip)*0.03
				}
			
				if coin_flip_speed < 0.33
				{
				coin_flip_speed += 0.001
				}
				
				if timer > 400 && timer < 600
				{
				coin_flip_speed += (0.03 - coin_flip_speed)*0.02
				}
				
				if timer > 600
				{
					if random_coin = 1
					{
						if set_time = global.coin_flip_n && abs(global.coin_flip-0.5) < 0.25
						{
						coin_flip_speed += (-0.1 - coin_flip_speed)*0.1
						}
					}
					else
					{
						if set_time != global.coin_flip_n && abs(global.coin_flip-0.5) < 0.25
						{
						coin_flip_speed += (-0.1 - coin_flip_speed)*0.1
						}
					}
					
					if timer > 760
					{
					message_phase = 11
					instance_destroy(check__)
					}
				}
			}
			
			if message_phase = 11 && global.show_guide_mes = -4
			{
				if set_time = global.coin_flip_n
				{
				global.show_guide_mes = "이겨따."
				global.show_guide_mes_spr = 6
				global.gold += betted_gold
				}
				else
				{
				global.show_guide_mes = "져따."
				global.show_guide_mes_spr = 6
				global.gold -= betted_gold
				}
			global.show_time = 0
			message_phase = 0
			timer = 0
			coin_flip_speed = 0
			global.coin_flip = 0
			alarm[1] = 1
			}
		}
	}
}




if abs(x - player.x) <= 32 && player.cannot_move = 0 && global.never_move = 0 && global.playing_scene = 0 && global.never_move_in_setting = 0
{
can_interect = 1
}
else
{
can_interect = 0
}

