/// @description Insert description here
// You can write your code in this editor
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











if interecting_now = 1 && global.story_next < 100
{
global.never_move = 1
global.playing_scene = 1

	if !instance_exists(check__) && message_phase = 0
	{
	image_index = 1
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "!"
	check__.target = player.id
	check__.parents = id
	player.image_xscale = -1
	}
	
	if !instance_exists(check__) && message_phase = 1
	{
	image_xscale = 1
	vspeed = -4
	image_index = 1
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "!"
	check__.target = id
	check__.parents = id
	}
	
	if message_phase = 1
	{
	obj_camera.t_x = player.x
	obj_camera.x += (player.x - obj_camera.x)*0.1
	player.guarding = 1.8
	}
	
	if !instance_exists(check__) && message_phase = 2
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = string(global.nickname)+"! 네가 여길 어떻게...."
	check__.target = id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 3
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "분명 경비용 거대 로봇을 세워뒀을텐데...!"
	check__.target = id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 4
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "..."
	check__.target = player.id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 5
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "뭐? 그걸 다 부셨다고?"
	check__.target = id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 6
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "여기까지 용케도 왔는데 아쉽게 됐네ㅋㅋㅋ"
	check__.target = id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 7
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "?"
	check__.target = player.id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 8
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "왁드로이드는 이미 완성됐다"
	check__.target = id
	check__.parents = id
	}
	
	if message_phase = 8
	{
	obj_camera.v_x = 1280*0.6
	obj_camera.v_y = 720*0.6
	}
	
	if !instance_exists(check__) && message_phase = 9
	{
	player.guarding = 1.8
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "!"
	check__.target = player.id
	check__.parents = id
	}
	
	if message_phase = 9
	{
	player.guarding = 1.8
	}
	
	
	if !instance_exists(check__) && message_phase = 10
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "방금 완성 돼서 아직 테스트는 못해봤지만, 상황이 이러니 어쩔 수 없지"
	check__.target = id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 11
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "왁드로이드 가동!"
	check__.target = id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 12
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "공격부터 회피까지 네놈의 모든 걸 카피했으니 누구도 막을 수 없다!"
	check__.target = id
	check__.parents = id
	}
	
	if message_phase >= 12 && message_phase <= 13
	{
	view_shake(0,1,1)
		if !audio_is_playing(quake_sfx)
		{
		var sfx = audio_play_sound(quake_sfx,0,0)
		audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)
		}
	}
	
	if !instance_exists(check__) && message_phase = 13
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "어디 한번 막아볼 테면 막아봐라!"
	check__.target = id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 14
	{
	cre_boss = 1
	global.save_point_x = 4959
	global.save_point_y = 2336
	alarm[1] = 1
	message_phase ++
	}
	
	if !instance_exists(check__) && message_phase = 15
	{
	b_alpha_ += (0.5 - b_alpha_)*0.1
	global.never_move = 0
	global.playing_scene = 0
	player.assult_mode = 300
	image_xscale = sign_k(x - player.x)
	}
	
	if !instance_exists(check__) && message_phase = 18 && global.b_alpha < 0.1
	{
	vspeed = -4
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "!"
	check__.target = id
	check__.parents = id
	
		if global.achievement[17] != 1
		{
		var _achievement = instance_create_depth(x,y,depth,bg_achievement)
		_achievement.text = string(global.achievement_name[17])
		_achievement.icon_num = 4
		global.achievement[17] = 1
		}
	}
	
	if message_phase >= 18
	{
	b_alpha_ += (0 - b_alpha_)*0.1
	}
	
	if !instance_exists(check__) && message_phase = 19
	{
	image_xscale = -1
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "그... 그만둬!"
	check__.target = id
	check__.parents = id
	}
	
	if message_phase >= 18 && message_phase < 24
	{
		if instance_exists(check__)
		{
		var target_xx = check__.target
		obj_camera.x = target_xx.x
		obj_camera.t_x = target_xx.x
		}
		
	obj_camera.v_x = 1280*0.6
	obj_camera.v_y = 720*0.6
	}
	
	if !instance_exists(check__) && message_phase = 20
	{
	player.image_xscale = sign_k(player.x - x)
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "?"
	check__.target = player.id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 21
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "왁드로이드는 완성한지 얼마 되지 않아 안정성이 떨어진단 말이야!"
	check__.target = id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 22
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "자칫하면 폭주하여 이 연구소랑 함께 통째로 사라질수도 있다고!"
	check__.target = id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 23
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "!"
	check__.target = player.id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase >= 24 && message_phase < 25
	{
		if message_phase = 24
		{
		var xx___ = obj_wakdroid.x
		var yy___ = obj_wakdroid.y
			repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
			{
			randomize()
			var dust = instance_create_depth(xx___+irandom_range(-5,5),yy___+irandom_range(-5,5),obj_wakdroid.depth-1,pepsi_effect_received)
			var scale = irandom_range(20,40)/50
			dust.image_xscale = scale
			dust.image_yscale = scale
			dust.vspeed = irandom_range(-50,50)/37
			dust.hspeed = irandom_range(-50,50)/37
			dust.image_alpha = 1
			}

		var sfx = audio_play_sound(mob_faint,0,0)
		audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
		obj_wakdroid.x = 3270
		}
	message_phase += 0.01
	}
	
	if !instance_exists(check__) && message_phase >= 25 && message_phase < 26
	{
		if message_phase = 25
		{
		obj_camera.x = obj_andience1194.x+64
		var xx___ = obj_wakdroid.x
		var yy___ = obj_wakdroid.y
			repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
			{
			randomize()
			var dust = instance_create_depth(xx___+irandom_range(-5,5),yy___+irandom_range(-5,5),obj_wakdroid.depth-1,pepsi_effect_received)
			var scale = irandom_range(20,40)/50
			dust.image_xscale = scale
			dust.image_yscale = scale
			dust.vspeed = irandom_range(-50,50)/37
			dust.hspeed = irandom_range(-50,50)/37
			dust.image_alpha = 1
			}

		var sfx = audio_play_sound(mob_faint,0,0)
		audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
		obj_wakdroid.x = obj_andience1194.x+64
		}
	message_phase += 0.01
	}
	
	if !instance_exists(check__) && message_phase = 26
	{
		if play_scene__ = 0
		{
		play_scene__ = 1
		obj_wakdroid.dash_attack = 1
		obj_wakdroid.image_xscale = sign_k(obj_wakdroid.x - x)
		}
		
		if obj_wakdroid.dash_attack >= 4
		{
		sprite_index = pl_hurt_hyumpanchi_hakase
		vspeed = -4
		check__ = instance_create_depth(x,y,depth-1,player_message)
		check__.text = "으악!"
		check__.target = id
		check__.parents = id
		play_scene__ = 2
		view_shake(1,4,2)
		bloody(x,y,0)
		var sfx = audio_play_sound(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
		}
	}
	
	if message_phase >= 26
	{
		if play_scene__ = 2
		{
			if gravity = 0
			{
			image_index = 1
			}
			else
			{
			image_index = 0
			}
		}
	}
	
	if !instance_exists(check__) && message_phase = 27
	{
	var xx___ = obj_wakdroid.x
	var yy___ = obj_wakdroid.y
		repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
		{
		randomize()
		var dust = instance_create_depth(xx___+irandom_range(-5,5),yy___+irandom_range(-5,5),obj_wakdroid.depth-1,pepsi_effect_received)
		var scale = irandom_range(20,40)/50
		dust.image_xscale = scale
		dust.image_yscale = scale
		dust.vspeed = irandom_range(-50,50)/37
		dust.hspeed = irandom_range(-50,50)/37
		dust.image_alpha = 1
		}

	var sfx = audio_play_sound(mob_faint,0,0)
	audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
	message_phase ++
	}
	
	if !instance_exists(check__) && message_phase = 28
	{
	obj_wakdroid.x = 3418
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "!"
	check__.target = player.id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 29
	{
	obj_camera.t_x = -4
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "(왁드로이드를 쫓아가자)"
	check__.target = player.id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 30
	{
		if instance_exists(obj_wakdroid)
		{
		instance_destroy(obj_wakdroid.wall_1)
		instance_destroy(obj_wakdroid)
		}
	instance_create_depth(3328,2240,depth,obj_last_boss)
	global.never_move = 0
	global.playing_scene = 0
	obj_camera.t_x = -4
	interecting_now = 0
	message_phase ++
	}
	
	
	if (message_phase >= 23 && message_phase <= 24) || message_phase = 28
	{
	obj_wakdroid.scene__ += (1 - obj_wakdroid.scene__)*0.1
	player.guarding = 1.9
	}
}


if cre_boss = 1
{
	if !instance_exists(obj_wakdroid)
	{
	player.x = 5130
	global.save_point_x = 5130
	var test_mob = instance_create_depth(5703,2327,player.depth+3,obj_wakdroid)
	test_mob.image_xscale = 1
	test_mob.image_yscale = 1
	test_mob.test_mob_type = 1
	cre_boss = 0
	}
}


if message_phase != 31
{
	if player.x > 5000 && global.never_move = 0 && global.playing_scene = 0 && global.ending_story = 0
	{
	interecting_now = 1
	global.ending_story = 1
	}
	else
	{
	can_interect = 0
	}
}

