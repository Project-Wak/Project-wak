/// @description Insert description here
// You can write your code in this editor
depth = obj_camera.depth+30

if set_brightness = 1
{
wheel_cooltime --
	if start_alpha < 1
	{
	start_alpha += 0.01
	}
	else
	{
		if menu_alpha < 1
		{
		menu_alpha += 0.1
		}
	}

	if start_alpha > 0.85
	{
		if sfx = 0
		{
		var sfx_ = audio_play_sound(critical_sfx,0,0)
		audio_sound_gain(sfx_,0.02*global.master_volume*2*global.sfx_volume,0)
		sfx = 1
		}

	var scale = irandom_range(50,100)/500
	var _light_ = instance_create_depth(irandom_range(0,room_width),room_height+irandom_range(100,200),depth-1,obj_light)
	_light_.p_id = id
	_light_.alpha = 0.4*irandom_range(100,200)/100
	_light_.sprite_index = sprite64
	_light_.image_blend = $FF75F2FF
	_light_.light_type = 0
	_light_.image_xscale = scale*10
	_light_.image_yscale = scale*10
	_light_.alarm[1] = 50
	_light_.gravity_direction = 270
	_light_.gravity = 0.2
	_light_.vspeed = 5
	_light_.hspeed = irandom_range(-10,10)/10

	cre_buble_ef(irandom_range(0,room_width),room_height+irandom_range(100,200),c_white,$FF75F2FF,-irandom_range(20,50)/10,irandom_range(-15,15)/10,0.08,0.08,scale,scale,5*irandom_range(100,200)/100,1,1)
	}

	set_menu_choose += (t_set_menu_choose - set_menu_choose)*0.1



	if global.never_move_in_setting = 0 && menu_alpha > 0.1 && global.b_alpha < 0.1 && global.show_credits = 0 && global.chat_activity = false
	{
		if keyboard_check_pressed(ord(string(global.skip_key))) || keyboard_check_pressed(vk_enter) || keyboard_check_pressed(global.jump_key)
		{
		event_user(0)
		}
	}



	if go_start = 1
	{
		if global.b_alpha > 2
		{
			if global.tutorial != 0
			{
				if really = 0
				{
				global.choice_name[0] = "이어 하기"
				global.choice_name[1] = "세이브 파일 삭제"
				global.choice_name[2] = -4
				}
				else
				{
				global.choice_name[0] = "취소 하기"
				global.choice_name[1] = "세이브 파일 삭제"
				global.choice_name[2] = -4
				}
		
				if global.choosed > 0
				{
				var sfx_ = audio_play_sound(critical_sfx,0,0)
				audio_sound_gain(sfx_,0.02*global.master_volume*2*global.sfx_volume,0)
				global.choice += (-0.1 - global.choice)*0.2
					if really = 0
					{
						if global.choice_now = 0
						{
						global.choosed = 0
						global.choice_now = 0
						global.b_alpha = 1
						global.choice = 0
						timer_des = 1
						alarm[2] = 120
						}
						else
						{
						global.choosed = 0
						global.choice_now = 0
						global.choice = 0
						really = 1
						}
					}
					else
					{
						if global.choice_now = 0
						{
						global.choosed = 0
						global.choice_now = 0
						global.choice = 0
						game_restart()
						}
						else
						{
						global.choice = 0
						file_delete("Project_wak_beta_04.ini")
						save_and_load_data(0,0)
						game_restart()
						}
					}
				}
				else
				{
					if timer_des = 0
					{
					global.choice += (1.001 - global.choice)*0.2
					}
				}
			}
			else
			{
			room_goto(tuto_room)
			}
		
		global.cursor = 0
		}
	}

	if go_start = 4
	{
		if global.b_alpha > 2
		{
			if global.story_text_alpha <= 2 && timer_st <= 60
			{
			global.story_text_alpha += 0.01
				if keyboard_check(ord(string(global.skip_key)))
				{
				global.story_text_alpha += 0.01
				}
			}
		
			if global.story_text_alpha >= 1.4
			{
			timer_st ++
			}
		
			if timer_st > 0
			{
				if timer_st > 60
				{
				global.story_text_alpha -= 0.01
				
					if keyboard_check(ord(string(global.skip_key)))
					{
					global.story_text_alpha -= 0.01
					}
				
					if global.story_text_alpha <= 0
					{
					timer_st = 0
					global.story_next ++
				
						if global.story_next >= 3
						{
						room_goto(tuto_room)
						global.cursor = 0
						}
					}
				}
			}
		}
	}

	if go_start = 2
	{
		if global.b_alpha > 2
		{
		go_start = 3
		t_set_menu_choose = 1
		global.t_b_alpha = -0.01
		}
	}

	if go_start != 3
	{
		if t_set_menu_choose < 0
		{
		t_set_menu_choose = 4
		}

		if t_set_menu_choose > 4
		{
		t_set_menu_choose = 0
		}
	}
	else
	{
		if t_set_menu_choose < 0
		{
		t_set_menu_choose = 5
		}

		if t_set_menu_choose > 5
		{
		t_set_menu_choose = 0
		}
	}
}
else
{
global.room_brightness = 0.2
timer ++
	if global.b_alpha < 1 && !instance_exists(brightness_setting___)
	{
	instance_create_depth(x,y,-9998,brightness_setting___)
	var arrow__ = instance_create_depth(510,270,light_code.depth+5,obj_hint_arrow)
	arrow__.image_angle = 45
	arrow__.image_xscale = 2
	arrow__.image_yscale = 2
	}
	
	if timer > 250 && brightness_set_alpha < 1
	{
	brightness_set_alpha += 0.05
	}
	
	if global.difficulty != -4
	{
	global.b_alpha = 10
	global.room_brightness = 0.6
	set_brightness = 1
	instance_destroy(brightness_setting___)
	instance_destroy(obj_hint_arrow)
	}
	
	if keyboard_check_pressed(ord(string(global.skip_key)))
	{
	global.b_alpha = 10
	global.room_brightness = 0.6
	set_brightness = 1
	instance_destroy(brightness_setting___)
	instance_destroy(obj_hint_arrow)
	}
	
}
