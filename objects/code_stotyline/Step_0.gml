/// @description Insert description here
// You can write your code in this editor

if global.story_next >= 101 && global.story_next < 300
{
	if message_phase < 100
	{
	player.image_xscale = 1
		if message_phase < 5 || (message_phase > 6 && message_phase < 32)
		{
		player.guarding = 1.2
			if set_equipment = 0
			{
			code.alarm[7] = 1
			global.n_sword = 4
			set_equipment = 1
			}
		}

		if message_phase < 8
		{
		view_shake(0,0.2,0.2)
			if !audio_is_playing(quake_sfx)
			{
			var sfx = audio_play_sound(quake_sfx,0,0)
			audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
			}
		}


		if !instance_exists(check__) && message_phase = 0
		{
		player.x = 5334
		player.y = 2334
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "!"
		check__.target = player
		check__.parents = player
		obj_camera.t_x = player.x
		obj_camera.t_y = player.y
		obj_camera.x = player.x
		obj_camera.y = player.y
		message_phase ++
		}
	
		if !instance_exists(check__) && message_phase = 1
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "나를 막으러 여기 까지 왔겠지만..."
		check__.target = obj_andience1194
		check__.parents = obj_andience1194
		message_phase ++
		}
	

		if !instance_exists(check__) && message_phase = 2
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "이런..."
		check__.target = obj_andience1194
		check__.parents = obj_andience1194
		message_phase ++
		}
	
	
		if !instance_exists(check__) && message_phase = 3
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "예상 보다 왁드로이드를 빠르게 완성했는걸?"
		check__.target = obj_andience1194
		check__.parents = obj_andience1194
		message_phase ++
		}
	
		if !instance_exists(check__) && message_phase = 4
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "!"
		check__.target = player
		check__.parents = player
		message_phase ++
		}
	
		if message_phase = 5
		{
			if !instance_exists(check__)
			{
			check__ = instance_create_depth(x,y,depth-1,player_message)
			check__.text = "게임 오버다"
			check__.target = obj_andience1194
			check__.parents = obj_andience1194
			message_phase ++
			}
		}
	

		if message_phase = 6
		{
		obj_camera.tv_x = 1280*0.65
		obj_camera.tv_y = 720*0.65
		obj_camera.v_x = 1280*0.65
		obj_camera.v_y = 720*0.65
		obj_camera.t_x = obj_andience1194.x
		obj_camera.t_y = obj_andience1194.y
		obj_camera.x = obj_andience1194.x
		obj_camera.y = obj_andience1194.y
		}
		else
		{
		obj_camera.tv_x = 1280*0.8
		obj_camera.tv_y = 720*0.8
		obj_camera.v_x = 1280*0.8
		obj_camera.v_y = 720*0.8
		obj_camera.t_x = player.x
		obj_camera.t_y = player.y
		obj_camera.x = player.x
		obj_camera.y = player.y
		}
	
		if message_phase = 6
		{
			if !instance_exists(check__)
			{
			global.left_time = 0
			message_phase = 7
			}
		}
	}
	
	
	//show_debug_message(message_phase)
	if message_phase >= 7 && global.left_time > 0
	{
	global.playing_scene = 1
		if message_phase <= 152
		{
		obj_camera.tv_x = 1280*0.6
		obj_camera.tv_y = 720*0.6
		obj_camera.v_x = 1280*0.6
		obj_camera.v_y = 720*0.6
		}
		

		if !instance_exists(check__) && message_phase = 150
		{
		global.clock = 0
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "..."
		check__.target = player
		check__.parents = player
		message_phase = 151
		}
		
		if !instance_exists(check__) && message_phase = 151
		{
		global.clock = 0
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "(아무래도 왁드로이드 완성 전의 과거로 와버린 것 같다)"
		check__.target = player
		check__.parents = player
		message_phase = 154
		}
		
		if message_phase < 150
		{
		message_phase ++
		global.left_time = 24*3
		obj_camera.t_x = -4
		obj_camera.t_y = -4
		obj_camera.x = player.x
		obj_camera.y = player.y
		player.x = 320
		player.image_xscale = -1
		
		player.hurt = 15
		}
	}
	
	if !instance_exists(check__) && message_phase >= 153
	{
		if set_equipment = 1
		{
		global.n_sword = 0
		code.alarm[7] = 1
		set_equipment = 2
		
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


if message_phase < 140 && global.first_sleep = 0
{
global.clock = 1
}

if global.story_next > 650
{
global.t_b_alpha = 2.1
}