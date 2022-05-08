/// @description Insert description here
// You can write your code in this editor
if player.attack_laser_sec = 0 && player.attack_laser = 0 && player.suicide = 0
{
	if !instance_exists(obj_wakdroid_ending)
	{
	obj_camera.tv_x = 1280
	obj_camera.tv_y = 720
	obj_camera.v_x = 1280
	obj_camera.v_y = 720
	}
	else
	{
		if explo_anime = 0
		{
		obj_wakdroid_ending.volume__ += (1 - obj_wakdroid_ending.volume__)*0.1 
			if global.playing_scene = 0
			{
			obj_camera.tv_x = 1280*0.7
			obj_camera.tv_y = 720*0.7
			obj_camera.v_x = 1280*0.7
			obj_camera.v_y = 720*0.7
			}
		}
		else
		{
		obj_wakdroid_ending.volume__ += (-0.1 - obj_wakdroid_ending.volume__)*0.1
		obj_camera.tv_x = 1280
		obj_camera.tv_y = 720
		obj_camera.v_x = 1280
		obj_camera.v_y = 720
		}
	}
}

timer ++

if timer < 90
{
image_yscale += (1 - image_yscale)*0.01
b_alpha += (0.2 - b_alpha)*0.01
}
else
{
image_yscale += (1.05 - image_yscale)*0.01
b_alpha += (0 - b_alpha)*0.01
}

if timer > 200
{
timer = 0
}

if explo_anime != 0
{
global.playing_scene = 1
global.never_move = 1
}

if explo_anime < 1 && explo_anime != 0
{
	if player.vspeed <= 0 && explo_anime = 0.2
	{
	explo_anime = 1
	movement_speed = 0
	}
	
	if explo_anime = 0.1
	{
	player.vspeed = -5
	explo_anime = 0.2
	}
player.image_xscale = -1
}


if explo_anime >= 1 && explo_anime < 2
{
player.spin = 1
explo_anime = 2
}

if explo_anime >= 2
{
	if player.spin = 0
	{
	player.guarding = 1.2
	player.image_xscale = 1
	explo_anime++
		if explo_anime < 40
		{
		player.x += 0.1
		}
	}
	else
	{
	player.x += 3
	}
	
	if explo_anime >= 60
	{
		if sfx = 0
		{
		global.w_alpha = -1
			if global.show_credits = 0
			{
			var sfx__ = audio_play_sound(lab_explosion,0,false)
			audio_sound_gain(sfx__,0.5*global.master_volume*2*global.sfx_volume,0)
			}
		sfx = 1
		}
	}
	
	if explo_anime <= 100
	{
	view_shake(1,1,1)
		if explo_anime >= 60
		{
		view_shake(global.w_alpha*0.8,global.w_alpha*0.8,global.w_alpha*0.8)
		global.w_alpha += 0.03
		}
	}
	else
	{
		if global.w_alpha > 1 && sfx = 1
		{
		sfx = 2
		global.w_alpha = 1.1
		instance_create_depth(560,1146,player.depth+5,obj_broken_door)
			repeat(global.graphics_for_code*5)
			{
			var ef__ = instance_create_depth(800,1146,player.depth+5,fire_ball_effect)
			ef__.vspeed = -irandom_range(50,80)/10
			ef__.hspeed = irandom_range(-50,50)/9
			}
			
			repeat(11)
			{
			var ef__ = instance_create_depth(irandom_range(0,room_width),irandom_range(-300,100),player.depth+choose(-1,1),fallen_stone)
			ef__.vspeed = irandom_range(50,80)/40
			ef__.hspeed = irandom_range(-50,50)/50
			}
		}
	global.w_alpha -= 0.002
	
	var xx_2 = obj_tp_door.x+irandom_range(-32,32)
	var yy_2 = obj_tp_door.y-32+irandom_range(-5,5)

	var random_val___ = percentage_k(15)
	if random_val___ = 1
	{
	create_buble_effect(1,270+irandom_range(-10,10),0,choose(-1)*irandom_range(1,150)/50,0.01,0.01,$FF62D1F7,$FF6C60CD,1,$FF191919,xx_2,yy_2,obj_tp_door.depth-1,0,false,false)
	}
	
		if global.w_alpha > 0
		{
		view_shake(global.w_alpha*0.8,global.w_alpha*0.8,global.w_alpha*0.8)
		}
	
		if global.w_alpha < 0.15
		{
		global.w_alpha -= 0.002
		}
	
		if global.w_alpha <= 0
		{
		global.t_b_alpha = 1.0001
			if global.b_alpha > 1
			{
			instance_destroy(fire_ball_effect)
			instance_destroy(obj_bubble_effect)
				if instance_exists(obj_wakdroid_ending)
				{
				obj_wakdroid_ending.message_phase = 50
				}
				
				with(fallen_stone)
				{
				saved_y = y
				}
				
				if global.real_ending = 0
				{
				player.x -= 300
				}
			player.guarding = 0
			global.playing_scene = 0
			global.never_move = 0
			global.t_b_alpha = -0.001
			player.pressed_d_key = 0
			explo_anime = 0
			}
		}
	}
}
