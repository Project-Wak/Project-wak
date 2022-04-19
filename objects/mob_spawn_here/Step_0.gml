/// @description Insert description here
// You can write your code in this editor
if mob_var >= 0
{
	if activated = 0 && place_meeting(x,y,player)
	{
	var test_mob = instance_create_depth(x,y+t_y,player.depth+3,mob_var)
	test_mob.test_mob_type = mob_type
	test_mob.image_xscale = xscale
	test_mob.image_yscale = yscale
	activated = 1
	}
}
else
{
	if mob_var = -4
	{
		if place_meeting(x,y,player)
		{
		global.movement_speed += (0 - global.movement_speed)*0.1
		global.never_move = 1
		global.playing_scene = 1
		
			if mob_type = "B02" && activated = 0
			{
				if !instance_exists(check__) && message_phase = 0
				{
				player.image_xscale = -1
				check__ = instance_create_depth(x,y,depth-1,player_message)
				check__.text = "!"
				check__.target = player.id
				check__.parents = id
				}
		
				if !instance_exists(check__) && message_phase = 1
				{
				check__ = instance_create_depth(x,y,depth-1,player_message)
				check__.text = "(굉장히 깊다)"
				check__.target = player.id
				check__.parents = id
				}
		
				if !instance_exists(check__) && message_phase = 2
				{
				check__ = instance_create_depth(x,y,depth-1,player_message)
				check__.text = "(아래에 무엇이 있을지 모르니 조심하도록 하자)"
				check__.target = player.id
				check__.parents = id
				}
			}
			
			if mob_type = "B03" && activated = 0
			{
				if !instance_exists(check__) && message_phase = 0
				{
				player.image_xscale = -1
				check__ = instance_create_depth(x,y,depth-1,player_message)
				check__.text = "!"
				check__.target = player.id
				check__.parents = id
				}
		
				if !instance_exists(check__) && message_phase = 1
				{
				check__ = instance_create_depth(x,y,depth-1,player_message)
				check__.text = "(이전보다 더욱 어둡다)"
				check__.target = player.id
				check__.parents = id
				}
		
				if !instance_exists(check__) && message_phase = 2
				{
				check__ = instance_create_depth(x,y,depth-1,player_message)
				check__.text = "(빛을 따라가는게 좋겠다)"
				check__.target = player.id
				check__.parents = id
				}
			}
		}
		
		if !instance_exists(check__) && message_phase >= 3
		{
		instance_destroy()
		activated = 1
		global.never_move = 0
		global.playing_scene = 0
		message_phase = 0
		}
	}
	
	if mob_var = -5
	{
		if place_meeting(x,y,player) && instance_exists(mob_type) && (mob_type.activated = 0)
		{
			with(mob_type)
			{
			activated = 1
			}
		instance_destroy()
		}
	}
	
	if place_meeting(x,y,player) && mob_var = -6
	{
	go_origin_room = 1
	}
}

if go_origin_room = 1
{
global.t_b_alpha = 2.1
	if global.b_alpha > 2
	{
	global.t_b_alpha = 0
	room_goto(room_main)
	}
}


visible = global.fps_draw