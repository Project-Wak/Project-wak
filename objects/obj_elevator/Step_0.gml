/// @description Insert description here
// You can write your code in this editor
if global.left_time > 0
{
	
if activated = 1
{
	if destination > 0
	{
	global.t_b_alpha = 1.1
	}

	if global.back_to_origin_stage = 0
	{
	global.never_move = 1
	global.playing_scene = 1
		if (x - player.x) > 100
		{
		obj_camera.x = x
		obj_camera.y = y
		player.x = x
		}
		else
		{
		obj_camera.x = x
		obj_camera.y = y
		player.x += (x - player.x)*0.34
		}

		if (y - player.y) > 100
		{
		player.y = y
		}
		else
		{
		player.y += (y - player.y)*0.34
		}

	obj_camera.tv_x = 1280*0.5
	obj_camera.tv_y = 720*0.5
	player.image_xscale = sign_k(player.x - real_t_x)
	}
	else
	{
	player.x = 1213
	player.y = 733
	}

x += (t_x - x)*0.05
y += (t_y - y)*0.05


t_x += (real_t_x - t_x)*0.1
t_y += (real_t_y - t_y)*0.1
	if destination = 2
	{
	real_t_x = -500
		if global.back_to_origin_stage = 0
		{
		player.image_xscale = 1
		}
	}
	

	if abs(t_x-x) < 0.6
	{
	x = t_x
	}
	
	if abs(t_y-y) < 0.6
	{
	y = t_y
	}
	
	if abs(t_x-real_t_x) < 1 && abs(t_y-real_t_y) < 1
	{
	timer ++
	}
	
	if timer > 120
	{
		if global.back_to_origin_stage = 0
		{
		global.playing_scene = 1
		}
		
		if destination > 0
		{
		global.t_b_alpha = 1.1
		
			if global.b_alpha > 1
			{
			global.left_time --
			global.t_b_alpha = -0.01
				if destination = 2
				{
				global.never_move = 0
				global.playing_scene = 0
				room_goto(room_sector_B02_1);
				}
				
				if destination = 1
				{
				room_goto(room_main);
				}
				
				if destination = 3
				{
				global.never_move = 0
				global.playing_scene = 0
				room_goto(room_sector_B03_1);
				}
				
				if destination = 4
				{
				global.never_move = 0
				global.playing_scene = 0
				room_goto(room_sector_B04_2);
				}
				
				if destination = 5
				{
				global.never_move = 0
				global.playing_scene = 0
				room_goto(room_sector_B05_2);
				}
				
				if destination = 30
				{
				room_goto(room_sector_B03_2);
				}
				
				if destination = 20
				{
				room_goto(room_sector_B02_2);
				}
				
				if destination = 6
				{
				room_goto(room_sector_B06_2);
				}
				
				if destination = 7
				{
				room_goto(room_sector_B07);
				}
				
				if global.first_enter_game = 1
				{
				global.first_enter_game = 0
				}
				else
				{
					if room != room_main
					{
					global.n_time ++
					global.tiredness += 2
					global.left_time --
					}
				}
			}
		}
		else
		{
			if global.first_enter_game = 1
			{
			global.first_enter_game = 0
			}
			else
			{
				if room != room_main
				{
				global.n_time ++
				global.tiredness += 2
				global.left_time --
				}
			}
			
			if global.back_to_origin_stage = 0
			{
			global.never_move = 0
			global.playing_scene = 0
			}
		activated = -1
		timer = 0
		}
	}
}
else
{
sfx_on = 0
}



if global.tutorial = 1 && room = room_main
{
cannot_active_more = 0
}
}
