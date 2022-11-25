/// @description Insert description here
// You can write your code in this editor

if global.story_next >= 101 && global.story_next < 300
{
	if message_phase < 3
	{
	global.clock = 0
	global.broken_clock = 0
	global.platform_speed = 0
	room_goto(room_sector_outside)
	player.x = 32
	player.y = 1154
	message_phase = 3
	}
	
	if message_phase = 3
	{
	global.playing_scene = 1
		if player.x < 410
		{
		player.image_xscale = -1
			if global.b_alpha < 1
			{
			global.movement_speed = 2.5
			}
		}
		else
		{
		global.movement_speed = 0
		message_phase = 4
		}
	}
	
	if message_phase = 4 && !instance_exists(check__) 
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "여기가 그 연구소인가?"
	check__.target = player
	check__.parents = player
	message_phase = 7
	}
	
	//show_debug_message(message_phase)
	if message_phase >= 7 && global.left_time > 0
	{
	global.playing_scene = 1


		if !instance_exists(check__) && message_phase = 149
		{
		global.clock = 0
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "..."
		check__.target = player
		check__.parents = player
		message_phase = 150
		}
		
		if !instance_exists(check__) && message_phase = 150
		{
		global.clock = 0
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "(보아하니 동굴을 개조하여 만든 시설인듯하다)"
		check__.target = player
		check__.parents = player
		message_phase = 151
		}
		
		if !instance_exists(check__) && message_phase = 151
		{
		global.clock = 0
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "(들어가자)"
		check__.target = player
		check__.parents = player
		message_phase = 154
		}
		
		if message_phase < 149
		{
		message_phase ++
			if global.difficulty != 2
			{
			global.left_time = 24*3
			}
			else
			{
			global.left_time = 24
			}
		obj_camera.t_x = -4
		obj_camera.t_y = -4
		obj_camera.x = player.x
		obj_camera.y = player.y
		}
	}
	
	if !instance_exists(check__) && message_phase >= 153
	{
		if set_equipment <= 10
		{
		set_equipment = 11
		global.n_sword = 0
		global.clock = 0
		code.alarm[7] = 1

		
		var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
		key_guide.location = -2
		key_guide.img_index = 0

		var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
		key_guide.location = -0.5
		key_guide.img_index = 1

		var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
		key_guide.location = 1.5
		key_guide.img_index = 7
		}

	message_phase = 303
	obj_camera.tv_x = 1280*0.8
	obj_camera.tv_y = 720*0.8
	global.never_move = 0
	global.playing_scene = 0
	}
}


if global.story_next > 650
{
global.t_b_alpha = 2.1
}