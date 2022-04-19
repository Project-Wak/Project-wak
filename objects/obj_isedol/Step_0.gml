/// @description Insert description here
// You can write your code in this editor

if global.accessories_owned[2] = 1 && first_tuto = 1 && global.accessories_equip[0] < 2 && global.accessories_equip[1] < 2
{
	if player.x < 1140
	{
	player.x -= 1
	global.movement_speed = 12
	
	global.show_guide_mes = "(Tab키를 눌러 방금 받은 악세사리를 착용해보자)"
	global.show_guide_mes_spr = 6
	}
}


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




if global.accessories_owned[2] = 0 && image_index = 0
{
can_give_item = 1
}
else
{
can_give_item = 0
}

if global.accessories_owned[5] = 0 && image_index = 1
{
can_give_item = 1
}
else
{
can_give_item = 0
}

if global.accessories_owned[7] = 0 && image_index = 2
{
can_give_item = 1
}
else
{
can_give_item = 0
}

if global.accessories_owned[12] = 0 && image_index = 3
{
can_give_item = 1
}
else
{
can_give_item = 0
}

if global.accessories_owned[6] = 0 && image_index = 4
{
can_give_item = 1
}
else
{
can_give_item = 0
}

if global.accessories_owned[13] = 0 && image_index = 5
{
can_give_item = 1
}
else
{
can_give_item = 0
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
player.x += (x-90*image_xscale - player.x)*0.1
global.never_move = 1
global.playing_scene = 1
	if image_index = 0
	{
		if global.tutorial = 1 && can_give_item = 1 && give_healitem = 0
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
			check__.text = "왁굳님!"
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
			give_item(1,2)
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
			can_give_item = 0
			message_phase = 0
			first_tuto = 1
			alarm[1] = 1
			}
		}
		else
		{
			if (global.total_died >= 10)
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
				check__.text = "왁굳님! 꽤 힘들어 보이는데 괜찮으세요?"
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
				give_item(1,14)
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
		if global.tutorial = 1 && can_give_item = 1
		{
			if !instance_exists(check__) && message_phase = 0
			{
			image_xscale = sign_k(x - player.x)
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "와! 왁굳님!"
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
			give_item(1,5)
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
		if global.tutorial = 1 && can_give_item = 1
		{
			if !instance_exists(check__) && message_phase = 0
			{
			image_xscale = sign_k(x - player.x)
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "헉! 왁굳님이다!"
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
			give_item(1,7)
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
		if global.tutorial = 1 && can_give_item = 1
		{
			if !instance_exists(check__) && message_phase = 0
			{
			image_xscale = sign_k(x - player.x)
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "와! 왁굳님!"
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
			give_item(1,12)
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
		if global.tutorial = 1 && can_give_item = 1
		{
			if !instance_exists(check__) && message_phase = 0
			{
			image_xscale = sign_k(x - player.x)
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "와! 왁굳님!"
			check__.target = id
			check__.parents = id
			can_interect = 0
			}
			
			if !instance_exists(check__) && message_phase = 1
			{
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "왁굳님 이거 받으세영"
			check__.target = id
			check__.parents = id
			}
			
			if !instance_exists(check__) && message_phase = 2
			{
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "(악세사리을 건네받았다!)"
			check__.target = player.id
			check__.parents = id
			give_item(1,6)
			}
			
			if !instance_exists(check__) && message_phase = 3
			{
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
		if global.tutorial = 1 && can_give_item = 1
		{
			if !instance_exists(check__) && message_phase = 0
			{
			image_xscale = sign_k(x - player.x)
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "와! 왁굳님!"
			check__.target = id
			check__.parents = id
			can_interect = 0
			}
			
			if !instance_exists(check__) && message_phase = 1
			{
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "선물이예요!"
			check__.target = id
			check__.parents = id
			}
			
			if !instance_exists(check__) && message_phase = 2
			{
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "(악세사리을 건네받았다!)"
			check__.target = player.id
			check__.parents = id
			give_item(1,13)
			}
			
			if !instance_exists(check__) && message_phase = 3
			{
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




if abs(x - player.x) <= 32 && player.cannot_move = 0 && global.never_move = 0 && global.playing_scene = 0 && global.never_move_in_setting = 0
{
can_interect = 1
}
else
{
can_interect = 0
}

