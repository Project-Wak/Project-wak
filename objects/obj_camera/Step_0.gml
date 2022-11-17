/// @description Insert description here
// You can write your code in this editor
if !sprite_exists(global.guide_gif)
{
guide_gif_y = 0
guide_gif_alpha = 0
guide_gif_y_timer = 0
}


if global.r_alpha > 0
{
global.r_alpha -= 0.01
}

if global.show_credits = 0
{
	if instance_exists(player_message)
	{
	global.playing_scene = 1
	}
	else
	{
	timer__playing_scene_++
		if timer__playing_scene_ > 10 && global.never_move = 0
		{
		global.playing_scene = 0
		timer__playing_scene_ = 0
		}
	}
}


if instance_exists(obj_wakdroid_ending) && (global.broken_clock > 2 || timer_ending_scene > 0)
{
	if timer_ending_scene > 20
	{
		if show_ending_var != 0
		{
		global.ending_b_alpha += (1 - global.ending_b_alpha)*0.03
		}
		else
		{
		global.ending_b_alpha += (-0.01 - global.ending_b_alpha)*0.03
			if timer_ending_scene <= 30
			{
			t_y = player.y
			timer_ending_scene = 30
			}
		t_y -= 1
		}
	}
	else
	{
	timer_ending_scene ++
	}
}





if global.visible_player = -1
{
v_x = 1280
v_y = 720
}


var ins_ = global.boss_target
if instance_exists(ins_)
{
global.boss_hp_alpha += (1.01 - global.boss_hp_alpha)*0.06

	if m_hp != ins_.hp
	{
		if audio_is_playing(hit_sfx1) || audio_is_playing(hit_sfx2) || audio_is_playing(hit_sfx3)
		{
			if m_hp_delay > 30
			{
			m_hp = ins_.hp
			}
		m_hp_delay = 0
		}
		
	m_hp_delay++
		if m_hp_delay > 30
		{
		m_hp += (ins_.hp - m_hp)*0.1
			if abs(m_hp - ins_.hp) < 2
			{
			m_hp = ins_.hp
			m_hp_delay = 0
			}
		}
	}
}
else
{
global.boss_hp_alpha += (-0.01 - global.boss_hp_alpha)*0.06
}




if global.draw_now_rank < 0
{
global.draw_now_rank = 0
}

if global.draw_now_rank >= 0
{
global.draw_now_rank -= 0.03
}


if global.in_practice > 0
{
global.t_b_alpha = 0
}



	if global.t_shake_x <= 0.01
	{
	global.t_shake_x = 0
	portensial_x = x
	}
	
	if global.t_shake_y <= 0.01
	{
	global.t_shake_y = 0
	}
global.t_shake_x += (0 - global.t_shake_x)*0.1
global.t_shake_y += (0 - global.t_shake_y)*0.1
global.real_shake_x += (global.t_shake_x*global.shake_x - global.real_shake_x)*0.1
global.real_shake_y += (global.t_shake_y*global.shake_y - global.real_shake_y)*0.1
global.shake_time ++
	if global.shake_time > 1
	{
	global.shake_x = -global.shake_x
	global.shake_y = -global.shake_y
	global.shake_time = 0
	}



x += global.real_shake_x
y += global.real_shake_y











if global.show_challenger = 0
{
	if t_x != -4
	{
	obj_potential_camera.x = t_x
	}
	
	if t_y != -4
	{
	obj_potential_camera.y = t_y
	}
	

	if instance_exists(player) && global.ending_b_alpha = 1
	{
		if global.slow_motion = 0 && global.show_credits = 0
		{
		t_x = player.x;
		t_y = player.y;
		}
		
		if global.fix_camera = 0
		{
		x += (obj_potential_camera.x - x)*0.08
		}
		else
		{
		x += (portensial_x -x)*0.08
		}
	y += (obj_potential_camera.y - y)*0.08
	}
}




x = floor(x)
y = floor(y)

global.view_angle_ += (0 - global.view_angle_)*0.1
camera_set_view_angle(view_camera[0],global.view_angle_)

if v_x > 1280*0.4
{
camera_set_view_size(view_camera[0],floor(v_x),floor(v_y));
}
else
{
camera_set_view_size(view_camera[0],floor(1280*0.4),floor(720*0.4));
}

v_x += (tv_x - v_x)*0.02;
v_y += (tv_y - v_y)*0.02;

if global.slow_motion > 0
{
player.depth = -100
	if global.show_credits = 0 && global.playing_scene = 0
	{
	v_x = 1280*0.75
	v_y = 720*0.75
	}
}
else
{
	if global.show_credits = 0 && global.playing_scene = 0
	{
	tv_x = 1280*0.8
	tv_y = 720*0.8
	}
}

if global.w_alpha2 > 0
{
global.w_alpha2 -= 0.15
}

if global.w_alpha < 0
{
global.w_alpha = 0
}

if global.w_alpha > 0 && room != room_sector_outside
{
global.w_alpha -= 0.15
}



global.b_alpha += (global.t_b_alpha - global.b_alpha)*0.05
global.b_alpha_prt += (global.t_b_alpha_prt - global.b_alpha_prt)*0.05



global.clock_alpha += (global.t_clock_alpha - global.clock_alpha)*0.04*(60/room_speed)
if global.clock_alpha > 0
{
	if global.graphics_for_code >= 2
	{
	global.fdraw_clock_angle += (global.clock_angle - global.fdraw_clock_angle)*0.1
	global.fdraw_clock_angle_sec += (global.clock_angle_sec - global.fdraw_clock_angle_sec)*0.1
	global.clock_angle += spining_speed*(60/room_speed)
	global.clock_angle_sec += spining_speed*4*(60/room_speed)
	}
	
	if global.slow_motion > 500 && code.playing_gameover_scene > 0 && global.broken_clock >= 2
	{
	spining_speed += (0 - spining_speed)*0.03
	}
	
	if global.slow_motion > 2500 && code.playing_gameover_scene > 0 && global.broken_clock >= 2
	{
	spining_speed += (0 - spining_speed)*0.03
	}
global.clock_scale += (global.t_clock_scale - global.clock_scale)*0.015*(60/room_speed)
global.t_clock_scale -= 0.02*abs(1-global.t_clock_scale)+0.001*(60/room_speed)
}

if global.clock_alpha >= 0.99
{
global.t_clock_alpha = 100
}

