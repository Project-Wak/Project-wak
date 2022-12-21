/// @description Insert description here
// You can write your code in this editor

timer++

if image_index != 1 && des != 1
{
	if timer > 50
	{
	image_alpha += (0.6 - image_alpha)*0.1
		if timer > 100
		{
		timer = 0
		}
	}
	else
	{
	image_alpha += (0.7 - image_alpha)*0.1
	}
}

if surface_exists(global.light_surf)
{
var s_x = camera_get_view_x(view_camera[0])
var s_y = camera_get_view_y(view_camera[0])

surface_set_target(global.light_surf)
gpu_set_blendmode(bm_add);
var xx = x - s_x
var yy = y - s_y
var alpha_ = (0.01)*image_alpha
var color = $FF4EB0F7
	for(var i = 6; i >= -6; i -= 1)
	{
		for(var ii = 6; ii >= -6; ii -= 1)
		{
		//var alpha_ = image_alpha/i
		draw_sprite_ext(sprite_index,image_index+2,xx+i,yy+ii,image_xscale,image_yscale,floor(image_angle),color,alpha_)
		}
	}
gpu_set_blendmode(bm_normal)
surface_reset_target()
}


if image_alpha > 0
{
var xx_ = x+irandom_range(-16,16)
var yy_ = y+irandom_range(-16,0)
var random_val___ = percentage_k(15)
	if random_val___ = 1
	{
	var random_val___2 = percentage_k(30)
	create_buble_effect(image_alpha*0.1,270+irandom_range(-5,5),0,choose(-1)*irandom_range(50,100)/70,0.01,0.01,$FF3ACAFF,c_white,1,$FF3ACAFF,xx_,yy_,depth-random_val___2,0,false,false)
	}
}

if place_meeting(x,y+15,floor_parents)
{
gravity = 0
vspeed = 0
}
else
{
gravity = 0.3
}




if player.cannot_move = 0 && abs(player.x - x) < 32 && abs(player.y - y) <= 160 && global.playing_scene = 0
{
can_interect = 1
}
else
{
can_interect = 0
}

if image_index = 1
{
image_alpha -= 0.01
}

if image_alpha < 0 && interectinig_now = 0
{
instance_destroy()
}

if global.b_alpha < 0.5 && global.playing_scene > 0 && interectinig_now = 0
{
des = 1
}

if des = 1
{
image_alpha -= 0.01
}


if keyboard_check_released(global.skip_key) && can_interect = 1 && global.playing_scene = 0 && global.b_alpha < 0.1 && global.show_guide_mes = -4
{
interectinig_now = 1
}

if interectinig_now > 0
{
global.never_move = 1
global.playing_scene = 1
	if !instance_exists(check__) && message_phase = 0
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "?"
	check__.target = player.id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 1
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "(황금 뱅갈고무나무다)"
	check__.target = player.id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 2
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "..."
	check__.target = player.id
	check__.parents = id
	global.choice_now = 0
	}
	
	if !instance_exists(check__) && message_phase = 3
	{
	global.choice_name[0] = "뱅갈고무나무 잎을 따간다"
	global.choice_name[1] = "취소 하기"
	global.choice_name[2] = -4
	
		if global.choosed > 0
		{
			if global.choice_now = 0
			{
			image_index = 1
			var sfx = audio_play_sound(glow_sfx,0,0)
			audio_sound_gain(sfx,0.3*global.master_volume*2*global.sfx_volume,0)
			message_phase = 4
			}
			else
			{
			message_phase = 5
			}
		global.choosed = 0
		}
		else
		{
		global.choice += (1.001 - global.choice)*0.2
		}
	}
	
	if message_phase = 4
	{
	global.choice += (-0.1 - global.choice)*0.2
		if !instance_exists(check__) && image_alpha < 0
		{
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "(뱅갈고무나무 에스트 병의 최대 사용 횟수가 늘어났다!)"
		check__.target = player.id
		check__.parents = id
		global.max_sylinge1_use ++
		}
	}


	if message_phase >= 5 || (image_index = 0 && message_phase >= 4)
	{
	global.choice += (-0.1 - global.choice)*0.2
	
		if global.choice <= 0 && !instance_exists(check__)
		{
		global.never_move = 0
		global.playing_scene = 0
		message_phase = 0
		interectinig_now = 0
		}
	}
}


