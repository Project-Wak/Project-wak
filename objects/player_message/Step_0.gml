/// @description Insert description here
// You can write your code in this editor
//global.never_move = 1
//global.playing_scene = 1

if global.show_guide_mes = -4
{
depth = player.depth-110

if string_pos("(",text) != 0 || string_pos("-",text) != 0
{
real_text = text
real_text_a = string_length(text)+2
}
else
{
real_text_time ++
	if real_text_time >= next_time && real_text_a <= string_length(text)+1
	{
	real_text = string_delete(text,real_text_a,string_length(text)+1)
	real_text_a ++
	real_text_time = 0

		if global.none_wakgood_mode = false
		{
			if target = player.id && voice_delay%2 = 0
			{
			sfx_for_multiplayer(chat_reading_voice,0,0.5)
			}

			if target.object_index = obj_isedol && voice_delay%4
			{
				if target.image_index = 0
				{
				sfx_for_multiplayer(chat_reading_voice_ine,0,0.5)
				}
				
				if target.image_index = 1
				{
				sfx_for_multiplayer(chat_reading_voice_jururu,0,0.7)
				}
				
				if target.image_index = 2
				{
				sfx_for_multiplayer(chat_reading_voice_segu,0,0.7)
				}
				
				if target.image_index = 3
				{
				sfx_for_multiplayer(chat_reading_voice_vichan,0,0.1)
				}
				
				if target.image_index = 4
				{
				sfx_for_multiplayer(chat_reading_voice_jing,0,0.7)
				}
				
				if target.image_index = 5
				{
				sfx_for_multiplayer(chat_reading_voice_lil,0,0.4)
				}
				
				if target.image_index = 6
				{
				sfx_for_multiplayer(chat_reading_voice_chun,0,0.5)
				}
			}
		}
	voice_delay++

		if (string_char_at(text,real_text_a-2) = "." || string_char_at(text,real_text_a-2) = "?" || string_char_at(text,real_text_a-2) = "," || string_char_at(text,real_text_a-2) = "!")
		{
		next_time = 5
		}
		else
		{
		next_time = 1
		}
	}
}


if (keyboard_check_released(global.skip_key) || gamepad_button_check_released(0,gp_select)) && global.left_time > 0 && global.show_time != 3
{
	with(parents)
	{
	message_phase ++
	}
global.never_move = 0
instance_destroy()
}




if global.show_time = 0 && global.selecting_stage = 0
{
	if string_length(text) < 10
	{
	image_index = 0
	}

	if string_length(text) >= 10 && string_length(text) < 18
	{
	image_index = 1
	}

	if string_length(text) >= 18 && string_length(text) < 22
	{
	image_index = 2
	}

	if string_length(text) >= 22 && string_length(text) < 25
	{
	image_index = 3
	}

	if string_length(text) >= 25
	{
	image_index = 4
	}
}
else
{
image_index = 5
}


anime += 0.6

if instance_exists(target)
{
x = target.x
y = target.y-23
}


if des = 0
{
	if image_alpha < 1
	{
	image_alpha += 0.1
	}

	if anime < 9
	{
	image_xscale += (1.2 - image_xscale)*0.3
	image_yscale += (1.2 - image_yscale)*0.3
	}

	if anime >= 9 && anime < 13
	{
	image_xscale += (0.9 - image_xscale)*0.2
	image_yscale += (0.9 - image_yscale)*0.2
	}

	if anime >= 13
	{
	image_xscale += (1 - image_xscale)*0.2
	image_yscale += (1 - image_yscale)*0.2
	}
}
else
{
	if image_alpha > 0
	{
	image_alpha -= 0.1
	}
	
	image_xscale += (0 - image_xscale)*0.21
	image_yscale += (0 - image_yscale)*0.21

	if image_alpha <= 0
	{
	instance_destroy()
	}

}
}
