/// @description Insert description here
// You can write your code in this editor
if image_index > 6
{
image_index = 6
}

if global.tutorial != 0 && instance_exists(wall2)
{
instance_destroy(wall2)
}

if global.chunyang = 1 && image_index = 6
{
	if y > 800
	{
	y = 744
		if instance_exists(obj_wakdroid_ending)
		{
		x = xstart+600
		}
	}
}

if keep_pressing > 0
{
	if !keyboard_check(global.left_key) && !keyboard_check(global.right_key)
	{
	keep_pressing -= 5
	}
}
else
{
keep_pressing = 0
}

if ((global.accessories_owned[1] = 1 && global.none_wakgood_mode = false) || (global.accessories_owned[13] = 1 && global.none_wakgood_mode = true)) && first_tuto = 1 && global.accessories_equip[0] < 2 && global.accessories_equip[1] < 2 && global.accessories_equip[2] < 2 && global.playing_scene <= 0
{
	if player.x < 1140
	{
	player.x -= 1
	global.movement_speed = 12
	
	global.show_guide_mes = "Tab키를 눌러 방금 받은 탈리스만를 착용해보자"
	global.show_guide_mes_spr = 6
	}
}



if global.real_ending != 0
{
	if instance_exists(wall_1)
	{
	instance_destroy(wall_1)
	}
}

if image_index != 6 && !instance_number(obj_wakdroid_ending)
{
	if ((global.accessories_owned[2] = 0 && global.none_wakgood_mode = false) || (global.accessories_owned[13] = 0 && global.none_wakgood_mode = true) || (global.total_died >= 10 && global.accessories_owned[14] <= 0))
	{
		if abs(player.x - x) <= 64 && (global.tutorial = 1 && (global.accessories_owned[2] = 0 && global.none_wakgood_mode = false) || (global.accessories_owned[13] = 0 && global.none_wakgood_mode = true))
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
			
			if global.none_wakgood_mode = true
			{
			image_index = 0
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





if (can_interect = 1 && interecting_now = 0 && keyboard_check_released(global.skip_key))
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

if warning_night = 0 && global.b_alpha >= 1
{
	if player.x < 1000
	{
	do_not_warn = 1
	}
	else
	{
	do_not_warn = 0
	}
}


if image_index != 6 && !instance_exists(obj_wakdroid_ending)
{
	if global.n_night = 1 && abs(x - player.x) <= 80 && player.x > x && warning_night = 0 && do_not_warn = 0
	{
	warning_night = 1
	interecting_now = 1
	}
}





if interecting_now = 1
{
image_xscale = sign_k(x - player.x)
global.never_move = 1
global.playing_scene = 1
	if abs(player.x-x) > 80
	{
	player.image_xscale = sign_k(player.x - x)
	global.movement_speed = -7.2*player.image_xscale
	player.sprite_index = player.move_sprite
	}
	else if abs(player.x-x) < 64
	{
	player.image_xscale = -sign_k(player.x - x)
	global.movement_speed = -4*player.image_xscale
	player.sprite_index = player.move_sprite
	}
	else
	{
	player.image_xscale = -sign_k(x - player.x)
		
		if image_index != 6
		{	
			if warning_night != 1
			{
				if !instance_exists(obj_wakdroid_ending)
				{
					if image_index = 0
					{
						if global.tutorial = 1 && ((global.accessories_owned[2] = 0 && global.none_wakgood_mode = false) || (global.accessories_owned[13] = 0 && global.none_wakgood_mode = true))
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
							check__.text = "(탈리스만을 건네받았다!)"
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
							global.tutorial = 1
								if global.none_wakgood_mode = false
								{
								give_item(1,2)
								}
								else
								{
								give_item(1,13)
								}
							can_give_item = 0
							message_phase = 0
							first_tuto = 1
							alarm[1] = 1
							}
						}
						else
						{
							if (global.total_died >= 10 && global.accessories_owned[14] = 0 && global.item_owned[6] > 0 && global.b_alpha < 0.6)
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
								check__.text = "(탈리스만을 건네받았다!)"
								check__.target = player.id
								check__.parents = id
								}
		
								if !instance_exists(check__) && message_phase = 4
								{
								check__ = instance_create_depth(x,y,depth-1,player_message)
								check__.text = "힘들 때 사용하면 체력이 회복될 거예요! 화이팅!"
								check__.target = id
								check__.parents = id
								give_healitem = 0
								}
				
								if !instance_exists(check__) && message_phase = 5
								{
								give_item(1,14)
								message_phase = 0
								can_give_item = 0
								alarm[1] = 1
								}
							}
							else
							{
								if !instance_exists(check__) && message_phase = 0
								{
								image_xscale = sign_k(x - player.x)
								check__ = instance_create_depth(x,y,depth-1,player_message)
								check__.text = "근데... 저기 왼쪽 아래가 좀 수상해 보이지 않아요?"
								check__.target = id
								check__.parents = id
								}
			
								if !instance_exists(check__) && message_phase = 1
								{
								check__ = instance_create_depth(x,y,depth-1,player_message)
									if global.tutorial != 0
									{
										if global.clock <= 0
										{
										check__.text = string(global.nickname)+"님! 빨리 탈리스만 장착해보세요!"
										check__.target = id
										}
										else
										{
										check__.text = "..."
										check__.target = player.id
										}
									}
									else
									{
									check__.text = string(global.nickname)+"님! 안에서 누군가 기다리고 있으니 빨리 가보세요!"
									check__.target = id
									}
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
							check__.text = "(탈리스만을 건네받았다!)"
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
							can_give_item = 0
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
							check__.text = "(탈리스만을 건네받았다!)"
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
							can_give_item = 0
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
							check__.text = string(global.nickname)+"님! 팁하나 드릴게요!"
							check__.target = id
							check__.parents = id
							}
			
							if !instance_exists(check__) && message_phase = 1
							{
							check__ = instance_create_depth(x,y,depth-1,player_message)
							check__.text = "대쉬 도중 공격을 받게되면 스테미나가 없어도 가드 판정이 나요!"
							check__.target = id
							check__.parents = id
							can_interect = 0
							}
							
							if !instance_exists(check__) && message_phase = 2
							{
							check__ = instance_create_depth(x,y,depth-1,player_message)
							check__.text = "대쉬는 달리기 도중 일반 공격키"+string(global.a_key_for_draw)+"를 눌러 사용 가능해요!"
							check__.target = id
							check__.parents = id
							can_interect = 0
							}
			
							if !instance_exists(check__) && message_phase = 3
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
							check__.text = "돌진 베기 사용 도중엔 '어떠한 공격도' 맞지 않아요!"
							check__.target = id
							check__.parents = id
							}
			
							if !instance_exists(check__) && message_phase = 2
							{
							check__ = instance_create_depth(x,y,depth-1,player_message)
							check__.text = "아! 그리고 이건 선물이예영"
							check__.target = id
							check__.parents = id
							}
			
							if !instance_exists(check__) && message_phase = 3
							{
							check__ = instance_create_depth(x,y,depth-1,player_message)
							check__.text = "(탈리스만을 건네받았다!)"
							check__.target = player.id
							check__.parents = id
							}
			
							if !instance_exists(check__) && message_phase = 4
							{
							give_item(1,12)
							can_give_item = 0
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
							check__.text = string(global.nickname)+"님! 한가지 알려 드릴게 있어요!"
							check__.target = id
							check__.parents = id
							}
			
							if !instance_exists(check__) && message_phase = 1
							{
							check__ = instance_create_depth(x,y,depth-1,player_message)
							check__.text = "일반 공격 도중 가드를 올리면 공격이 캔슬 돼요!"
							check__.target = id
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
							check__.text = "(탈리스만을 건네받았다!)"
							check__.target = player.id
							check__.parents = id
							}
			
							if !instance_exists(check__) && message_phase = 3
							{
							give_item(1,6)
							can_give_item = 0
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
							check__.text = string(global.nickname)+"님! 팁하나 드릴게요!"
							check__.target = id
							check__.parents = id
							}
			
							if !instance_exists(check__) && message_phase = 1
							{
							check__ = instance_create_depth(x,y,depth-1,player_message)
							check__.text = "아래 베기 사용 후 땅 위에서 딜레이가 있을 때,"
							check__.target = id
							check__.parents = id
							can_interect = 0
							}
							
							if !instance_exists(check__) && message_phase = 2
							{
							check__ = instance_create_depth(x,y,depth-1,player_message)
							check__.text = "구르기나 가드, 올려 베기를 사용하면 딜레이가 캔슬 돼요!"
							check__.target = id
							check__.parents = id
							can_interect = 0
							}
			
							if !instance_exists(check__) && message_phase = 3
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
							check__.text = "(탈리스만을 건네받았다!)"
							check__.target = player.id
							check__.parents = id
							}
			
							if !instance_exists(check__) && message_phase = 4
							{
							give_item(1,13)
							can_give_item = 0
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
						if global.none_wakgood_mode = false
						{
						check__.text = "천양님이랑 팬치들한테도 미리 대피하라고 전해둘게요!"
						}
						else
						{
						check__.text = "연구소 내에 동료들에게도 미리 대피하라고 전해둘게요!"
						}
					check__.target = id
					check__.parents = id
					can_interect = 0
					}
		
					if !instance_exists(check__) && message_phase = 4
					{
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = string(global.nickname)+"님은 빨리 왁드로이드를 막으러 가세요!"
					check__.target = id
					check__.parents = id
					can_interect = 0
					}
			
					if !instance_exists(check__) && message_phase = 5
					{
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "가시기 전에, 장비 강화라던가 단단히 준비하시고 가세요!"
					check__.target = id
					check__.parents = id
					can_interect = 0
					}
			
					if !instance_exists(check__) && message_phase = 6
					{
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = string(global.nickname)+"님! 부디 무사하시길!"
					check__.target = id
					check__.parents = id
					can_interect = 0
					instance_destroy(wall_1)
					}
			
					if !instance_exists(check__) && message_phase = 7
					{
					check__ = instance_create_depth(x,y,depth-1,player_message)
					check__.text = "화이팅!"
					check__.target = id
					check__.parents = id
					can_interect = 0
					instance_destroy(wall_1)
					}
		
					if !instance_exists(check__) && message_phase = 8
					{
					instance_destroy(wall_1)
					global.real_ending = 1
					message_phase = 4
					can_interect = 0
					alarm[1] = 1
					}
				}
			}
			else
			{
				if !instance_exists(check__) && message_phase = 0
				{
				check__ = instance_create_depth(x,y,depth-1,player_message)
				check__.text = string(global.nickname)+"님!"
				check__.target = id
				check__.parents = id
				can_interect = 0
				}
		
				if !instance_exists(check__) && message_phase = 1
				{
				check__ = instance_create_depth(x,y,depth-1,player_message)
				check__.text = "?"
				check__.target = player.id
				check__.parents = id
				can_interect = 0
				}
		
				if !instance_exists(check__) && message_phase = 2
				{
				check__ = instance_create_depth(x,y,depth-1,player_message)
				check__.text = "밤에는 연구소가 더욱 어두워지고,"
				check__.target = id
				check__.parents = id
				can_interect = 0
				}
		
				if !instance_exists(check__) && message_phase = 3
				{
				check__ = instance_create_depth(x,y,depth-1,player_message)
				check__.text = "몬스터들 또한 강력해지는데..."
				check__.target = id
				check__.parents = id
				can_interect = 0
				}
		
				if !instance_exists(check__) && message_phase = 4
				{
				check__ = instance_create_depth(x,y,depth-1,player_message)
				check__.text = "한숨 주무시고, 아침에 출발하는 게 좋을 것 같아요!"
				check__.target = id
				check__.parents = id
				can_interect = 0
				}
			
				if !instance_exists(check__) && message_phase = 5
				{
				check__ = instance_create_depth(x,y,depth-1,player_message)
				check__.text = "물론 상관 없으시면, 그냥 가셔도 좋아요!"
				check__.target = id
				check__.parents = id
				can_interect = 0
				}
			
				if !instance_exists(check__) && message_phase = 6
				{
				warning_night = 2
				can_interect = 0
				message_phase = 0
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
				check__.text = string(global.nickname)+"님 몰래 뒤따라 여기 연구소까지 오게 됐는데"
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
				global.choice_name[2] = "취소 하기"
	
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
						
						if global.choice_now = 2
						{
						global.show_time = 0
						message_phase = 0
						alarm[1] = 1
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
				
						if keyboard_check_pressed(global.left_key)
						{
						set_time --
						var sfx = audio_play_sound(message_sfx,0,0)
						audio_sound_gain(sfx,0.12*global.master_volume*2*global.sfx_volume,0)
						}
		
						if keyboard_check_pressed(global.right_key)
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
					message_phase = 0
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
					message_phase = 1
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

				
					if keyboard_check(global.left_key)
					{
					keep_pressing ++
					
						if keep_pressing = 1 || keep_pressing = 40 || keep_pressing = 58 || keep_pressing = 67 || keep_pressing = 76 || keep_pressing = 82 || (keep_pressing >= 80 && keep_pressing%5 = 1)
						{
						set_time --
						var sfx = audio_play_sound(message_sfx,0,0)
						audio_sound_gain(sfx,0.12*global.master_volume*2*global.sfx_volume,0)
						}
					}
		
					if keyboard_check(global.right_key)
					{
					keep_pressing ++
					
						if keep_pressing = 1 || keep_pressing = 40 || keep_pressing = 58 || keep_pressing = 67 || keep_pressing = 76 || keep_pressing = 82 || (keep_pressing >= 80 && keep_pressing%5 = 1)
						{
						set_time ++
						var sfx = audio_play_sound(message_sfx,0,0)
						audio_sound_gain(sfx,0.12*global.master_volume*2*global.sfx_volume,0)
						}
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
				
					if keyboard_check_pressed(global.left_key)
					{
					set_time --
					var sfx = audio_play_sound(message_sfx,0,0)
					audio_sound_gain(sfx,0.12*global.master_volume*2*global.sfx_volume,0)
					}
		
					if keyboard_check_pressed(global.right_key)
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
					global.show_guide_mes = "졌다."
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
}




if abs(x - player.x) <= 32 && abs(y - player.y) < 16 && player.cannot_move = 0 && global.never_move = 0 && global.playing_scene = 0 && global.never_move_in_setting = 0
{
can_interect = 1
}
else
{
can_interect = 0
}

