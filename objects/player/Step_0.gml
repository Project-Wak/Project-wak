if keep_spinning > 0
{
keep_spinning --
global.stamina_cooltime = -keep_spinning
}

if place_meeting(x,y,obj_water_inside) || place_meeting(x,y-18,obj_water_front)
{
o2_timer ++
jump_attack_used = 0
turning_attack_used = 0
	if attack_ > 0
	{
	attack_in_air_cool = 0
	}
global.o2 -= 0.03
global.movement_speed += (0 - global.movement_speed)*0.05
	
	if abs(global.movement_speed) >= 6
	{
	global.movement_speed += (0 - global.movement_speed)*0.05
	}
	
	if global.o2 < 0
	{
	global.hp -= 1
	global.o2 = 0
	}
	
	if global.o2 > 100
	{
	global.o2 = 100
	}
	
	if vspeed > 2.6 && down_attack = 0
	{
	vspeed = 2.6
	}

	if o2_timer > 130
	{
		repeat(choose(1,2))
		{
		var ins_bb = instance_create_depth(x-image_xscale*25+irandom_range(-16,16),y,depth,bubble_effect)
		ins_bb.t_scale = irandom_range(3,10)*0.5
		ins_bb.can_interect = false
		}
	o2_timer = 0
	}
}
else
{
	if global.o2 < 100
	{
	global.o2++
	}
	else
	{
	global.o2 = 100
	}
}



if global.broken_clock != n_broken_clock && global.b_alpha < 0.5 && global.slow_motion = 0 && code.playing_gameover_scene = 0
{
global.playing_scene = 1
global.never_move = 1
	if !instance_exists(check__) && message_phase = 0
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "!"
	check__.target = player.id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 1 && global.show_guide_mes = -4
	{
	global.show_guide_mes_spr = 6
	global.show_guide_mes = "폭발의 영향으로 인해 Re:wind시계에 금이 갔다"
	message_phase ++
	}
	
	if !instance_exists(check__) && message_phase = 2 && global.show_guide_mes = -4
	{
	n_broken_clock = global.broken_clock
	global.playing_scene = 0
	global.never_move = 0
	}
}

if global.tutorial = 0
{
	if global.hp < 200 && y-100 < room_height
	{
	global.hp = 200
	}
}

if global.hp > 1 && global.poisoning = 1
{
poison_alpha += 0.01
	if poison_alpha > 1
	{
	var xx_ = x
	var yy_ = y
		
		repeat(choose(4,5))
		{
		var random_val___2 = percentage_k(80)
		create_buble_effect(image_xscale*0.4,270+irandom_range(-5,5),0,choose(-1)*irandom_range(30,70)/25,0.07,0.07,$FF70FFDC,$FF4CE083,2,$FF5A8539,xx_,yy_,depth-random_val___2,0,false,false)
		}

		
		if global.hp > 20
		{
		global.hp -= 20
		}
		else
		{
		global.hp = 1
		}
	poison_alpha = 0
	}
}

if global.poisoning = 0
{
poison_alpha += (-0.01 - poison_alpha)*0.1
}

if global.poison_tuto = 0 && room = room_sector_B06_2
{
global.show_guide_mes_spr = 5
global.show_guide_mes = "상태 이상 (디버프)\n\n디버프 상태에 걸리게 될경우,\n체력이 1이 남을때 까지 지속적으로 체력이 닳는다.\n(상태 이상은 특정 아이템을 사용하거나 사망 혹은 수면 시에만 해제된다)"
global.poison_tuto = 1
}



if global.room_brightness/(global.n_night+1) <= 0.35 && room != room_sector_outside && image_alpha > 0 && global.visible_player = 1
{
	if global.lenturn = 1
	{
		if !instance_exists(_light_)
		{
		_light_ = instance_create_depth(x,y,depth,obj_light)
		_light_.p_id = id
		_light_.alpha = 0
		_light_.sprite_index = sprite64
		_light_.image_blend = $FF4EB0F7
		_light_.light_type = 0
		_light_.image_xscale = 0
		_light_.image_yscale = 0
		}
		else
		{
		light_timer ++
		_light_.x = player.x
		_light_.y = player.y
			if light_timer > 80 && light_timer < 140
			{
			_light_.image_xscale += (5.6 - _light_.image_xscale)*0.08
			_light_.image_yscale += (5.6 - _light_.image_yscale)*0.08
			_light_.alpha += ((0.5-global.room_brightness)*image_alpha - _light_.alpha)*0.08
			}
			
			if light_timer >= 140 && light_timer < 200
			{
			_light_.image_xscale += (5.2 - _light_.image_xscale)*0.08
			_light_.image_yscale += (5.2 - _light_.image_yscale)*0.08
			_light_.alpha += ((0.4-global.room_brightness)*image_alpha - _light_.alpha)*0.08
			}
			
			if light_timer >= 200
			{
			light_timer = 80
			}
		}
	}
}
else
{
	if instance_exists(_light_)
	{
	instance_destroy(_light_)
	}
}



var on_floor = place_meeting(x,y+1,floor_parents)
var on_stair = place_meeting(x,y+5,stair_parents)

if global.noclip = 1
{
on_floor = true
}


if on_stair = true && on_floor = false
{
	repeat(25)
	{
	on_floor = place_meeting(x,y+1,floor_parents)
	on_stair = place_meeting(x,y+5,stair_parents)
		if on_stair = true && on_floor = false
		{
		y ++
		}
		else
		{
		break;
		}
	}
}

var ins_pl_hand = instance_place(x,y,obj_hand)
if ins_pl_hand > 0
{
vspeed = ins_pl_hand.vspeed
hspeed = ins_pl_hand.hspeed
}


if global.story_next < 100 && global.playing_scene = 0 && global.hp > 0 && global.never_move = 0 && global.b_alpha < 0.1 && global.never_move_in_setting = 0 && show_left_time = 0 && global.left_time <= 12 && global.slow_motion = 0 && code.playing_gameover_scene = 0
{
global.show_guide_mes = "왁드로이드 완성까지 시간이 얼마 남지 않았다"
global.show_guide_mes_spr = 6
show_left_time = 2
}




if global.playing_scene = 0 && global.hp > 0 && global.never_move = 0 && global.b_alpha < 0.1 && global.never_move_in_setting = 0 && tiredness = 0 && global.tiredness >= 18 && global.slow_motion = 0 && code.playing_gameover_scene = 0
{
global.show_guide_mes = "피로도가 쌓여 조금 피곤한것 같다"
global.show_guide_mes_spr = 6
tiredness = 2
}


hspeed += (0 - hspeed)*0.1

if global.never_move_in_setting = 0 && global.playing_scene = 0 && global.none_wakgood_mode = false
{
	if global.n_sword = 1 && global.explosion_tuto = 0 && !instance_exists(draw_key_)
	{
	global.explosion_tuto = 1

	var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
	key_guide.location = 0.75
	key_guide.img_index = 16

	var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
	key_guide.location = -0.75
	key_guide.img_index = 14
	
	global.show_guide_mes = "익스플로전\n\n레이지(Rage)게이지를 대량으로 소비를 하는 매우 강력한 스킬\n시전시, 매우 넓은 범위의 특수 공격을 사용한다."
	global.show_guide_mes_spr = 4

	global.rage_gauge = 100
	}

	if global.n_sword = 6 && global.suicide_skill_tuto = 0 && !instance_exists(draw_key_)
	{
	global.suicide_skill_tuto = 1

	global.show_guide_mes = "할복\n\n체력을 1만큼 남기고 전부 소비하는 스킬\n시전시, 플레이어 사망 전까지 레이지 모드 상태가 지속된다."
	global.show_guide_mes_spr = 5
	var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
	key_guide.location = 0.75
	key_guide.img_index = 16
	
	var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
	key_guide.location = -0.75
	key_guide.img_index = 14
	}
	
	if global.energy_laser = 0 && global.weapon_upgraded[global.n_sword] > 0 && global.n_sword != 5 && !instance_exists(draw_key_)
	{
	global.rage_gauge = 100
	global.energy_laser = 1
	
	global.show_guide_mes = "에네르기파\n\n레이지(Rage)게이지를 대량으로 소비를 하는 매우 강력한 스킬\n1레벨 이상 강화된 모든 둔기류 무기를 들고있을때 사용 가능하며,\n시전시, 넓은 범위의 특수 공격을 사용한다"
	global.show_guide_mes_spr = 4
	var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
	key_guide.location = 0.75
	key_guide.img_index = 26
	
	var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
	key_guide.location = -0.75
	key_guide.img_index = 25
	}
}




if global.noclip = 1
{
gravity = 0
vspeed = 0
	if (keyboard_check(global.left_key) || gamepad_button_check(0,gp_padl))
	{
		if global.visible_player = 1
		{
		x -= 20
		}
		else
		{
		global.movement_speed += (0 - global.movement_speed)*0.1
		}
	}
	
	if (keyboard_check(global.right_key) || gamepad_button_check(0,gp_padr))
	{
		if global.visible_player = 1
		{
		x += 20
		}
		else
		{
		global.movement_speed += (0 - global.movement_speed)*0.1
		}
	}
	
	if keyboard_check(global.jump_key) || keyboard_check(global.guard_key) || gamepad_button_check(0,gp_padu)
	{
	y -= 8
	}
	
	if keyboard_check(ord(string(global.s_key))) || keyboard_check(global.down_key) || gamepad_button_check(0,gp_padd)
	{
	y += 8
	}
}



for(var i = 0; i <= 64; i++)
{
var __check = instance_place(x,y+i,floor_parents)
	if __check > 0
	{
	global.p_floor = y+i
	break;
	}
	else
	{
		if i = 64
		{
		global.p_floor = y+64
		}
	}
}

for(var i = 0; i < -vspeed; i += 0.5)
{
var __check_top_floor = instance_place(x,y-i-20,floor_parents)
	if __check_top_floor > 0
	{
	show_debug_message("top_exists!")
	y = y-i
	vspeed = 0
	break;
	}
}


if dont_check_jump_now > 0
{
dont_check_jump_now--
}


if guarding > 0
{
guarded = 1
}

if (keyboard_check_released(global.guard_key_for_code) || gamepad_button_check_released(0,gp_padu) || jump > 0 || gravity != 0 || vspeed < 0)
{
guarded = 0
}



assult_mode --

if assult_mode <= 0
{
	if global.burger = 1
	{
	global.hp += 0.1
	}
}


if sprite_index = spr_crouch && cannot_standup = 0 && global.slow_motion = 0 && global.playing_scene = 0
{
global.never_move = 0
sprite_index = move_sprite
}

if guarding >= 2
{
guard_success = 1
}

if guarding <= 1
{
guard_success = 0
}

if guarding >= 0.8 && pering = 0 && guard_success = 1 && global.n_sword != 0 && global.n_sword != 5 && global.playing_scene = 0 && global.never_move = 0
{
	if keyboard_check_pressed(ord(string(global.a_key))) || gamepad_button_check_pressed(0,gp_face2)
	{
	guard_success = 0
	guarding = 0
	pering = 1
	cannot_move = 1
	var d_ef = instance_create_depth(player.x-image_xscale*20,player.y-96,depth-1,draw_hp_m)
	var text__ = "Parrying!"
	if global.korean_text = 1
	{
	text__ = "패링!"
	}
	d_ef.d_text = text__
	d_ef.image_blend = c_white
	d_ef.image_xscale = 1.2
	d_ef.image_yscale = 1.2
	d_ef.target = -4
	}
}


if guarded = 1 && hurt != 0 && (!instance_exists(obj_wakdroid_ending) || global.real_ending != 0)
{
var d_ef = instance_create_depth(player.x,player.y-64,depth-1,draw_hp_m)
var text__ = "Low stanima"
if global.korean_text = 1
{
text__ = "스테미나 부족"
}
d_ef.d_text = text__
d_ef.image_blend = c_white
d_ef.image_xscale = 1.2
d_ef.image_yscale = 1.2
d_ef.target = -4
guarded = 0
}

if (hurt != 0)
{
guarded = 0
}


if (gravity <= 0 || on_floor = true) && jump > 0 && jump_vsp_up > 0
{
jump = 0
jump_end_motion = 1
jump_vsp_up = 0
image_index = 0
}



if sprite_index != move_sprite && sprite_index != jump_sprite && sprite_index != spin_sprite
{
attacked_before = 1
}
else
{
	if sprite_index != hurt_sprite
	{
	attacked_before = 0
	}
}

if hp > 0
{
already_droped_saber = 0
}

if n_sword_ != 0
{
	if image_alpha > 0 && hp <= 0 && attacked_before = 1 && already_droped_saber = 0 && suicided = 0 && !instance_exists(obj_wakdroid_ending) && global.back_to_origin_stage = 0
	{
	already_droped_saber = 1
		if n_sword_ = 1
		{
		var _d_saber = instance_create_depth(x,y-64,depth-1,droped_saber)
		_d_saber.image_index = 0
		var _d_saber = instance_create_depth(x,y-64,depth-1,droped_saber)
		_d_saber.image_index = 2
		}
		if n_sword_ = 2
		{
		var _d_saber = instance_create_depth(x,y-64,depth-1,droped_saber)
		_d_saber.image_index = 4
		}
		if n_sword_ = 3
		{
		var _d_saber = instance_create_depth(x,y-64,depth-1,droped_saber)
		_d_saber.image_index = 0
		}
		if n_sword_ = 4
		{
		var _d_saber = instance_create_depth(x,y-64,depth-1,droped_saber)
		_d_saber.image_index = 2
		}
		if n_sword_ = 5
		{
		var _d_saber = instance_create_depth(x,y-64,depth-1,droped_saber)
		_d_saber.image_index = 6
		}
	}
}


if timer__ > 0
{
timer__ ++
	if timer__ > 65
	{
	global.use_final_skill = -1
	timer__ = 0
	}
}


if (global.nickname == name) && just_come_check = 0
{
skill_combo_cancle_n_motion(0)
	if hurt = 0 && sprite_index != pl_move_skeleton_charging
	{
	global.m_hp += (global.hp - global.m_hp)*0.1
	}
	
	if (sprite_index = attack_laser_sprite || sprite_index = attack_laser_sprite_sec)
	{
		if global.use_final_skill = 0
		{
		global.use_final_skill = 1
		timer__ = 1
		}
	}
	else
	{
	global.use_final_skill = 0
	}


	if global.never_move = 0 && global.playing_scene = 0 && cannot_move = 0 && global.never_move_in_setting = 0
	{
		if (global.medical_slincer1 > 0 || global.medical_slincer2 > 0) && global.can_use_sylinge > 0
		{
			if keyboard_check_pressed(ord("R")) || gamepad_button_check_pressed(0,gp_shoulderlb)
			{
			global.poisoning = 0
			sfx_for_multiplayer(medical_sylinge_sfx,0,0.1)
			global.can_use_sylinge = 0
			w_alpha = 2
				if global.medical_slincer1 > 0
				{
				global.hp += max_hp/2
				var d_ef = instance_create_depth(player.x,player.y-64,depth-1,draw_hp_m)
				var text__ = "+"+string(max_hp/2)
				d_ef.d_text = text__
				d_ef.image_blend = $FF82FF90
				d_ef.image_xscale = 1.2
				d_ef.image_yscale = 1.2
				d_ef.target = -4
				}
				
				if global.medical_slincer2 > 0
				{
				global.awakening = 2
				}
			}
		}
	}


	
	
	if image_alpha > 0 && global.in_practice = 0
	{
		if global.rage_gauge = 100
		{
		cre_buble_ef(x+irandom_range(-16,16),y+irandom_range(-16,16),$FF6D52F2,$FF1C1CB2,irandom_range(-10,-30)/10,irandom_range(-8,-8)/10,0.1,0.1,0,0,1,1,1)
		}
		else
		{
			if image_blend = c_gray
			{
			cre_buble_ef(x+irandom_range(-16,16),y+irandom_range(-16,16),c_gray,c_black,irandom_range(-10,-30)/10,irandom_range(-8,-8)/10,0.1,0.1,0,0,1,1,1)
			}
			else
			{
				if keep_winning_ >= 2 && keep_winning_ < 5
				{
				cre_buble_ef(x+irandom_range(-16,16),y+irandom_range(-16,16),$FF7F9924,$FFDEFF23,irandom_range(-10,-30)/10,irandom_range(-8,-8)/10,0.1,0.1,0,0,1,1,1)
				}
	
				if keep_winning_ >= 5
				{
				cre_buble_ef(x+irandom_range(-16,16),y+irandom_range(-16,16),$FF994A81,$FFE47BFF,irandom_range(-10,-30)/10,irandom_range(-8,-8)/10,0.1,0.1,0,0,1,1,1)
				}
			}
		}
	}
	

	
	
	if global.hp <= 150
	{
	hp_r_alpha_timer ++
		if hp_r_alpha_timer > 50
		{
		global.r_hp_alpha = 1
		hp_r_alpha_timer = 0
		}
	}
	
	
n_sword_ = global.n_sword
	if show_my_sword > 0
	{
	show_my_sword -= 0.1
	}
	else
	{
		if draw_my_name < 1
		{
		draw_my_name += 0.1
		}
	}
	
returned_id = global.return_player_id;

	if abs(global.wind_dir) >= 23
	{
		if !place_meeting(x+3*sign(movement_speed_wind)+movement_speed_wind,y-0.5,floor_parents) && global.never_move = 0 && global.never_move_in_setting = 0 && global.never_move_in_setting = 0
		{
		x += movement_speed_wind*0.75
		}
	movement_speed_wind += (2.5*(global.wind_dir/23) - movement_speed_wind)*0.05
	}
	
	if global.hp <= 0
	{
	hurt = 2
	}


	if sprite_index = move_sprite
	{
		if floor(image_index) = 3 || floor(image_index) = 9
		{
			if footstep_sound_played = 0
			{
			footstep_sound_played = 1
			sfx_for_multiplayer(footstep_sfx,0,0.03*(double_pressed_run_key+double_pressed_run_key))
			}
		}
		else
		{
		footstep_sound_played = 0
		}
	}
	
	if pering > 0
	{
		if pering_sfx = 0
		{
		movement_speed = -image_xscale*7
		sfx_for_multiplayer(sound5,0,0.06)
		pering_sfx = 1
		}
	cannot_move = 1
	pering += 0.15
		if global.awakening > 1
		{
		pering += 0.03
		}
	red_glow_effect(sprite_index,image_index,0.1)
	image_index = pering
	sprite_index = pering_sprite
	global.movement_speed += (0 - global.movement_speed)*0.1
	movement_speed += (0 - movement_speed)*0.1
	
		if pering >= 2.5 && pering_sfx = 1
		{
		sfx_for_multiplayer(swing_lightsaber_sfx3,0,0.1)
		var _ef = instance_create_depth(x,y,depth-1,effect_attack4)
		_ef.image_index = (global.n_sword*4)+3
		_ef.image_xscale = image_xscale
		_ef.image_alpha = 0.8
		pering_sfx = 2
		}
		
		if pering >= 4 && pering < 6 && global.n_sword != 0 && global.n_sword != 5
		{
			if keyboard_check_pressed(ord(string(global.a_key))) || gamepad_button_check_pressed(0,gp_face2)
			{
			pering = 0
			pering_sfx = 0
			attack_ = 3
			cooltime = 1
			cannot_move = 1
				if global.movement_speed*2 > 5
				{
				global.movement_speed = global.movement_speed*2
				}
				else
				{
				global.movement_speed = 5*sign(global.movement_speed)
				}
			}
		}
		
		if pering > 7
		{
		cannot_move = 0
		pering = 0
		pering_sfx = 0
		sprite_index = move_sprite
		alarm[1] = 12
		}
	}
	
	
	if suicide > 0
	{
	global.movement_speed = 0
	movement_speed = 0
	global.playing_scene = 1
	obj_camera.tv_x = 1280*0.6
	obj_camera.tv_y = 720*0.6
	cannot_move = 1
	sprite_index = suicide_sprite
	image_index = suicide
	suicide += 0.13
		if suicide > 6 && suicide_sfx = 0
		{
		bloody(x-image_xscale,y,1)
		suicide_sfx = 1
		sfx_for_multiplayer(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0.2)
		sfx_for_multiplayer(sword_ready,0,0.1)
		}
	
		if suicide > 12.4
		{
		global.back_to_origin_stage = 1
		hp_minus_for_player(1047,self)
		global.hp = 0
		suicide = 0
		
			repeat(10)
			{
			var __i = choose(-1,1)
			var bl_ef = instance_create_depth(x+irandom_range(-16,16),y+irandom_range(16,32),depth-1,blood_on_floor)
			bl_ef.scale_dir = choose(-1,1)
			bl_ef.sprite_index = sprite991
				if global.blood_effect > 0
				{
				bl_ef.sprite_index = sprite99
				}
			}
		}
	}
	

	
w_alpha += (-0.01 - w_alpha)*0.1
	
	if image_alpha != 0
	{
		if global.hp <= 0 && ((global.in_practice = 0 && global.slow_motion = 0 && global.never_move = 0 && global.never_move_in_setting = 0) || (instance_exists(obj_wakdroid_ending) && global.slow_motion = 0))
		{
		var message_1 = ("Tip : 올려 베기("+string(global.w_key)+") 혹은 회전베기("+string(global.q_key)+")를 사용해보세요")
		var message_2 = ("Tip : 기절상태에서 점프(Space) 혹은 구르기(아래 방향키)시 빠르게 기절을 풀수 있습니다")
		var message_3 = ("Tip : "+string(global.e_key)+"키를 꾹 눌러 레이지 모드를 사용하면 일시적으로 스테미나가 무한이 됩니다")
		var random_message = choose(message_1,message_2,message_3)
		dev_mes(random_message)
		
		if global.none_wakgood_mode = false && global.left_time > 0 && (!instance_exists(obj_wakdroid_ending) || global.real_ending != 0)
		{
		sfx_for_multiplayer(choose(wakgood_hurt,wakgood_hurt2,kiyahou,died_sfx),0,0.85)
		}
		global.slow_motion = 1;
		room_speed = 15;
		global.never_move = 1
			if !instance_exists(obj_wakdroid_ending)
			{
			global.w_alpha = 1;
			}
		code.sepa_power += irandom_range(15,20)*choose(-1,1)
		code.sepa_alpha = 1.2
		//var a___ = audio_play_sound(last_scene,0,0)
		//audio_sound_gain(a___,0.7*global.master_volume*2*global.sfx_volume,0)
		
			if hurt = 0
			{
			hurt = 1
			}
			else
			{
			hurt = 10
			}
		

			repeat(irandom_range(8,12))
			{
			var _fl_blood = instance_create_depth(x,y,depth,blood_gravity)
			_fl_blood.hspeed = -(image_xscale*irandom_range(10,65)/10)
			_fl_blood.vspeed = -irandom_range(10,65)/10
			_fl_blood.sprite_index = sprite64
				if global.blood_effect > 0
				{
				_fl_blood.sprite_index = sprite64
				}
			}
		}
		
		
	
		if guard_cool_time > 0
		{
		guard_cool_time --
			if guard_cool_time <= 0
			{
			guard_cool_time = 0
			}
		}

		if hurt_cooltime > 0
		{
		hurt_cooltime --
			if hurt_cooltime <= 0
			{
			hurt_cooltime = 0
			}
		}

	
		if hurt_little > 0
		{
		cannot_move = 1
			if !place_meeting(x,y+5,floor_parents)
			{
			hurt = 1
			hurt_little = 0
			}
	
			if hurt = 0
			{
			image_index = 0
			}
		
		if cancled_attack = 0
		{
		sprite_index = hurt_sprite
		}
	
		hurt_little ++
			if hurt_little >= 45
			{
			cannot_move = 0
		
			if cancled_attack = 0
			{
			sprite_index = move_sprite
			}
			hurt_little = 0
			}
		}
	
	
		var random_dir = image_xscale
		if w_alpha <= 1 && hurt <= 25 && (dash_attack = 0 || dash_attack > 8) && global.hp > 0
		{
		var guarding_now = 0
		
		if global.automatic_guard_plus > 0
		{
		guarding_now = percentage_k(global.automatic_guard_plus*10)
		}
	
	
			var _placed_obj = instance_place(x,y,obj_obstacle)
			if _placed_obj >= 0
			{
				if hurt_cooltime = 0
				{
				hurt = 16
				hurt_cooltime = 16
				movement_speed = sign_k(image_xscale)*3
				hp_minus_for_player(123,_placed_obj)
				
			
				
					if !place_meeting(x,y+3,floor_parents)
					{
					y -= 2
					}
				vspeed = -3
				sfx_for_multiplayer(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0.2)
				}
			}
	
	
	
			var _placed_obj = instance_place(x,y,obj_bullet)
			if _placed_obj >= 0 && spin = 0
			{
			var check_guard = sign(x - _placed_obj.x)
		
			
				if check_guard = 0
				{
				check_guard = choose(-1,1)
				}
				
				var cal_m_ste = (1/global.guard_power)*1
				if guarding > 0 && global.stamina >= cal_m_ste && check_guard = sign(image_xscale)
				{
				guarding_now = 1
				}
				
				if guarding_now = 1 || charge_attack > 0 || pering > 0
				{
				global.stamina -= cal_m_ste
			
		
					if guard_cool_time = 0
					{
						if charge_attack = 0
						{
						movement_speed = image_xscale
						}
					guarding = 2.5
					w_alpha = 1
					guard_cool_time = 1
					sfx_for_multiplayer(guard,0,0.1)
	
					
					global.rage_gauge += 2
						repeat(8)
						{
						var _ef = instance_create_depth(x-image_xscale*4,y+irandom_range(-13,0),depth-1,effect_spark)
						_ef.hspeed = irandom_range(5,20)*random_dir
						_ef.vspeed = irandom_range(-4,2)
						}
					}
				instance_destroy(_placed_obj)
				}
				else
				{
					if hurt_cooltime = 0
					{
					hurt = 1
					hurt_cooltime = 1
					movement_speed = sign(_placed_obj.bullet_speed)
					hp_minus_for_player(50,_placed_obj)
				
			
				
						if !place_meeting(x,y+3,floor_parents)
						{
						y -= 2
						}
					vspeed = -3
					sfx_for_multiplayer(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0.2)
					}
				instance_destroy(_placed_obj)
				}
			}
			
			
			var _placed_obj = instance_place(x,y,ef_blood_dash_attack_attacked)
			if _placed_obj >= 0 && spin = 0 && dash_attack = 0
			{
			var check_guard = sign(x - _placed_obj.x)
		
			
				if check_guard = 0
				{
				check_guard = choose(-1,1)
				}
				
				var cal_m_ste = (6.7/global.guard_power)*1
				if guarding > 0 && global.stamina >= cal_m_ste && check_guard = sign(image_xscale)
				{
				guarding_now = 1
				}
				
				if guarding_now = 1 || charge_attack > 0 || pering > 0
				{
				global.stamina -= cal_m_ste
			
		
					if guard_cool_time = 0
					{
						if charge_attack = 0
						{
						movement_speed = image_xscale
						}
					guarding = 2.5
					w_alpha = 1
					guard_cool_time = 40
					sfx_for_multiplayer(guard,0,0.1)
	
					
						if global.rage_gauge >= 1
						{
						global.rage_gauge -= 1
						}
						repeat(8)
						{
						var _ef = instance_create_depth(x-image_xscale*4,y+irandom_range(-13,0),depth-1,effect_spark)
						_ef.hspeed = irandom_range(5,20)*random_dir
						_ef.vspeed = irandom_range(-4,2)
						}
					}
				}
				else
				{
					if hurt_cooltime = 0
					{
					hurt = 1
					hurt_cooltime = 40
					movement_speed = -sign(_placed_obj.image_xscale)*5
					
					if instance_exists(obj_wakdroid)
					{
					hp_minus_for_player(352,_placed_obj)
					}
					else
					{
					hp_minus_for_player(652,_placed_obj)
					}
				
			
				
						if !place_meeting(x,y+3,floor_parents)
						{
						y -= 2
						}
					vspeed = -3
					sfx_for_multiplayer(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0.2)
					}
				}
			}
			
			var _placed_obj = instance_place(x,y,spin_attack_devil)
			if _placed_obj >= 0 && spin = 0
			{
			var check_guard = sign(x - _placed_obj.x)
		
			
				if check_guard = 0
				{
				check_guard = choose(-1,1)
				}
				
				var cal_m_ste = (8/global.guard_power)*1
				if guarding > 0 && global.stamina >= cal_m_ste && check_guard = sign(image_xscale)
				{
				guarding_now = 1
				}
				
				if guarding_now = 1 || charge_attack > 0 || pering > 0
				{
				global.stamina -= cal_m_ste
			
		
					if guard_cool_time = 0
					{
						if charge_attack = 0
						{
						movement_speed = image_xscale
						}
					guarding = 2.5
					w_alpha = 1
					guard_cool_time = 5
					sfx_for_multiplayer(guard,0,0.1)
	
					
						if global.rage_gauge >= 1
						{
						global.rage_gauge -= 1
						}
						repeat(8)
						{
						var _ef = instance_create_depth(x-image_xscale*4,y+irandom_range(-13,0),depth-1,effect_spark)
						_ef.hspeed = irandom_range(5,20)*random_dir
						_ef.vspeed = irandom_range(-4,2)
						}
					}
				}
				else
				{
					if hurt_cooltime = 0
					{
					hurt = 1
					hurt_cooltime = 30
					movement_speed = -sign(_placed_obj.image_xscale)*4
					
					hp_minus_for_player(793,_placed_obj)
				
			
				
						if !place_meeting(x,y+3,floor_parents)
						{
						y -= 2
						}
					vspeed = -3
					sfx_for_multiplayer(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0.2)
					}
				}
			}
			
			
			
			var _placed_obj = instance_place(x,y,obj_jellyfish)
			if _placed_obj >= 0 && spin = 0
			{
				if hurt_cooltime = 0
				{
				hurt = 1
				hurt_cooltime = 30
				movement_speed = -sign(_placed_obj.image_xscale)*4
				hp_minus_for_player(64,_placed_obj)
				
			
				
					if !place_meeting(x,y+3,floor_parents)
					{
					y -= 2
					}
				vspeed = -3
				sfx_for_multiplayer(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0.2)
				}
			}
			
			
			
			
			
			var _placed_obj = instance_place(x,y,obj_lightning_sec)
			if _placed_obj >= 0 && spin = 0 && _placed_obj.image_index >= 3 && _placed_obj.image_index < 10
			{
			var check_guard = sign(x - _placed_obj.x)
		
			
				if check_guard = 0
				{
				check_guard = choose(-1,1)
				}
				
				var cal_m_ste = (1.8/global.guard_power)*8.7
				if guarding > 0 && global.stamina >= cal_m_ste && check_guard = sign(image_xscale)
				{
				guarding_now = 1
				}
				
				if guarding_now = 1 || charge_attack > 0 || pering > 0
				{
				global.stamina -= cal_m_ste
			
		
					if guard_cool_time = 0
					{
						if charge_attack = 0
						{
						movement_speed = image_xscale
						}
					guarding = 2.5
					w_alpha = 1
					guard_cool_time = 5
					sfx_for_multiplayer(guard,0,0.1)
					sfx_for_multiplayer(sparking_sound,0,0.1)
	
					

						repeat(8)
						{
						var _ef = instance_create_depth(x-image_xscale*4,y+irandom_range(-13,0),depth-1,effect_spark)
						_ef.hspeed = irandom_range(5,20)*random_dir
						_ef.vspeed = irandom_range(-4,2)
						}
					}
				}
				else
				{
					if hurt_cooltime = 0
					{
					global.stamina = 0
					hurt = 1
					hurt_cooltime = 20
					movement_speed = -sign(_placed_obj.image_xscale)*4
					hp_minus_for_player(742,_placed_obj)
					sfx_for_multiplayer(sparking_sound,0,0.1)

				
					y -= 4
					vspeed = -4
					sfx_for_multiplayer(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0.2)
					}
				}
			}
			
			
			
			
			var _placed_obj = instance_place(x,y,obj_lightning)
			if _placed_obj >= 0 && spin = 0 && _placed_obj.image_index >= 3 && _placed_obj.image_index < 6
			{
			var check_guard = sign(x - _placed_obj.x)
		
			
				if check_guard = 0
				{
				check_guard = choose(-1,1)
				}
				
				var cal_m_ste = (1.8/global.guard_power)*8
				if guarding > 0 && global.stamina >= cal_m_ste && check_guard = sign(image_xscale)
				{
				guarding_now = 1
				}
				
				if guarding_now = 1 || charge_attack > 0 || pering > 0
				{
				global.stamina -= cal_m_ste
			
		
					if guard_cool_time = 0
					{
						if charge_attack = 0
						{
						movement_speed = image_xscale
						}
					guarding = 2.5
					w_alpha = 1
					guard_cool_time = 5
					sfx_for_multiplayer(guard,0,0.1)
					sfx_for_multiplayer(sparking_sound,0,0.1)
	
					

						repeat(8)
						{
						var _ef = instance_create_depth(x-image_xscale*4,y+irandom_range(-13,0),depth-1,effect_spark)
						_ef.hspeed = irandom_range(5,20)*random_dir
						_ef.vspeed = irandom_range(-4,2)
						}
					}
				}
				else
				{
					if hurt_cooltime = 0
					{
					global.stamina = 0
					hurt = 1
					hurt_cooltime = 20
					movement_speed = -sign(_placed_obj.image_xscale)*4
					hp_minus_for_player(389,_placed_obj)
					sfx_for_multiplayer(sparking_sound,0,0.1)

				
					y -= 4
					vspeed = -4
					sfx_for_multiplayer(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0.2)
					}
				}
			}
			
			
			
			
			
			var _placed_obj = instance_place(x,y,new_simhaedoo)
			if _placed_obj >= 0 && spin = 0 && abs(_placed_obj.speed) >= 1
			{
			var check_guard = sign(x - _placed_obj.x)
		
			
				if check_guard = 0
				{
				check_guard = choose(-1,1)
				}
				
				var cal_m_ste = (1.8/global.guard_power)*1
				if guarding > 0 && global.stamina >= cal_m_ste && check_guard = sign(image_xscale)
				{
				guarding_now = 1
				}
				
				if guarding_now = 1 || charge_attack > 0 || pering > 0
				{
				global.stamina -= cal_m_ste
			
		
					if guard_cool_time = 0
					{
						if charge_attack = 0
						{
						movement_speed = image_xscale
						}
					guarding = 2.5
					w_alpha = 1
					guard_cool_time = 5
					sfx_for_multiplayer(guard,0,0.1)
	
					
						if global.rage_gauge >= 1
						{
						global.rage_gauge -= 1
						}
						repeat(8)
						{
						var _ef = instance_create_depth(x-image_xscale*4,y+irandom_range(-13,0),depth-1,effect_spark)
						_ef.hspeed = irandom_range(5,20)*random_dir
						_ef.vspeed = irandom_range(-4,2)
						}
					}
				}
				else
				{
					if hurt_cooltime = 0
					{
					hurt = 1
					hurt_cooltime = 30
					movement_speed = -sign(_placed_obj.image_xscale)*4
					hp_minus_for_player(173,_placed_obj)
				
			
				
						if !place_meeting(x,y+3,floor_parents)
						{
						y -= 2
						}
					vspeed = -3
					sfx_for_multiplayer(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0.2)
					}
				}
			}
			
			
			var _placed_obj = instance_place(x,y,simhae_doo_bullet)
			if _placed_obj >= 0 && spin = 0 && _placed_obj.image_alpha >= 0.3
			{
			var check_guard = sign(x - _placed_obj.x)
		
			
				if check_guard = 0
				{
				check_guard = choose(-1,1)
				}
				
				var cal_m_ste = (1/global.guard_power)*1
				if guarding > 0 && global.stamina >= cal_m_ste && check_guard = sign(image_xscale)
				{
				guarding_now = 1
				}
				
				if guarding_now = 1 || charge_attack > 0 || pering > 0
				{
				global.stamina -= cal_m_ste
			
		
					if guard_cool_time = 0
					{
						if charge_attack = 0
						{
						movement_speed = image_xscale
						}
					guarding = 2.5
					w_alpha = 1
					guard_cool_time = 1
					sfx_for_multiplayer(guard,0,0.1)
	
					
						if global.rage_gauge >= 1
						{
						global.rage_gauge -= 1
						}
						repeat(8)
						{
						var _ef = instance_create_depth(x-image_xscale*4,y+irandom_range(-13,0),depth-1,effect_spark)
						_ef.hspeed = irandom_range(5,20)*random_dir
						_ef.vspeed = irandom_range(-4,2)
						}
					}
				instance_destroy(_placed_obj)
				}
				else
				{
					if hurt_cooltime = 0
					{
					hurt = 1
					hurt_cooltime = 1
					movement_speed = sign(_placed_obj.bullet_speed)*4
					hp_minus_for_player(77,_placed_obj)
				
			
				
						if !place_meeting(x,y+3,floor_parents)
						{
						y -= 2
						}
					vspeed = -3
					sfx_for_multiplayer(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0.2)
					}
				instance_destroy(_placed_obj)
				}
			}
			
			
			var _placed_obj = instance_place(x,y,simhaedoo_knockback_attacked)
			if _placed_obj >= 0 && spin = 0
			{
			var check_guard = sign(x - _placed_obj.x)
		
			
				if check_guard = 0
				{
				check_guard = choose(-1,1)
				}
				
				var cal_m_ste = (1/global.guard_power)*6.6
				if guarding > 0 && global.stamina >= cal_m_ste && check_guard = sign(image_xscale)
				{
				guarding_now = 1
				}
				
				if guarding_now = 1 || charge_attack > 0 || pering > 0
				{
				global.stamina -= cal_m_ste
			
		
					if guard_cool_time = 0
					{
						if charge_attack = 0
						{
						movement_speed = check_guard*5
						}
					guarding = 2.5
					w_alpha = 1
					guard_cool_time = 6
					sfx_for_multiplayer(guard,0,0.1)
	
					
					global.rage_gauge += 2

						repeat(8)
						{
						var _ef = instance_create_depth(x-image_xscale*4,y+irandom_range(-13,0),depth-1,effect_spark)
						_ef.hspeed = irandom_range(5,20)*random_dir
						_ef.vspeed = irandom_range(-4,2)
						}
					}
				_placed_obj.des = 1
				instance_destroy(_placed_obj)
				}
				else
				{
					if hurt_cooltime = 0
					{
					hurt = 1
					hurt_cooltime = 8
					movement_speed = check_guard*4
					hp_minus_for_player(139,_placed_obj)
				
			
				
						if !place_meeting(x,y+3,floor_parents)
						{
						y -= 1
						}
					vspeed = -4
					sfx_for_multiplayer(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0.2)
					}
				instance_destroy(_placed_obj)
				}
			}
		
		
			var _placed_obj = instance_place(x,y,effect_lilla_attack)
			if _placed_obj >= 0 && spin = 0
			{
			var check_guard = sign(x - _placed_obj.x)
		
			
				if check_guard = 0
				{
				check_guard = choose(-1,1)
				}
				
				var cal_m_ste = (1/global.guard_power)*9
				if guarding > 0 && global.stamina >= cal_m_ste && check_guard = sign(image_xscale)
				{
				guarding_now = 1
				}
				
				if guarding_now = 1 || charge_attack > 0 || pering > 0
				{
				global.stamina -= cal_m_ste
			
		
					if guard_cool_time = 0
					{
						if charge_attack = 0
						{
						movement_speed = check_guard*5
						}
					guarding = 2.5
					w_alpha = 1
					guard_cool_time = 6
					sfx_for_multiplayer(guard,0,0.1)
	
					
					global.rage_gauge += 2

						repeat(8)
						{
						var _ef = instance_create_depth(x-image_xscale*4,y+irandom_range(-13,0),depth-1,effect_spark)
						_ef.hspeed = irandom_range(5,20)*random_dir
						_ef.vspeed = irandom_range(-4,2)
						}
					}
				_placed_obj.des = 1
				instance_destroy(_placed_obj)
				}
				else
				{
					if hurt_cooltime = 0
					{
					hurt = 1
					hurt_cooltime = 8
					movement_speed = check_guard*4
					hp_minus_for_player(142,_placed_obj)
				
			
				
						if !place_meeting(x,y+3,floor_parents)
						{
						y -= 1
						}
					vspeed = -4
					sfx_for_multiplayer(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0.2)
					}
				instance_destroy(_placed_obj)
				}
			}
			
			
			var _placed_obj = instance_place(x,y,obj_simhaedoo_ring)
			if _placed_obj >= 0 && _placed_obj.image_alpha > 0.4
			{
			var check_guard = sign(x - _placed_obj.x)
				if hurt_cooltime = 0
				{
				hurt = 1
				hurt_cooltime = 8
				movement_speed = check_guard*6
				hp_minus_for_player(333,_placed_obj)
				
			
				
				y -= 2.5
				vspeed = -4
				sfx_for_multiplayer(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0.2)
				}
			}
		
		
			var _placed_obj = instance_place(x,y,angel_ring_attack)
			if _placed_obj >= 0 && spin = 0
			{
			var check_guard = sign(x - _placed_obj.x)
			
				if check_guard = 0
				{
				check_guard = choose(-1,1)
				}
				
				var cal_m_ste = (1/global.guard_power)*9
				if guarding > 0 && global.stamina >= cal_m_ste && check_guard = sign(image_xscale)
				{
				guarding_now = 1
				}
				
				if guarding_now = 1 || charge_attack > 0 || pering > 0
				{
				global.stamina -= cal_m_ste
			
		
					if guard_cool_time = 0
					{
						if charge_attack = 0
						{
						movement_speed = image_xscale
						}
					guarding = 2.5
					w_alpha = 1
					guard_cool_time = 6
					sfx_for_multiplayer(guard,0,0.1)
	
					
					global.rage_gauge += 2

						repeat(8)
						{
						var _ef = instance_create_depth(x-image_xscale*4,y+irandom_range(-13,0),depth-1,effect_spark)
						_ef.hspeed = irandom_range(5,20)*random_dir
						_ef.vspeed = irandom_range(-4,2)
						}
					}
				}
				else
				{
					if hurt_cooltime = 0
					{
					hurt = 1
					hurt_cooltime = 8
					movement_speed = check_guard*6
					hp_minus_for_player(733,_placed_obj)
				
			
				
						if !place_meeting(x,y+3,floor_parents)
						{
						y -= 1
						}
					vspeed = -4
					sfx_for_multiplayer(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0.2)
					}
				}
			}
			
			
			
			
			
			var _placed_obj = instance_place(x,y,falling_spear)
			if _placed_obj >= 0 && spin = 0 && _placed_obj.timer <= 5
			{
			var check_guard = sign(x - _placed_obj.x)
			
				if check_guard = 0
				{
				check_guard = choose(-1,1)
				}
				
				var cal_m_ste = (1/global.guard_power)*1
				if guarding > 0 && global.stamina >= cal_m_ste && check_guard = sign(image_xscale)
				{
				guarding_now = 1
				}
				
				if guarding_now = 1 || charge_attack > 0 || pering > 0
				{
				global.stamina -= cal_m_ste
			
		
					if guard_cool_time = 0
					{
						if charge_attack = 0
						{
						movement_speed = image_xscale
						}
					guarding = 2.5
					w_alpha = 1
					guard_cool_time = 6
					sfx_for_multiplayer(guard,0,0.1)
	
					
					global.rage_gauge += 2

						repeat(8)
						{
						var _ef = instance_create_depth(x-image_xscale*4,y+irandom_range(-13,0),depth-1,effect_spark)
						_ef.hspeed = irandom_range(5,20)*random_dir
						_ef.vspeed = irandom_range(-4,2)
						}
					}
				}
				else
				{
					if hurt_cooltime = 0
					{
					hurt = 1
					hurt_cooltime = 6
					hp_minus_for_player(259,_placed_obj)
				
			
				
						if !place_meeting(x,y+3,floor_parents)
						{
						y -= 1
						}
					vspeed = -4
					sfx_for_multiplayer(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0.2)
					}
				}
			}
			
		
		
		
			var _placed_obj = instance_place(x,y,rage_mode_knockback_attacked)
			if _placed_obj >= 0
			{
			var check_guard = sign(x - _placed_obj.x)
			
				if hurt_cooltime = 0
				{
				hurt = 1
				hurt_cooltime = 10
				movement_speed = check_guard*5
			
					if !place_meeting(x,y+3,floor_parents)
					{
					y -= 1
					}
				vspeed = -4
				sfx_for_multiplayer(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0.2)
				
				var ins_near = instance_nearest(x,y,obj_hand)
					if instance_exists(ins_near) && point_distance(x,y,ins_near.x,ins_near.y) <= 128
					{
					hp_minus_for_player(384,_placed_obj)
					}
					
				
					if (instance_exists(obj_messi) && obj_messi.activated > 0)
					{
					hp_minus_for_player(66,_placed_obj)
					}
					

					
				var ins_near = instance_nearest(x,y,obj_twin_eye)
					if instance_exists(ins_near) && point_distance(x,y,ins_near.x,ins_near.y) <= 128
					{
					hp_minus_for_player(352,_placed_obj)
					}
					
				var ins_near = instance_nearest(x,y,obj_twin_eye_another)
					if instance_exists(ins_near) && point_distance(x,y,ins_near.x,ins_near.y) <= 130
					{
					hp_minus_for_player(352,_placed_obj)
					}
					
				var ins_near = instance_nearest(x,y,obj_simhae_doo)
					if instance_exists(ins_near) && place_meeting(x,y,ins_near) && spin = 0 && dash_attack = 0
					{
					hp_minus_for_player(232,_placed_obj)
					}
					
				var ins_near = instance_nearest(x,y,obj_ball)
					if instance_exists(ins_near) && point_distance(x,y,ins_near.x,ins_near.y) <= 200
					{
					movement_speed = ins_near.hspeed*0.5
					hp_minus_for_player(225,_placed_obj)
					}
					
				var ins_near = instance_nearest(x,y,angel_spear)
					if instance_exists(ins_near) && point_distance(x,y,ins_near.x,ins_near.y) <= 64
					{
					movement_speed = image_xscale*5
					hp_minus_for_player(1030,_placed_obj)
					}
					
					if (instance_exists(obj_angel) && obj_angel.activated > 0) && point_distance(x,y,ins_near.x,ins_near.y) > 64
					{
					hp_minus_for_player(257,_placed_obj)
					}

					
				var ins_near = instance_nearest(x,y,obj_worm)
					if instance_exists(ins_near) && point_distance(x,y,ins_near.x,ins_near.y) <= 150 && spin = 0 && dash_attack = 0
					{
					vspeed -= 2
					hp_minus_for_player(628,_placed_obj)
					}
				}
			}
		
		
		
			var _placed_obj = instance_place(x,y,effect_sting_attacked)
			if _placed_obj >= 0
			{
			var check_guard = sign(x - _placed_obj.x)
			
				if check_guard = 0
				{
				check_guard = choose(-1,1)
				}
				
				var cal_m_ste = (1/global.guard_power)*3
				if guarding > 0 && global.stamina >= cal_m_ste && check_guard = sign(image_xscale)
				{
				guarding_now = 1
				}
				
				if guarding_now = 1 || charge_attack > 0 || pering > 0
				{
				global.stamina -= cal_m_ste
			
		
					if guard_cool_time = 0
					{
						if charge_attack = 0
						{
						movement_speed = _placed_obj.image_angle
						}
					guarding = 2.5
					w_alpha = 1
					guard_cool_time = 6
					sfx_for_multiplayer(guard,0,0.1)
	
					
					global.rage_gauge += 2

						repeat(8)
						{
						var _ef = instance_create_depth(x-image_xscale*4,y+irandom_range(-13,0),depth-1,effect_spark)
						_ef.hspeed = irandom_range(5,20)*random_dir
						_ef.vspeed = irandom_range(-4,2)
						}
					}
				}
				else
				{
					if hurt_cooltime = 0
					{
					global.rage_gauge -= 2
					hurt = 1
					hurt_cooltime = 32
					movement_speed = _placed_obj.image_angle
					hp_minus_for_player(58,_placed_obj)
				
				
						repeat(8)
						{
						var _ef = instance_create_depth(x-image_xscale*4,y+irandom_range(-13,0),depth-1,effect_spark)
						_ef.hspeed = irandom_range(5,20)*(-check_guard)
						_ef.vspeed = irandom_range(-4,2)
						}
				
						if !place_meeting(x,y+3,floor_parents)
						{
						y -= 1
						}
					vspeed = -2.5
					sfx_for_multiplayer(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0.2)
					}
				}
			}
		


			var _placed_obj = instance_place(x,y,effect_quake_attacked)
			if _placed_obj >= 0 && spin = 0
			{
			var check_guard = sign(x - _placed_obj.x)
			
				if check_guard = 0
				{
				check_guard = choose(-1,1)
				}
				
				var cal_m_ste = (1/global.guard_power)*2
				if guarding > 0 && global.stamina >= cal_m_ste && check_guard = sign(image_xscale)
				{
				guarding_now = 1
				}
				
				if guarding_now = 1 || charge_attack > 0 || pering > 0
				{
				global.stamina -= cal_m_ste
			
		
					if guard_cool_time = 0
					{
						if charge_attack = 0
						{
						movement_speed = image_xscale*6
						}
					guarding = 2.5
					w_alpha = 1
					guard_cool_time = 6
					sfx_for_multiplayer(guard,0,0.1)
	
					
					global.rage_gauge += 2

						repeat(8)
						{
						var _ef = instance_create_depth(x-image_xscale*4,y+irandom_range(-13,0),depth-1,effect_spark)
						_ef.hspeed = irandom_range(5,20)*random_dir
						_ef.vspeed = irandom_range(-4,2)
						}
					}
				}
				else
				{
					if hurt_cooltime = 0
					{
					global.rage_gauge -= 2
					hurt = 1
					hurt_cooltime = 8
					movement_speed = check_guard
						if instance_exists(obj_wakdroid)
						{
						hp_minus_for_player(58,_placed_obj)
						}
						else
						{
						hp_minus_for_player(43,_placed_obj)
						}
				
				
						if !place_meeting(x,y+3,floor_parents)
						{
						y -= 1
						}
					vspeed = -4
					sfx_for_multiplayer(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0.2)
					}
				}
			}



			var _placed_obj = instance_place(x,y,effect_attacked)
			if _placed_obj >= 0 && spin = 0
			{
			var check_guard = sign(x - _placed_obj.x)
			
				if check_guard = 0
				{
				check_guard = choose(-1,1)
				}
				
				var cal_m_ste = (1/global.guard_power)*1.8
				if guarding > 0 && global.stamina >= cal_m_ste && check_guard = sign(image_xscale)
				{
				guarding_now = 1
				}
				
				if guarding_now = 1 || charge_attack > 0 || pering > 0
				{
				global.stamina -= cal_m_ste
			
		
					if guard_cool_time = 0
					{
						if charge_attack = 0
						{
						movement_speed = image_xscale*2.2
						}
					guarding = 2.5
					w_alpha = 1
					guard_cool_time = 7
					sfx_for_multiplayer(guard,0,0.1)
	
					
					global.rage_gauge += 2

						repeat(8)
						{
						var _ef = instance_create_depth(x-image_xscale*4,y+irandom_range(-13,0),depth-1,effect_spark)
						_ef.hspeed = irandom_range(5,20)*random_dir
						_ef.vspeed = irandom_range(-4,2)
						}
					}
				}
				else
				{
					if hurt_cooltime = 0
					{
					hurt = 1
					hurt_cooltime = 10
					movement_speed = check_guard
					hp_minus_for_player(89,_placed_obj)
				
				
						if !place_meeting(x,y+3,floor_parents)
						{
						y -= 1
						vspeed = -2
						}
					sfx_for_multiplayer(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0.2)
					}
				}
			}
		
		
		
			var _placed_obj = instance_place(x,y,effect_jump_attack_attacked)
			if _placed_obj >= 0 && spin = 0
			{
			var check_guard = sign(x - _placed_obj.x)
			
				if check_guard = 0
				{
				check_guard = choose(-1,1)
				}
				
				var cal_m_ste = (1/global.guard_power)
				if guarding > 0 && global.stamina >= cal_m_ste && check_guard = sign(image_xscale)
				{
				guarding_now = 1
				}
				
				if guarding_now = 1 || charge_attack > 0 || pering > 0
				{
				global.stamina -= cal_m_ste
			
		
					if guard_cool_time = 0
					{
						if charge_attack = 0
						{
						movement_speed = image_xscale*0.5
						}
					guarding = 2.5
					w_alpha = 1
					guard_cool_time = 5
					sfx_for_multiplayer(guard,0,0.1)
	
					
					global.rage_gauge += 2

						repeat(8)
						{
						var _ef = instance_create_depth(x-image_xscale*4,y+irandom_range(-13,0),depth-1,effect_spark)
						_ef.hspeed = irandom_range(5,20)*random_dir
						_ef.vspeed = irandom_range(-4,2)
						}
					}
				}
				else
				{
					if hurt_cooltime = 0
					{
					hurt = 1
					hurt_cooltime = 5
					movement_speed = check_guard*0.5
					hp_minus_for_player(21,_placed_obj)
				
				
						if on_floor = true
						{
						y -= 1
						}
					vspeed = -4.1
					sfx_for_multiplayer(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0.2)
					}
				}
			}
		
		
			var _placed_obj = instance_place(x,y,effect_down_attack_attacked)
			if _placed_obj >= 0 && spin = 0
			{
			var check_guard = sign(x - _placed_obj.x)
			
				if check_guard = 0
				{
				check_guard = choose(-1,1)
				}
				
				var cal_m_ste = (1/global.guard_power)*0.7
				if guarding > 0 && global.stamina >= cal_m_ste && check_guard = sign(image_xscale)
				{
				guarding_now = 1
				}
				
				if guarding_now = 1 || charge_attack > 0 || pering > 0
				{
				global.stamina -= cal_m_ste
			
		
					if guard_cool_time = 0
					{
						if charge_attack = 0
						{
						movement_speed = image_xscale*1.8
						}
					guarding = 2.5
					w_alpha = 1
					guard_cool_time = 3
					sfx_for_multiplayer(guard,0,0.1)
	
					
					global.rage_gauge += 2

						repeat(8)
						{
						var _ef = instance_create_depth(x-image_xscale*4,y+irandom_range(-13,0),depth-1,effect_spark)
						_ef.hspeed = irandom_range(5,20)*random_dir
						_ef.vspeed = irandom_range(-4,2)
						}
					}
				}
				else
				{
					if hurt_cooltime = 0
					{
					hurt = 1
					hurt_cooltime = 3
					movement_speed = check_guard*0.2
					hp_minus_for_player(18,_placed_obj)
				

					gravity = 0.36/global.low_gravity_plus
					vspeed += 4
					sfx_for_multiplayer(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0.2)
					}
				}
			}
		
		
		
			var _placed_obj = instance_place(x,y,effect_attack1_attacked)
			if _placed_obj >= 0 && spin = 0
			{
			var check_guard = sign(x - _placed_obj.x)
			
				if check_guard = 0
				{
				check_guard = choose(-1,1)
				}
				
				var cal_m_ste = (1/global.guard_power)*0.15
				if guarding > 0 && global.stamina >= cal_m_ste && check_guard = sign(image_xscale)
				{
				guarding_now = 1
				}
				
				if guarding_now = 1 || charge_attack > 0 || pering > 0
				{
				global.stamina -= cal_m_ste
			
		
					if guard_cool_time = 0
					{
						if charge_attack = 0
						{
						movement_speed = image_xscale*3
						}
					guarding = 2.5
					w_alpha = 1
					guard_cool_time = 13
					sfx_for_multiplayer(guard,0,0.1)
	
					
					global.rage_gauge += 2

						repeat(8)
						{
						var _ef = instance_create_depth(x-image_xscale*4,y+irandom_range(-13,0),depth-1,effect_spark)
						_ef.hspeed = irandom_range(5,20)*random_dir
						_ef.vspeed = irandom_range(-4,2)
						}
					}
				}
				else
				{
					if hurt_cooltime = 0
					{
					hurt = 1
					hurt_cooltime = 13
					movement_speed = check_guard*2
					hp_minus_for_player(72,_placed_obj)
				
				
						if on_floor != true
						{
						vspeed = 4.3
						}
					sfx_for_multiplayer(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0.2)
					}
				}
			}
		
		
		
			var _placed_obj = instance_place(x,y,effect_attack2_attacked)
			if _placed_obj >= 0 && spin = 0
			{
			var check_guard = sign(x - _placed_obj.x)
			
				if check_guard = 0
				{
				check_guard = choose(-1,1)
				}
				
				var cal_m_ste = (1/global.guard_power)*0.2
				if guarding > 0 && global.stamina >= cal_m_ste && check_guard = sign(image_xscale)
				{
				guarding_now = 1
				}
				
				if guarding_now = 1 || charge_attack > 0 || pering > 0
				{
				global.stamina -= cal_m_ste
			
		
					if guard_cool_time = 0
					{
						if charge_attack = 0
						{
						movement_speed = image_xscale*2
						}
					guarding = 2.5
					w_alpha = 1
					guard_cool_time = 10
					sfx_for_multiplayer(guard,0,0.1)
	
					
					global.rage_gauge += 2

						repeat(8)
						{
						var _ef = instance_create_depth(x-image_xscale*4,y+irandom_range(-13,0),depth-1,effect_spark)
						_ef.hspeed = irandom_range(5,20)*random_dir
						_ef.vspeed = irandom_range(-4,2)
						}
					}
				}
				else
				{
					if hurt_cooltime = 0
					{
					hurt = 1
					hurt_cooltime = 10
					movement_speed = check_guard*3
					hp_minus_for_player(83,_placed_obj)
				

					y -= 2
					vspeed = -2.9
					sfx_for_multiplayer(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0.2)
					}
				}
			}
		
		
		
			var _placed_obj = instance_place(x,y,effect_attack3_attacked)
			if _placed_obj >= 0 && spin = 0
			{
			var check_guard = sign(x - _placed_obj.x)
			
				if check_guard = 0
				{
				check_guard = choose(-1,1)
				}
				
				var cal_m_ste = (1/global.guard_power)*0.3
				if guarding > 0 && global.stamina >= cal_m_ste && check_guard = sign(image_xscale)
				{
				guarding_now = 1
				}
				
				if guarding_now = 1 || charge_attack > 0 || pering > 0
				{
				global.stamina -= cal_m_ste
			
		
					if guard_cool_time = 0
					{
						if charge_attack = 0
						{
						movement_speed = image_xscale
						}
					guarding = 2.5
					w_alpha = 1
					guard_cool_time = 10
					sfx_for_multiplayer(guard,0,0.1)
	
					
					global.rage_gauge += 2

						repeat(8)
						{
						var _ef = instance_create_depth(x-image_xscale*4,y+irandom_range(-13,0),depth-1,effect_spark)
						_ef.hspeed = irandom_range(5,20)*random_dir
						_ef.vspeed = irandom_range(-4,2)
						}
					}
				}
				else
				{
					if hurt_cooltime = 0
					{
					hurt = 1
					hurt_cooltime = 10
					movement_speed = check_guard*3
					hp_minus_for_player(92,_placed_obj)
				
				
					y -= 2
					vspeed = -3.1
					sfx_for_multiplayer(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0.2)
					}
				}
			}
			
			var _placed_obj = instance_place(x,y,effect_attack4_attacked)
			if _placed_obj >= 0 && spin = 0
			{
			var check_guard = sign(x - _placed_obj.x)
			
				if check_guard = 0
				{
				check_guard = choose(-1,1)
				}
				
				var cal_m_ste = (1/global.guard_power)*1.5
				if guarding > 0 && global.stamina >= cal_m_ste && check_guard = sign(image_xscale)
				{
				guarding_now = 1
				}
				
				if guarding_now = 1 || charge_attack > 0 || pering > 0
				{
				global.stamina -= cal_m_ste
			
		
					if guard_cool_time = 0
					{
						if charge_attack = 0
						{
						movement_speed = image_xscale*7
						}
					guarding = 2.5
					w_alpha = 1
					guard_cool_time = 10
					sfx_for_multiplayer(guard,0,0.1)
	
					
					global.rage_gauge += 2

						repeat(8)
						{
						var _ef = instance_create_depth(x-image_xscale*4,y+irandom_range(-13,0),depth-1,effect_spark)
						_ef.hspeed = irandom_range(5,20)*random_dir
						_ef.vspeed = irandom_range(-4,2)
						}
					}
				}
				else
				{
					if hurt_cooltime = 0
					{
					hurt = 1
					hurt_cooltime = 10
					movement_speed = check_guard*4
					hp_minus_for_player(108,_placed_obj)
				
				
					vspeed = 2
					sfx_for_multiplayer(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0.2)
					}
				}
			}

		
		
		
			var _placed_obj = instance_place(x,y,effect_special_skill_attacked)
			if _placed_obj >= 0
			{
			var check_guard = sign(x - _placed_obj.x)
			
			if check_guard = 0
			{
			check_guard = choose(-1,1)
			}
				
			var cal_m_ste = (1/global.guard_power)*0.3
			if guarding > 0 && cal_m_ste && check_guard = sign(image_xscale)
			{
			guarding_now = 1
			}
				
			if guarding_now = 1 || charge_attack > 0 || pering > 0
			{
			global.stamina -= cal_m_ste
			
		
				if guard_cool_time = 0
				{
					if charge_attack = 0
					{
					movement_speed = image_xscale
					}
				guarding = 2.5
				w_alpha = 1
				guard_cool_time = 1
				sfx_for_multiplayer(guard,0,0.1)
	
				
				global.rage_gauge += 1

					repeat(8)
					{
					var _ef = instance_create_depth(x-image_xscale*4,y+irandom_range(-13,0),depth-1,effect_spark)
					_ef.hspeed = irandom_range(5,20)*random_dir
					_ef.vspeed = irandom_range(-4,2)
					}
				}
			}
			else
			{
				if hurt_cooltime = 0
				{
				global.rage_gauge --
				hurt = 1
				hurt_cooltime = 3
				movement_speed = -check_guard
				hp_minus_for_player(99,_placed_obj)
				
				
					if on_floor = true
					{
					y -= 1
					}
				vspeed -= 1
				sfx_for_multiplayer(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0.2)
				}
			}
		}
		
		
		
			var _placed_obj = instance_place(x,y,effect_special_skill_sec_attacked)
			if _placed_obj >= 0
			{
			var check_guard = sign(x - _placed_obj.x)
			
			if check_guard = 0
			{
			check_guard = choose(-1,1)
			}
				
			var cal_m_ste = (1/global.guard_power)*0.1
			if guarding > 0 && global.stamina >= cal_m_ste && check_guard = sign(image_xscale)
			{
			guarding_now = 1
			}
				
			if guarding_now = 1 || charge_attack > 0 || pering > 0
			{
			global.stamina -= cal_m_ste
			
		
				if guard_cool_time = 0
				{
					if charge_attack = 0
					{
					movement_speed = image_xscale*4
					}
				guarding = 2.5
				w_alpha = 1
				guard_cool_time = 5
				sfx_for_multiplayer(guard,0,0.1)
	
				
				global.rage_gauge += 1

					repeat(8)
					{
					var _ef = instance_create_depth(x-image_xscale*4,y+irandom_range(-13,0),depth-1,effect_spark)
					_ef.hspeed = irandom_range(5,20)*random_dir
					_ef.vspeed = irandom_range(-4,2)
					}
				}
			}
			else
			{
				if hurt_cooltime = 0
				{
				global.rage_gauge --
				hurt = 1
				hurt_cooltime = 5
				movement_speed = check_guard*4.3
				hp_minus_for_player(82,_placed_obj)
					if instance_exists(obj_worm)
					{
					hp_minus_for_player(226,_placed_obj)
					}
				vspeed -= 0.6
				sfx_for_multiplayer(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0.2)
				
				
					if on_floor = true
					{
					y -= 1
					}
				}
			}
		}
	}
			
				
/////////////////////////////////////////////////////////////////////////////////////////	
	if (keyboard_check_pressed(global.jump_key) || gamepad_button_check_pressed(0,global.jump_key)) && global.chat_activity = false
	{
		if global.never_move = 0 && global.never_move_in_setting = 0 && (gravity = 0 || hurt > 5 || place_meeting(x,y,obj_water_inside) || place_meeting(x,y,obj_water_front))
		{
			if (jump = 0 && cannot_move = 0 && cooltime = 0) || hurt > 5 || ((place_meeting(x,y,obj_water_inside) || place_meeting(x,y,obj_water_front)) && down_attack = 0 && spin_attack = 0 && jump_attack = 0 && spin = 0)
			{
				if !place_meeting(x,y,obj_water_inside) && !place_meeting(x,y,obj_water_front)
				{
				sfx_for_multiplayer(jump_sfx,0,0.6)
				}

	
			var effect_ = instance_create_depth(x,y+27,player.depth+1,down_effect_for_laser)
			effect_.image_blend = c_white
			effect_.t_image_xscale = 2.5*0.4
			effect_.t_image_yscale = 0.8*0.4
			effect_.image_alpha = 0.7
			effect_.alarm[1] = 3
			effect_.image_angle = 0
			effect_.image_xscale = 2.5*0.1
			effect_.image_yscale = 0.8*0.1
			pressed_space = 1
			if place_meeting(x,y-32,obj_water_front)
			{
			vspeed = (-5.5-global.jump_plus)*0.7
			}
			else
			{
			vspeed = -5.5-global.jump_plus
			}
			jump_end_motion = 0
			b_movement_speed = 0
			y -= 3
			jump = 1
			dont_check_jump_now = 2
			b_movement_speed = global.movement_speed
			cannot_move = 1
	
				if image_xscale < 0 && global.movement_speed > 0
				{
				global.movement_speed = abs(global.movement_speed)
				}
				if image_xscale > 0 && global.movement_speed < 0
				{
				global.movement_speed = -abs(global.movement_speed)
				}
				
				if hurt > 0
				{
				hurt = 0
				hurt_cooltime = 0
				red_glow_effect(sprite_index,image_index,0.5)
					
				sfx_for_multiplayer(critical_sfx,0,0.05)
				var d_ef = instance_create_depth(player.x,player.y-64,depth-1,draw_hp_m)
				var text__ = "Stand up!"
				if global.korean_text = 1
				{
				text__ = "일어남!"
				}
				d_ef.d_text = text__
				d_ef.image_blend = c_white
				d_ef.image_xscale = 1.2
				d_ef.image_yscale = 1.2
				d_ef.target = -4
				w_alpha = 1
				}
			}
		}
	}
	
	
	if (keyboard_check_pressed(global.down_key) || gamepad_button_check_pressed(0,gp_padd)) && global.chat_activity = false && attack_ = 0 && pering = 0 && global.never_move_in_setting = 0
	{
		if global.never_move = 0
		{
			if on_floor = true
			{
				if global.stamina > 0
				{
					if (spin = 0 && cannot_move = 0 && cooltime = 0 && down_attack = 0 && down_attack_plusing = 0 && hurt = 0 && hurt_little = 0) || (spin = 0 && hurt > 5)
					{
						if keyboard_check(global.left_key) || gamepad_button_check(0,gp_padl)
						{
						image_xscale = 1
						}
					
						if keyboard_check(global.right_key) || gamepad_button_check(0,gp_padr)
						{
						image_xscale = -1
						}
					hurt = 0
					hurt_cooltime = 0
					spin = 1
					cannot_move = 1
					cooltime = 1
					global.stamina_cooltime = 0
				
						if hurt > 0
						{
						red_glow_effect(sprite_index,image_index,0.5)
					
						sfx_for_multiplayer(critical_sfx,0,0.05)
						var d_ef = instance_create_depth(player.x,player.y-64,depth-1,draw_hp_m)
						var text__ = "Stand up!"
						if global.korean_text = 1
						{
						text__ = "일어남!"
						}
						d_ef.d_text = text__
						d_ef.image_blend = c_white
						d_ef.image_xscale = 1.2
						d_ef.image_yscale = 1.2
						d_ef.target = -4
						w_alpha = 1
						}
					}
				}
				else
				{
				var sfx = audio_play_sound(cannot_buy,0,0)
				audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
				}
			}
		}
	}
	
	if global.cannot_use_stamina = 0
	{
		if (sprite_index = move_sprite || sprite_index = spr_crouch || sprite_index = guard_sprite || sprite_index = jump_sprite) && attack_gun_ = 0
		{
		global.stamina_cooltime += 2
		}
		else
		{
		global.stamina_cooltime = 0
		}

		if global.stamina_cooltime > 10
		{
		global.stamina += 0.15
			if (sprite_index = spr_crouch)
			{
			global.stamina += 0.15
			}
			
			if (sprite_index = guard_sprite)
			{
			global.stamina -= 0.08
			}
			
			if (sprite_index = jump_sprite)
			{
			global.stamina -= 0.12
			}
		}

		if global.stamina > 10+global.max_stamina_plus
		{
		global.stamina = 10+global.max_stamina_plus
		}
	}
	else
	{
	global.stamina = 0
	}
	
	
	if gravity = 0
	{
	movement_speed += (0 - movement_speed)*0.032
		
		if abs(movement_speed) > 2
		{
		movement_speed += (0 - movement_speed)*0.02
		}
		
		if abs(movement_speed) <= 0.05
		{
		movement_speed = 0
		}
		
		if abs(movement_speed) <= 0.5
		{
		movement_speed = 0
		}
	attack_in_air_cool = 0
	}
	else
	{
	movement_speed += (0 - movement_speed)*0.01
		if abs(global.movement_speed) > 1
		{
		movement_speed += (0 - movement_speed)*0.1
		}
	}
	
	for(var i = abs(movement_speed); i > 0; i--)
	{
		if !place_meeting(x+sign(movement_speed)*(i+24),y,floor_parents) || place_meeting(x+sign(movement_speed)*(i+16),y,stair_parents) 
		{
		x += sign(movement_speed)*i;
		break;
		}
	}
	
	

	for(var i = abs(global.movement_speed*0.8); i > 0; i--)
	{
		if !place_meeting(x+sign(global.movement_speed*0.8)*(i+16),y,floor_parents) || place_meeting(x+sign(global.movement_speed*0.8)*(i+16),y,stair_parents)
		{
		x += i*sign(global.movement_speed*0.8);
		break;
		}
	}

	
	if abs(movement_speed) < 0.1
	{
	movement_speed = 0
	}
	
	if hurt > 0 && suicide = 0
	{
		if vspeed > 20
		{
		vspeed = 20
		}
	cannot_move = 1
	sprite_index = hurt_sprite

		if dash_attack = 0
		{
		global.movement_speed += (0 - global.movement_speed)*0.1
		}

		if on_floor = true
		{
		image_index = 1
	
			if hurt = 1
			{
				if global.b_alpha < 0.1 && global.playing_scene = 0
				{
				sfx_for_multiplayer(down_attack_sfx,0,0.15)
				}

		
			var random_val = choose(0,0,0,1)
				if random_val = 1
				{
					if global.voice_option = 0 && global.playing_scene_black_bg = 0 && global.b_alpha <= 0 && global.hp > 0
					{
					var a_s = choose(2,1,0)
						if a_s = 1 && !audio_is_playing(i_am_sorry) && !audio_is_playing(wait_plz)
						{
						sfx_for_multiplayer(choose(i_am_sorry,wait_plz),0,0.25)
						}
					}
				}
			}
	
		hurt++
		
			if global.awakening > 1
			{
			hurt += 0.5
			}
		}
		else
		{
		image_index = 0
		hurt = 1
		}
	
		if hurt > 45 && global.slow_motion = 0
		{
		hurt = 0
		cannot_move = 0
		w_alpha = 2
			if global.show_challenger = 0
			{
				if cancled_attack = 0
				{
				sprite_index = move_sprite
				}
			}
		}
	}

	if y > room_height && fallen = 0 && global.b_alpha < 0.1 && global.back_to_origin_stage = 0
	{
		if global.ignore_falling_check > 0
		{
		y = room_height
		global.ignore_falling_check--
		hurt = 100
		hurt_little = 100
		vspeed = -32
			if x > floor_parents.x
			{
			movement_speed = -16
			}
			else
			{
			movement_speed = 16
			}
		}
		else
		{
		movement_speed = 0
		fallen = 1
		global.movement_speed += (0 - global.movement_speed)*0.02
			if global.hp > 0
			{
			global.movement_speed = -global.movement_speed*2
			hp_minus_for_player(1047,self)
			global.hp = 0
			sfx_for_multiplayer(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0.2)
			vspeed = -5
			}
		}
	}
		
	if global.hp > 0 && y < room_height
	{
	fallen = 0
	}
}

if ((attack_ > 3.9 && attack_ <= 4.1) || (attack_ > 6.8 && attack_ <= 7) || (attack_ > 9.8 && attack_ <= 10) || attack_ > 14) && global.n_sword != 0 && global.n_sword != 5
{
	if global.skill_jump_attack > 0 && global.stamina > 2.5 && (keyboard_check(ord(string(global.w_key))) || gamepad_button_check(0,gp_face4)) && attack_ >= 12 && global.chat_activity = false
	{
	red_glow_effect(sprite_index,image_index,0.6)
	
	skill_combo_cancle_n_motion(1)
	}
	
	if global.skill_turning_attack > 0 && global.stamina > 3.8 && (keyboard_check(ord(string(global.q_key))) || gamepad_button_check(0,gp_face3)) && attack_ >= 12 && global.chat_activity = false
	{
	red_glow_effect(sprite_index,image_index,0.6)
	
	skill_combo_cancle_n_motion(1)
	}

	if (keyboard_check(string(global.guard_key_for_code)) || gamepad_button_check(0,gp_padu)) && global.chat_activity = false
	{
	red_glow_effect(sprite_index,image_index,0.6)
	
	skill_combo_cancle_n_motion(1)
	}
	
	if (keyboard_check(global.down_key) || gamepad_button_check(0,gp_padd)) && global.chat_activity = false && spin = 0 && global.never_move_in_setting = 0
	{
		if on_floor = true && hurt = 0 && hurt_little = 0
		{
		attack_ = 0
		keep_attack = 0
		keep_attacking = 0
		attack_sfx_on = 0
		sprite_index = move_sprite
		image_index = 0
		cooltime = 0
		cannot_move = 0

		down_attack = 0
		spin = 1
		cannot_move = 1
		cooltime = 1
		global.stamina_cooltime = 0
		red_glow_effect(sprite_index,image_index,0.6)
		}
	}
}


if down_attack > 13 && global.n_sword != 0 && global.n_sword != 5
{
	if global.skill_jump_attack > 0 && global.stamina > 2.5 && (keyboard_check_pressed(ord(string(global.w_key))) || gamepad_button_check_pressed(0,gp_face4)) && global.chat_activity = false
	{
	red_glow_effect(sprite_index,image_index,0.6)
	skill_combo_cancle_n_motion(1)
	}
	
	if global.skill_turning_attack > 0 && global.stamina > 3.8 && (keyboard_check_pressed(ord(string(global.q_key))) || gamepad_button_check_pressed(0,gp_face3)) && global.chat_activity = false
	{
	red_glow_effect(sprite_index,image_index,0.6)
	skill_combo_cancle_n_motion(1)
	}
	
	if (keyboard_check_pressed(string(global.guard_key_for_code)) || gamepad_button_check_pressed(0,gp_padu)) && global.chat_activity = false
	{
	red_glow_effect(sprite_index,image_index,0.6)
	skill_combo_cancle_n_motion(1)
	}
	
	if (keyboard_check_pressed(global.down_key) || gamepad_button_check_pressed(0,gp_padd)) && global.chat_activity = false && spin = 0 && global.never_move_in_setting = 0
	{
		if (on_floor = true) && hurt = 0 && hurt_little = 0
		{
		cooltime = 0
		down_attack_motion_dilay = 0
		down_attack_gravity = 0
		down_attack_sfx_on = 0
		down_attack_plusing = 0
		down_attack = 0
		cannot_move = 0
		sprite_index = move_sprite
		image_index = 0
		y -= 1

		spin = 1
		cannot_move = 1
		cooltime = 1
		global.stamina_cooltime = 0
		red_glow_effect(sprite_index,image_index,0.6)
		}
	}
}


if dash_attack >= 4.6 && global.n_sword != 0 && global.n_sword != 5
{
	if global.skill_jump_attack > 0 && global.stamina > 2.5 && (keyboard_check_pressed(ord(string(global.w_key))) || gamepad_button_check_pressed(0,gp_face4)) && global.chat_activity = false
	{
	red_glow_effect(sprite_index,image_index,0.6)
	skill_combo_cancle_n_motion(1)
	}
	
	if (keyboard_check_pressed(string(global.guard_key_for_code)) || gamepad_button_check_pressed(0,gp_padu)) && global.chat_activity = false
	{
	red_glow_effect(sprite_index,image_index,0.6)
	skill_combo_cancle_n_motion(1)
	}
	
	if (keyboard_check_pressed(global.down_key) || gamepad_button_check_pressed(0,gp_padd)) && global.chat_activity = false && spin = 0 && global.never_move_in_setting = 0
	{
		if (on_floor = true) && hurt = 0 && hurt_little = 0
		{
		dash_attack = 0
		double_pressed_run_key = 0
		double_pressed_run_key = 0
		cannot_move = 0
		sprite_index = move_sprite
		image_index = 0

		spin = 1
		cannot_move = 1
		cooltime = 1
		global.stamina_cooltime = 0
		red_glow_effect(sprite_index,image_index,0.6)
		}
	}
	
	
	if (keyboard_check_pressed(global.jump_key) || gamepad_button_check_pressed(0,global.jump_key)) && global.chat_activity = false
	{
		if global.nickname != "썩은물" && global.nickname != "씹찐따"
		{
			if (global.never_move = 0 && global.never_move_in_setting = 0 && hurt = 0 && hurt_little = 0) || (global.never_move = 0 && global.never_move_in_setting = 0 && hurt > 15)
			{
				if gravity = 0 || hurt > 15 
				{
				dash_attack = 0
				double_pressed_run_key = 0
				double_pressed_run_key = 0
				cannot_move = 0
				sprite_index = move_sprite
				image_index = 0
		
				sfx_for_multiplayer(jump_sfx,0,0.6)
				if place_meeting(x,y-32,obj_water_front)
				{
				vspeed = (-5.5-global.jump_plus)*0.7
				}
				else
				{
				vspeed = -5.5-global.jump_plus
				}
				jump_end_motion = 0
				y -= 3
				jump = 1
				dont_check_jump_now = 2
				cannot_move = 1
				
					if hurt > 0
					{
					hurt = 0
					hurt_cooltime = 0
					red_glow_effect(sprite_index,image_index,0.6)
					
					sfx_for_multiplayer(critical_sfx,0,0.05)
					w_alpha = 1
					}

	
					var dust = instance_create_depth(x-16,y+28,depth-1,obj_dust_ef)
					dust.image_xscale = 1
					
					var dust = instance_create_depth(x+16,y+28,depth-1,obj_dust_ef)
					dust.image_xscale = -1
	
					if image_xscale < 0 && global.movement_speed > 0
					{
					global.movement_speed = abs(global.movement_speed)
					}
					if image_xscale > 0 && global.movement_speed < 0
					{
					global.movement_speed = -abs(global.movement_speed)
					}
				}
			}
		}
	}
}




/////////////////////////////////////////////////////////////////////////////////

if (keyboard_check_pressed(global.guard_key_for_code) || gamepad_button_check_pressed(0,gp_padu)) && hurt > 0 && global.hp > 0 && global.playing_scene = 0 && on_floor = true
{
hurt = 0
hurt_cooltime = 0
red_glow_effect(sprite_index,image_index,0.6)
					
sfx_for_multiplayer(critical_sfx,0,0.05)
var d_ef = instance_create_depth(player.x,player.y-64,depth-1,draw_hp_m)
var text__ = "Stand up!"
	if global.korean_text = 1
	{
	text__ = "일어남!"
	}
d_ef.d_text = text__
d_ef.image_blend = c_white
d_ef.image_xscale = 1.2
d_ef.image_yscale = 1.2
d_ef.target = -4
}


if guarding >= 2.5
{
	if fast_guarding > 0
	{
	var d_ef = instance_create_depth(player.x,player.y-64,depth-1,draw_hp_m)
	var text__ = "Super save"
	if global.korean_text = 1
	{
	text__ = "슈퍼 세이브"
	}
	d_ef.d_text = text__
	d_ef.image_blend = c_white
	d_ef.image_xscale = 1.4
	d_ef.image_yscale = 1.4
	d_ef.target = -4
	
	var cal__st = abs(10-global.stamina)
	global.stamina += cal__st/1.5
	global.rage_gauge += cal__st
	fast_guarding = 0
	}
	
	if charge_attack > 0 && super_armor_delay = 0
	{
	var d_ef = instance_create_depth(player.x,player.y-64,depth-1,draw_hp_m)
	var text__ = "0"
	if global.korean_text = 1
	{
	text__ = "0"
	}
	d_ef.d_text = text__
	d_ef.image_blend = c_white
	d_ef.image_xscale = 1.4
	d_ef.image_yscale = 1.4
	d_ef.target = -4
	global.stamina = 0
	super_armor_delay = 1
	alarm[11] = 10
	}
}

if (keyboard_check(string(global.guard_key_for_code)) || gamepad_button_check(0,gp_padu)) && hurt = 0 && hurt_little = 0 && global.chat_activity = false && global.playing_scene = 0 && global.never_move_in_setting = 0
{
	if guarding = -1 && gravity <= 0 && vspeed >= 0
	{
	guarding = 1
	fast_guarding = 1
	alarm[11] = 37
	}

	
	if guarding > 1
	{
	guarding -= 0.05
	}
}
else
{
	if guarding <= 0 && guarding != -1
	{
	cooltime = 0
	cannot_move = 0
	guarding = -1
	sprite_index = move_sprite
	}
	
	if guarding > 0
	{
	guarding -= 0.05
	}
	
	if guarding > 1
	{
	guarding -= 0.1
	}
}

if guarding > 0
{
global.movement_speed += (0 - global.movement_speed)*0.1
double_pressed_run_key = 0
cannot_move = 1

	if charge_attack = 0 && pering = 0
	{
	sprite_index = guard_sprite
	image_index = guarding
	}
	
	if (keyboard_check(global.left_key) || gamepad_button_check(0,gp_padl)) && global.never_move = 0 && global.playing_scene = 0
	{
	image_xscale = 1
	}
		
	if (keyboard_check(global.right_key) || gamepad_button_check(0,gp_padr)) && global.never_move = 0 && global.playing_scene = 0
	{
	image_xscale = -1
	}
}







if global.never_move = 0 && global.never_move_in_setting = 0 && (keyboard_check_pressed(ord(string(global.a_key))) || gamepad_button_check_pressed(0,gp_face2)) && global.chat_activity = false && pering = 0
{
	if (attack_in_air < 7 && gravity > 0 && cooltime = 0 && hurt = 0 && hurt_little = 0 && attack_in_air_cool = 0 && ((!place_meeting(x,y+45,floor_parents) || vspeed < 0))) && charge_attack <= 0 && global.n_sword != 0 && global.n_sword != 5
	{
	attack_in_air = 2.92
	attack_in_air_cool = 1
	cooltime = 1
	cannot_move = 1
	}
	
	if attack_ > 0 && jump = 0 && global.n_sword != 0 && global.n_sword != 5
	{
	keep_attack = 1
	}
	
	if global.n_sword = 5 && attack_gun_ = 0 && (cannot_move = 0 || jump > 0) && hurt = 0
	{
	attack_gun_ = 1
	}
	
	if (double_pressed_run_key < 2) && global.n_sword != 0
	{
		if global.n_sword != 5
		{
			if (attack_ < 7 && cannot_move = 0 && cooltime = 0 && hurt = 0 && hurt_little = 0) && (gravity <= 0 || attack_in_air_cool = 1)
			{
			global.stamina_cooltime = 0
			attack_ = 1
			cooltime = 1
			cannot_move = 1
			if global.movement_speed*2 > 5
			{
			global.movement_speed = global.movement_speed*2
			}
			else
			{
			global.movement_speed = 5*sign(global.movement_speed)
			}


			vspeed += 2
			}
		}
	}
	else
	{
		if global.stamina >= 7.7/(global.metal_shirts+1)
		{
			if charge_attack = 0 && spin = 0 && down_attack_plusing = 0 && hurt = 0 && hurt_little = 0 && jump_attack = 0 && spin_attack = 0 && attack_ = 0
			{
			movement_speed = -image_xscale*21
			global.stamina -= 6.7/(global.metal_shirts+1)
			global.stamina_cooltime = 0
			charge_attack = 1
			cannot_move = 1
			}
		}
		else
		{
		var sfx = audio_play_sound(cannot_buy,0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
		}
	}
}






var pressing = 0
if global.chat_activity = false
{
	if global.run_key != "Non" && (keyboard_check(ord(string(global.run_key))) || gamepad_button_check(0,gp_shoulderr))
	{
	pressing = 1
	}

	if global.run_key != "Non" && (global.run_key = vk_shift || global.run_key = vk_up) && (keyboard_check(string(global.run_key)) || gamepad_button_check(0,gp_shoulderr))
	{
	pressing = 1
	}
}



if global.never_move = 0 && global.never_move_in_setting = 0 && pressing = 1
{
double_pressed_run_key = 2
}



var pressing = 0

if global.e_key != "Non" && (keyboard_check(ord(string(global.e_key))) || gamepad_button_check(0,gp_shoulderlb)) && global.chat_activity = false
{
pressing = 1
}

if global.e_key = vk_shift && (keyboard_check(ord(string(global.e_key))) || gamepad_button_check(0,gp_shoulderlb)) && global.chat_activity = false
{
pressing = 1
}

if global.e_key = vk_up && (keyboard_check(ord(string(global.e_key))) || gamepad_button_check(0,gp_shoulderlb)) && global.chat_activity = false
{
pressing = 1
}



if global.awakening = 0 && global.rage_gauge = 100 && pressing = 1 && global.never_move = 0 && global.never_move_in_setting = 0 && global.never_move_in_setting = 0
{
global.awakening += 0.05
}

if global.awakening > 0.1
{
	if global.voice_option = 0 && rage_mode_sfx = -1
	{
	rage_mode_sfx = audio_play_sound(ang___,0,0)
	audio_sound_gain(rage_mode_sfx,0.6*global.master_volume*2*global.sfx_volume,0)
	global.black_bg_ef = 2
	//obj_camera_blacksc.alarm[0] = 2
	}
}


if global.awakening < 1 && pressing = 0
{
audio_stop_sound(rage_mode_sfx)
rage_mode_sfx = -1
global.awakening = 0
}





if global.never_move = 0 && global.never_move_in_setting = 0 && keyboard_check_released(ord(string(global.e_key))) && w_alpha < 0.17 && global.chat_activity = false
{
	if on_floor != true && (global.accessories_equip[0] = 19 || global.accessories_equip[1] = 19)
	{
	//지진파 
	//show_debug_message(string(cannot_move)+" / "+string(spin)+" / "+string(down_attack_plusing)+" / "+string(hurt)+" / "+string(global.rage_gauge)+" / "+string(hurt_little)+" / ")
		if sting_attack = 0 && global.rage_gauge >= 90 && down_attack = 0 && cannot_move = 1 && jump > 0 && cooltime = 0 && spin = 0 && down_attack_plusing = 0 && hurt = 0 && hurt_little = 0
		{
		vspeed = -4
		sfx_for_multiplayer(choose(swing_lightsaber_sfx2,swing_lightsaber_sfx3),0,0.1)
		
		if global.voice_option = 0
		{
		sfx_for_multiplayer(ready_swording,0,0.3)
		}
		sting_attack = 1
		cooltime = 1
		cannot_move = 1
		jump = 0
		jump_end_motion = 0
		jump_vsp_up = 1
		cooltime = 1
		movement_speed = 0

		global.stamina_cooltime = 0
		global.rage_gauge -= 90
				

		var skill_red_ball_effect_rage = instance_create_depth(x,y,player.depth-1,red_circle_effect)
		skill_red_ball_effect_rage.image_xscale = 0.8
		skill_red_ball_effect_rage.image_yscale = 0.8
		skill_red_ball_effect_rage.t_scale = 0.8
		skill_red_ball_effect_rage.alarm[11] = 7
	

			
			if global.awakening >= 1
			{
			global.awakening -= 0.9
			}
			
		sfx_for_multiplayer(sound5,0,0.1)
				
				
		w_alpha = 1

		var __i = choose(-1,1)
		var bl_ef = instance_create_depth(x,y,depth-1,ef_blood)
		var img_scale = -__i*irandom_range(8,15)/5
		bl_ef.image_xscale = img_scale*0.5
		bl_ef.image_yscale = abs(img_scale)*0.5
		bl_ef.t_x = __i
		bl_ef.image_angle = irandom_range(-90,90)
			

				
		sfx_for_multiplayer(swing_lightsaber_sfx1,0,0.1)
		show_debug_message("down_with_rage")
		}
	}
	
	
	if check_d_press_e = 0
	{	
	movement_speed += (0 - movement_speed)*0.04
	
		if abs(movement_speed) > 2
		{
		movement_speed += (0 - movement_speed)*0.02
		}
			
		if on_floor = true && gravity <= 0
		{
			if global.nickname = "아버" && global.n_sword != 0 && global.n_sword != 5 && !keyboard_check(global.down_key) && !keyboard_check(global.left_key) && !keyboard_check(global.right_key) && (keyboard_check(string(global.guard_key_for_code)) || gamepad_button_check(0,gp_padu)) && down_attack_with_rage = 0 && global.chat_activity = false
			{
				if attack_laser_thi = 0 && spin = 0 && hurt = 0 && hurt_little = 0 && global.rage_gauge >= 80
				{
				sfx_for_multiplayer(choose(swing_lightsaber_sfx2,swing_lightsaber_sfx3),0,0.1)
				sfx_for_multiplayer(laser_skill_ready,0,0.15)
				vspeed = 0
				y -= 1
				attack_laser_thi = 1
				cooltime = 1
				cannot_move = 1
				jump = 0
				jump_end_motion = 0
				jump_vsp_up = 1
				cooltime = 1
				global.stamina_cooltime = 0
				global.rage_gauge -= 80
				
					if !instance_exists(skill_red_ball_effect)
					{
					skill_red_ball_effect = instance_create_depth(x+10*image_xscale,y+15,player.depth-1,red_circle_effect)
					skill_red_ball_effect.image_xscale = 0.35
					skill_red_ball_effect.image_yscale = 0.35
					skill_red_ball_effect.t_scale = 0.35
					}
			
					if global.awakening >= 1
					{
					global.awakening -= 0.8
					}
				
					if global.voice_option = 0
					{
					sfx_for_multiplayer(ready_swording,0,0.3)
					}
				}
				else
				{
				var sfx = audio_play_sound(cannot_buy,0,0)
				audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
				}
			}
			
			if (global.n_sword = 1 || global.n_sword = 6) && !keyboard_check(global.left_key) && !keyboard_check(global.right_key) && (keyboard_check(string(global.guard_key_for_code)) || gamepad_button_check(0,gp_padu)) && down_attack_with_rage = 0 && global.chat_activity = false && global.used_suicide_skill = 0
			{
				if attack_laser = 0 && (cannot_move = 0 || guarding > 0) && cooltime = 0 && spin = 0 && hurt = 0 && hurt_little = 0 && ((global.n_sword = 1 && global.rage_gauge >= 80) || global.n_sword = 6)
				{
				sfx_for_multiplayer(laser_skill_ready,0,0.15)
				sfx_for_multiplayer(choose(swing_lightsaber_sfx2,swing_lightsaber_sfx3),0,0.1)
				vspeed = 0
				y -= 1
				attack_laser = 1
				cooltime = 1
				cannot_move = 1
				cooltime = 1
				global.stamina_cooltime = 0
				if global.n_sword = 1
				{
				global.rage_gauge -= 80
					if global.awakening >= 1
					{
					global.awakening -= 0.8
					}
					
					if !instance_exists(skill_red_ball_effect)
					{
					skill_red_ball_effect = instance_create_depth(x+10*image_xscale,y+15,player.depth-1,red_circle_effect)
					skill_red_ball_effect.image_xscale = 0.35
					skill_red_ball_effect.image_yscale = 0.35
					skill_red_ball_effect.t_scale = 0.35
					}

				
					if global.voice_option = 0
					{
					sfx_for_multiplayer(ready_swording,0,0.3)
					}
				}
				else
				{
					if global.voice_option = 0
					{
					sfx_for_multiplayer(gumseong_woowakgood,0,0.1)
					}
				}
				
				
				}
				else
				{
				var sfx = audio_play_sound(cannot_buy,0,0)
				audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
				}
			}
			
			
			if !keyboard_check(global.down_key) && !keyboard_check(string(global.guard_key_for_code)) && (keyboard_check(global.left_key) || keyboard_check(global.right_key) || gamepad_button_check(0,gp_padl) || gamepad_button_check(0,gp_padr)) && down_attack_with_rage = 0 && global.chat_activity = false && global.n_sword != 6 && global.weapon_upgraded[global.n_sword] > 0
			{
				if attack_laser_sec = 0 && cannot_move = 0 && cooltime = 0 && spin = 0 && hurt = 0 && hurt_little = 0 && global.rage_gauge >= 80
				{
				vspeed = 0
				y -= 1
				attack_laser_sec = 1
				cooltime = 1
				cannot_move = 1
				cooltime = 1
				global.stamina_cooltime = 0
				global.rage_gauge -= 80
				sfx_for_multiplayer(laser_skill_ready,0,0.15)
				
				if !instance_exists(skill_red_ball_effect)
				{
				skill_red_ball_effect = instance_create_depth(x+10*image_xscale,y+15,player.depth-1,red_circle_effect)
				skill_red_ball_effect.image_xscale = 0.35
				skill_red_ball_effect.image_yscale = 0.35
				skill_red_ball_effect.t_scale = 0.35
				}

				if global.awakening >= 1
				{
				global.awakening -= 0.8
				}
				
				if global.voice_option = 0
				{
				//sfx_for_multiplayer(sagaji,0,0.14)
				sfx_for_multiplayer(ready_swording,0,0.3)
				}

			
				sfx_for_multiplayer(choose(swing_lightsaber_sfx2,swing_lightsaber_sfx3),0,0.1)
				}
				else
				{
				var sfx = audio_play_sound(cannot_buy,0,0)
				audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
				}
			}
		}
	}
}



if pressing = 0
{
check_d_press_e = 0
}











if global.never_move = 0 && global.n_sword != 0 && global.n_sword != 5 && global.never_move_in_setting = 0 && (keyboard_check_pressed(ord(string(global.q_key))) || gamepad_button_check_pressed(0,gp_face3)) && global.chat_activity = false && charge_attack <= 0
{
	if global.skill_turning_attack > 0 && turning_attack_used < global.skill_turning_attack
	{
		if global.stamina > 3.8
		{
			if spin_attack = 0 && cannot_move = 0 && cooltime = 0 && hurt = 0 && hurt_little = 0
			{
			turning_attack_used ++
			cannot_move = 1
			cooltime = 1
			global.stamina_cooltime = 0
			global.stamina -= 2.8
				if on_floor = true
				{
				spin_attack = 1
				gravity = 0.2/global.low_gravity_plus
				vspeed = -4
				}
				else
				{
				spin_attack = 3
				vspeed = 0
				gravity = 0
				}
			}
		}
		else
		{
		var sfx = audio_play_sound(cannot_buy,0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
		}
	
	

		if (!place_meeting(x,y+10,floor_parents)) && hurt = 0 && hurt_little = 0
		{
			if global.stamina > 3.8
			{
				if spin_attack = 0 && cannot_move = 1 && cooltime = 0 && jump > 0
				{
				turning_attack_used ++
				spin_attack = 3.5
				cannot_move = 1
				jump_vsp_up = 1
				cooltime = 1
				gravity = 0
				vspeed = 0
				global.stamina_cooltime = 0
				global.stamina -= 2.8
				}
			}
			else
			{
			var sfx = audio_play_sound(cannot_buy,0,0)
			audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
			}
		}
	}
}







if global.never_move = 0 && global.n_sword != 0 && global.n_sword != 5 && global.never_move_in_setting = 0 && (keyboard_check_pressed(ord(string(global.s_key))) || gamepad_button_check_pressed(0,gp_face1)) && global.chat_activity = false && charge_attack <= 0
{
	if on_floor != true
	{
		if global.stamina > 2.8
		{
			if down_attack = 0 && cannot_move = 0 && cooltime = 0 && spin = 0 && down_attack_plusing = 0 && hurt = 0 && hurt_little = 0 && down_attack_with_rage = 0
			{
			down_attack = 1
			cooltime = 1
			cannot_move = 1
			jump_vsp_up = 1
			cooltime = 1
			global.stamina_cooltime = 0
			global.stamina -= 1.8
			var _ef = instance_create_depth(x,y-32,depth+1,effect_down_attack)
			_ef.sprite_index = pl_move_skeleton_down_attack1
			_ef.image_index = global.n_sword
			_ef.image_xscale = image_xscale
			_ef.image_alpha = 0.10001
			_ef.pertential_vspeed = vspeed
			
			sfx_for_multiplayer(choose(swing_lightsaber_sfx2,swing_lightsaber_sfx3),0,0.1)
			}
		}
		else
		{
		var sfx = audio_play_sound(cannot_buy,0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
		}
	
		if global.stamina > 2.8
		{
			if down_attack = 0 && cannot_move = 1 && jump > 0 && cooltime = 0 && spin = 0 && down_attack_plusing = 0 && hurt = 0 && hurt_little = 0
			{
			down_attack = 1
			cooltime = 1
			cannot_move = 1
			jump = 0
			jump_end_motion = 0
			jump_vsp_up = 1
			cooltime = 1
			global.stamina_cooltime = 0
			global.stamina -= 1.8
			var _ef = instance_create_depth(x,y-6,depth+1,effect_down_attack)
			_ef.sprite_index = pl_move_skeleton_down_attack1
			_ef.image_index = global.n_sword
			_ef.image_xscale = image_xscale
			_ef.image_alpha = 0.6
			_ef.pertential_vspeed = vspeed
			
			sfx_for_multiplayer(choose(swing_lightsaber_sfx2,swing_lightsaber_sfx3),0,0.1)
			}
		}
		else
		{
		var sfx = audio_play_sound(cannot_buy,0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
		}
	}
	else
	{
		if global.none_wakgood_mode = false
		{
			if global.n_sword != 0 && global.n_sword != 5 && abs(global.movement_speed) > 0 && global.stamina >= 10
			{
				if gravity = 0 && dash_attack = 0 && cannot_move = 0 && cooltime = 0 && spin = 0 && down_attack_plusing = 0 && hurt = 0 && hurt_little = 0
				{
				global.stamina = 0
				dash_attack = 1
				cannot_move = 1
				}
			}
			else
			{
				if global.stamina < 10
				{
				var sfx = audio_play_sound(cannot_buy,0,0)
				audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
				}
			}
		}
	}
}









if global.never_move = 0 && global.n_sword != 0 && global.n_sword != 5 && global.never_move_in_setting = 0 && (keyboard_check_pressed(ord(string(global.w_key))) || gamepad_button_check_pressed(0,gp_face4)) && global.chat_activity = false && charge_attack <= 0
{
	if global.skill_jump_attack > 0 && jump_attack_used < global.skill_jump_attack
	{
		if global.stamina > 2.5
		{
			if jump_attack = 0 && cannot_move = 0 && cooltime = 0 && hurt = 0 && hurt_little = 0
			{
			jump_attack_used ++
			jump_attack = 1
			cannot_move = 1
			jump = 0
			jump_end_motion = 0
			jump_vsp_up = 1
			cooltime = 1
			vspeed = 0
			gravity = 0
			global.stamina -= 2.5
			global.stamina_cooltime = 0
			}
		}
		else
		{
		var sfx = audio_play_sound(cannot_buy,0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
		}

		if !place_meeting(x,y+10,floor_parents)
		{
			if global.stamina > 3
			{
				if jump_attack = 0 && cannot_move = 1 && cooltime = 0 && jump > 0 && hurt = 0 && hurt_little = 0
				{
				jump_attack_used ++
				gravity = 0
				vspeed = 0
				jump = 0
				jump_end_motion = 0
				if skill_combo = 0
				{
				jump_attack = 1
				}
				else
				{
				skill_combo = 0
				jump_attack = 1.5
				}
				cannot_move = 1
				jump_vsp_up = 1
				cooltime = 1
				global.stamina -= 2
				global.stamina_cooltime = 0
				}
			}
			else
			{
			var sfx = audio_play_sound(cannot_buy,0,0)
			audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
			}
		}
	}
}







if global.awakening >= 1
{
red_glow_effect(sprite_index,image_index,0.2)
	
	if spin_attack >= 7
	{
	var ef = instance_create_depth(x,y,depth+1,gyu_seong_red_ef);
	ef.sprite_index = sprite_index
	ef.image_index = image_index
	ef.image_xscale = image_xscale
	ef.image_yscale = image_yscale
	ef.alpha = 0.2*image_alpha
	ef.image_angle = image_angle+spin_attack_angle_p*60*(abs(image_xscale)/image_xscale)+10*(abs(image_xscale)/image_xscale);
	}

	

	if dont_shine = 0
	{
	global.rage_gauge = 100*(global.awakening-1)
	global.stamina += 0.15
	global.stamina_cooltime = 0
	}

	if global.awakening = 1 && global.stop_awakening = 0
	{
	check_d_press_e = 1
	sfx_for_multiplayer(sound5,0,0.13)
	view_shake(1,0,1)
	instance_create_depth(x,y,depth-1,rage_mode_knockback)


	
	var skill_red_ball_effect_rage = instance_create_depth(x,y,player.depth-1,red_circle_effect)
	skill_red_ball_effect_rage.image_xscale = 0.8
	skill_red_ball_effect_rage.image_yscale = 0.8
	skill_red_ball_effect_rage.t_scale = 0.8
	skill_red_ball_effect_rage.alarm[11] = 7
	
	global.stop_awakening = 1
	global.awakening = 2
	global.rage_gauge = 0
	
		repeat(2)
		{
		var __i = choose(-1,1)
		var bl_ef = instance_create_depth(x,y,depth-1,ef_blood)
		var img_scale = -__i*irandom_range(8,15)/5
		bl_ef.image_xscale = img_scale
		bl_ef.image_yscale = abs(img_scale)
		bl_ef.t_x = __i
		bl_ef.image_angle = irandom_range(-90,90)
		bl_ef.sfx_play = false
		}
	w_alpha = 1.1
	}
}
else
{
dont_shine = 0
}

if global.awakening > 0 && global.stop_awakening = 0
{
global.awakening += 0.05
w_alpha = global.awakening*0.5
	if global.awakening > 1
	{
	global.awakening = 1
	}
}

if global.stop_awakening = 1
{
	if global.used_suicide_skill = 0
	{
	global.awakening -= 0.001
	}
	
	if global.awakening < 1
	{
	global.awakening = 0
	global.stop_awakening = 0
		if dont_shine = 0
		{
		var __i = choose(-1,1)
		var bl_ef = instance_create_depth(x,y,depth-1,ef_blood)
		var img_scale = -__i*irandom_range(8,15)/5
		bl_ef.image_xscale = img_scale
		bl_ef.image_yscale = abs(img_scale)
		bl_ef.t_x = __i
		bl_ef.image_angle = irandom_range(-90,90)
		bl_ef.sfx_play = false
		w_alpha = 1.1
		
		var skill_red_ball_effect_rage = instance_create_depth(x,y,player.depth-1,red_circle_effect)
		skill_red_ball_effect_rage.image_xscale = 0.8
		skill_red_ball_effect_rage.image_yscale = 0.8
		skill_red_ball_effect_rage.t_scale = 0.8
		skill_red_ball_effect_rage.alarm[11] = 7
		}
	}
}


if global.never_move = 1
{
pressed_a_key = 0
pressed_d_key = 0
}




hspeed += (0 - hspeed)*0.1


if global.noclip = -1
{
	repeat(100)
	{
		if place_meeting(x,y+0.2,floor_parents) && !place_meeting(x,y+0.2,obj_door)
		{
		y -= 0.1
		jump_attack_used = 0
		turning_attack_used = 0
		}
		else
		{
		break;
		}
	}
}

if (on_floor != true) && hurt = 0 && hurt_little = 0
{
	if jump <= 0 && spin_attack = 0 && jump_attack = 0 && down_attack = 0
	{
	jump = 1
	jump_vsp_up = 1
	}
}





if attack_gun_ > 0
{
global.stamina -= 0.01
attack_gun_ ++
cannot_move = 1
	if attack_gun_ = 2
	{
	sfx_for_multiplayer(gun_sfx,0,0.3)
	}
	
	if attack_gun_ < 25 && attack_gun_%5 = 0
	{
	scale = -1
	var bullet__ = instance_create_depth(x-13*sign(image_xscale),y+irandom_range(11,15),depth+1,obj_bullet_for_player)
	bullet__.bullet_speed = 13*scale;
	bullet__.direction = gun_angle
	bullet__.pertential_vspeed = -0.1
	movement_speed += sign(image_xscale)*2
	}
movement_speed += (0 - movement_speed)*0.1
	
	if attack_gun_ > 40
	{
	cannot_move = 0
	attack_gun_ = 0
	}
}





if sting_attack > 0 && jump_attack = 0 && down_attack = 0
{
obj_camera.tv_x = 1280
obj_camera.tv_y = 720
gravity = 0
vspeed += (-0.5 - vspeed)*0.07
sting_attack_timer ++
cannot_move = 1
global.movement_speed = 0

	if sting_attack_timer < 45
	{
	sprite_index = pl_move_skeleton_guard_red244
	image_index = sting_attack_timer/8
	}
	else
	{
	sprite_index = pl_move_skeleton_guard_red244
	image_index = 7
	}
	
	if sting_attack_timer >= 130
	{
	sprite_index = spr_throw
	}

	if sting_attack_timer = 35
	{
	image_index = 0
	var skill_red_ball_effect_rage = instance_create_depth(x+image_xscale*10,y,player.depth-1,obj_lightning_player)
	obj_camera.t_x = player.x
	obj_camera.t_y = player.y+128
	sting_attack_obj = 1
	var lightning__ = instance_create_depth(player.x+image_xscale*16,player.y,player.depth-1,lightning_spear)
	lightning__.direction = 270
	lightning__.des = -1
	w_alpha = 1
	}
	
	if sting_attack_timer = 130
	{
	lightning_spear.direction = 180+image_xscale*5
	}

	if sting_attack_timer > 130
	{
	sting_attack += 0.3
	image_index = sting_attack
	}

var target_ = instance_nearest(x,y,mob_parents)
var t_angle = point_direction(x,y,x-image_xscale*64,y+64)
	if instance_exists(target_)
	{
	t_angle = point_direction(x,y,target_.x,target_.y+160)
	}



	if attack_sting_sfx = 0 && image_index > 2.5 && sting_attack_timer > 130
	{
	obj_camera.t_x = player.x-image_xscale*480
	obj_camera.x += (player.x-image_xscale*480 - obj_camera.x)*0.17
	view_shake(2,15,5)
	//movement_speed = image_xscale*7
		if instance_exists(lightning_spear)
		{
		lightning_spear.des = 0
		lightning_spear.direction = t_angle
		}
	y -= 3
	vspeed = -4
	sfx_for_multiplayer(jump_attack_sfx,false,0.3)
	attack_sting_sfx = 1
	
	var effect_ = instance_create_depth(x-image_xscale*16,y-18,player.depth+1,down_effect_for_laser)
	effect_.image_blend = c_black
	effect_.t_image_xscale = 0.3*4*image_yscale/2
	effect_.t_image_yscale = 0.05*3*image_yscale/2
	effect_.image_xscale = 2.5/2
	effect_.image_yscale = 0.8/2
	effect_.image_xscale = 2.5
	effect_.image_yscale = 0.8
	effect_.alarm[1] = 15
	effect_.image_angle = t_angle+90
	}
	
	if image_index >= 5 && sting_attack_timer > 130
	{
	sprite_index = jump_sprite
	jump = 1
	sting_attack_obj = 0
	attack_sting_sfx = 0
	sting_attack = 0
	sting_attack_timer = 0
	cannot_move = 0
	cooltime = 0
	cannot_move = 0
	guarding = -1
	obj_camera.t_x = -4
	obj_camera.t_y = -4
	}
}


if spin_attack = 0 && jump_attack = 0 && down_attack = 0 && sting_attack = 0 && dont_check_jump_now = 0
{
	if on_floor = true
	{
	jump_attack_used = 0
	turning_attack_used = 0
	gravity = 0
	vspeed = 0
	
		for(var i = vspeed; i > 0; i -= 0.5)
		{
			if !place_meeting(x,y+vspeed,floor_parents)
			{
			t_y = y+i
			}
		break;
		}
	
		if jump > 4
		{
		jump_end_motion = 1
		}
		
		
		if jump_end_motion = 1
		{
		jump -= 0.9
			if attack_in_air <= 0
			{
			image_index = jump
			}
		}
		
		if jump <= 0 && jump_end_motion = 1
		{
		jump_vsp_up = 0
		cannot_move = 0
		jump = 0
		jump_end_motion = 0
		sprite_index = move_sprite
		}
	}
	else
	{
		if image_index < 7
		{
		image_index += 0.9
		}
	gravity = 0.2/global.low_gravity_plus
	}
}


if pressed_d_key+pressed_a_key = 0 && cannot_move = 0 && attack_ = 0 && pering = 0 && dash_attack = 0 && sting_attack = 0
{
global.movement_speed += (0 - global.movement_speed)*0.23
	if gravity <= 0 && global.playing_scene = 0
	{
	image_index += (0 - image_index)*0.1
	}
}


if cannot_move != 0
{
pressed_a_key = 0
pressed_d_key = 0
}


if spin > 0 && down_attack = 0 && hurt = 0
{
	if keep_spinning > 0 && spin = 1
	{
	global.stamina -= keep_spinning/10
	}
	
sprite_index = spin_sprite
image_index = spin
global.movement_speed = 0
	if spin = 1
	{
	spin_speed = 1
	sfx_for_multiplayer(spin_sfx,0,0.08/(global.playing_scene+1))
	
	var random_val = choose(1,0)
		if random_val = 1
		{
			if global.voice_option = 0 && global.playing_scene = 0
			{
			sfx_for_multiplayer(zzae_ggi_chun,0,0.2)
			}
		}
	}
	
	if dust_ef = 0 && spin > 7
	{
	var dust = instance_create_depth(x,y+28,depth-1,obj_dust_ef)
	dust.image_xscale = -image_xscale
	dust_ef = 1
	}

	if on_floor = false && spin > 3 && spin < 4.5
	{
	spin_speed += (0.3 - spin_speed)*0.1
	}
	else
	{
	spin += 0.3
	}


	if spin <= 11
	{
		for(var i = (11-spin); i > 0; i--)
		{
			if !place_meeting(x-sign(image_xscale)*(i+16),y,floor_parents) || place_meeting(x-sign(image_xscale)*(i+16),y,stair_parents) 
			{
			x -= sign(image_xscale)*i*spin_speed
			}
		break;
		}
	}
	
	if spin >= 11
	{
	dust_ef = 0
	keep_spinning += 40
	sprite_index = move_sprite
	spin = 0
	cooltime = 1
	alarm[1] = 8
	cannot_move = 0
	}
}





if spin_attack > 0 && down_attack = 0 && sting_attack = 0
{
jump_end_motion = 0
sprite_index = spin_attack_sprite
spin_attack += 0.3

	//if spin_attack = 1.3
	//{
	//sfx_for_multiplayer(swing_sfx2,0,0.4)
	//sfx_for_multiplayer(swing_lightsaber_sfx2,0,0.1)
	//}

	if spin_attack < 3
	{
	spin_attack += 0.3
	}

	if pressed_d_key+pressed_a_key != 0
	{
	image_xscale = -abs(image_xscale)*(pressed_d_key+pressed_a_key)
	}
	
	if global.awakening > 1
	{
	spin_attack += 0.05
	}

	if spin_attack <= 7
	{
	image_index = spin_attack
	}
	else
	{
	image_index = 7
	}

	if image_index > 5
	{
		if image_angle = 0
		{
		image_index = 5
		}
	}
	

	if spin_attack <= 1
	{
	global.movement_speed = 0
	}


	if spin_attack < 6
	{
	global.movement_speed = (-image_xscale)*2.2
	spin_attack_angle_p = 1
	
		if vspeed > 0
		{
		gravity = 0.21/global.low_gravity_plus
		}
	}
	else
	{
		if spin_attack <= 7
		{
		vspeed += (0 - vspeed)*0.05
			if global.chat_activity = false
			{
			var _pressing_a = (keyboard_check(global.left_key) || gamepad_button_check(0,gp_padl))
			var _pressing_d = (keyboard_check(global.right_key) || gamepad_button_check(0,gp_padr))
			}
			else
			{
			var _pressing_a = 0
			var _pressing_d = 0
			}
		
			if image_xscale < 0
			{
			_pressing_d = 0
			}
			else
			{
			_pressing_a = 0
			}
		
			if _pressing_d != 0 && _pressing_a != 0
			{
			movement_speed += (_pressing_d-_pressing_a)*2
			}
		}
	
	spin_attack_angle_p++
	
	
		if spin_attack >= 3 && image_angle != 0
		{
		global.movement_speed += (0 - global.movement_speed)*0.08
			if hurt = 0 && hurt_little = 0
			{
			var _ef = instance_create_depth(x,y,depth+1,effect)
			_ef.image_index = global.n_sword
			_ef.image_xscale = image_xscale
			_ef.image_alpha = 0.6
			_ef.image_angle = image_angle//+spin_attack_angle_p*60*(abs(image_xscale)/image_xscale)+10*(abs(image_xscale)/image_xscale)
			_ef.pertential_vspeed = vspeed
			}
		
			image_alpha = 1
	
			if spin_attack_sfx_on = 0
			{
			sfx_for_multiplayer(swing_sfx2,0,0.4)
			alarm[10] = 10
			alarm[11] = 18

		
			if global.voice_option = 0
			{
			sfx_for_multiplayer(ang___,0,0.23)
			}
			spin_attack_sfx_on = 1
			}
			
			if spin_attack_sfx_on = 1 && spin_attack > 9
			{
			sfx_for_multiplayer(swing_sfx2,0,0.4)
			spin_attack_sfx_on = 2
			}
		
		
			if (keyboard_check(global.left_key) || gamepad_button_check(0,gp_padl))
			{
			pressing_key__ = -1
			}
			if (keyboard_check(global.right_key) || gamepad_button_check(0,gp_padr))
			{
			pressing_key__ = 1
			}
		
			if pressing_key__ != 0
			{
				if spin_attack < 35
				{
					for(var i = abs(pressing_key__*spin_attack/7); i > 0; i -= 0.5)
					{
						if !place_meeting(x+(i+16)*sign(pressing_key__),y,floor_parents)
						{
						x += i*sign(pressing_key__)
						break;
						}
					}
				}
				else
				{
					for(var i = abs(pressing_key__*5); i > 0; i -= 0.5)
					{
						if !place_meeting(x+(i+16)*sign(pressing_key__*5),y,floor_parents)
						{
						x += i*sign(pressing_key__)
						break;
						}
					}
				}
			}
		
			if keyboard_check(global.down_key)
			{
			pressing_key__s = 1
			}
		
			if pressing_key__ != 0 && pressing_key__s = 0
			{
				if on_floor = true
				{
				y -= 3
				vspeed = -4
				sfx_for_multiplayer(guard,0,0.08)
				sfx_for_multiplayer(sword_ready,0,0.08)
				w_alpha = 1
					repeat(8)
					{
					var _ef = instance_create_depth(x,y,depth-1,effect_spark)
					_ef.hspeed = irandom_range(-20,20)
					_ef.vspeed = irandom_range(-4,2)
					}
				spin_attack = 15;
				movement_speed -= pressing_key__*7
				global.never_move = 1
				alarm[2] = 20
				}
			}
		
			if pressing_key__s = 1
			{
				if instance_number(ef_blood_2) > 0
				{
					if gravity != 0.5
					{
					vspeed = vspeed/2
					}
				gravity = 0.5
				}
				else
				{
				gravity = 0.6
				}
			
				if on_floor = true
				{
				y -= 3
				vspeed = -4
				sfx_for_multiplayer(guard,0,0.1)
				sfx_for_multiplayer(sword_ready,0,0.1)
					repeat(8)
					{
					var _ef = instance_create_depth(x,y+irandom_range(-13,0),depth-1,effect_spark)
					_ef.hspeed = irandom_range(-20,20)
					_ef.vspeed = irandom_range(-4,2)
					}
				spin_attack = -999;
				movement_speed -= pressing_key__*4
				sprite_index = spr_crouch
				global.never_move = 1
				alarm[2] = 50
				cannot_standup = 1
				//var __c = -vspeed/3
				//y -= 3
					//if __c < 6
					//{
					//vspeed = -6
					//}
					//else
					//{
					//vspeed = __c
					//}
				}
			}
			else
			{
			gravity = 0
			}
		}
	
		if spin_attack_angle_p > 0
		{
		image_angle += 50*(abs(image_xscale)/image_xscale)
		spin_attack_angle_p = 0
		}
	}
	
	if (spin_attack >= 11 && pressing_key__s = 0) || spin_attack = -999 || spin_attack = 999
	{
		if spin_attack != -999
		{
		sprite_index = move_sprite
		}
	image_angle = 0
	image_alpha = 1
	spin_attack = 0
	cannot_move = 0
	spin_attack_angle_p = 0
	spin_attack_sfx_on = 0
	cooltime = 1
	pressing_key__ = 0
	pressing_key__s = 0
	jump = 1
	jump_vsp_up = 1
	alarm[1] = 14
	}
	
	if hurt > 0
	{
	skill_combo_cancle_n_motion(1)
	}
}



if spin = 0 && jump > 0 && down_attack = 0 && hurt = 0 && hurt_little = 0 && jump_end_motion = 0 && spin_attack = 0
{
sprite_index = jump_sprite
jump += 0.3
	if global.awakening > 1
	{
	jump += 0.05
	}


	if jump > 5
	{
		if attack_in_air <= 0
		{
		image_index = 7
		}
		
		if jump_vsp_up != 1
		{ 
		jump_vsp_up = 1
		}
	}
	else
	{
		if attack_in_air <= 0
		{
		image_index = jump
		}
	}
}



if jump_attack > 0 && down_attack = 0 && spin_attack = 0 && sting_attack = 0
{
jump_attack += 0.3
sprite_index = jump_attack_sprite
image_index = jump_attack
global.movement_speed = 0
	if global.awakening > 1
	{
	jump_attack += 0.05
	}

	if jump_attack > 5
	{
		if jump_attack_sfx_on != 1
		{
		jump_attack_sfx_on = 1
		sfx_for_multiplayer(jump_attack_sfx,0,0.6)
		
		sfx_for_multiplayer(choose(swing_lightsaber_sfx2,swing_lightsaber_sfx3),0,0.1)
		
		var _ins = instance_create_depth(x-image_xscale*32,y+64,depth-1,down_effect_line)
		_ins.sprite_index = quake_effect
		_ins.image_index = 4
		_ins.image_alpha = 0.8
		_ins.image_xscale = 1.6
		_ins.image_yscale = 1.3
		}


	jump_attack += 0.12
	jump_attack_motion_dilay ++
		if jump_attack_vsp_up != 1
		{
		vspeed -= 4
		jump_attack_vsp_up = 1
		}
		
		if hurt = 0 && hurt_little = 0
		{
			if jump_attack_motion_dilay > 2
			{
			var _ef = instance_create_depth(x,y,depth+1,effect_jump_attack)
			_ef.sprite_index = sprite_index
			_ef.image_index = image_index
			_ef.image_xscale = image_xscale
			_ef.image_alpha = 0.6
			jump_attack_motion_dilay = 0
			}
		}
	
		
		if jump_attack < 11
		{
			if !place_meeting(x-image_xscale-16*sign(image_xscale),y,floor_parents)
			{
			x += (-image_xscale)*0.7
			}
		}
	}
	

	if jump_attack > 15
	{
	jump_attack = 0
	cannot_move = 0
	jump_attack_vsp_up = 0
	jump_attack_sfx_on = 0
	image_index = 15
	cooltime = 1
	alarm[1] = 16
	}
}









if down_attack_with_rage > 0
{
down_dis_set = down_dis
down_dis = 0
down_attack_with_rage++
	if down_attack_with_rage > 5
	{
	var xx1 = attack_target_x+down_attack_with_rage_dis
	var yy = global.p_floor+27
		if place_meeting(xx1,yy+2,floor_parents)
		{
		var _effect = instance_create_depth(xx1,yy,player.depth-1,effect_quake)
		_effect.image_xscale = 1.5;
		_effect.image_yscale = 2;
		}
		
	var xx2 = attack_target_x-down_attack_with_rage_dis
		if place_meeting(xx2,yy+2,floor_parents)
		{
		var _effect = instance_create_depth(xx2,yy,player.depth-1,effect_quake)
		_effect.image_xscale = 1.5;
		_effect.image_yscale = 2;
		}
		
	down_attack_with_rage_dis += 64
	down_attack_with_rage = 1
	}
	
	
	if (global.awakening <= 0 && down_attack_with_rage_dis/64 > floor(down_dis_set*0.2)) || (global.awakening > 1 && down_attack_with_rage_dis/64 > floor(down_dis_set*0.5))
	{
	down_dis = 0
	down_attack_with_rage_dis = 0
	down_attack_with_rage = 0
	down_dis_set = 0
	}
}











if attack_laser_sec > 0 && spin_attack = 0
{
vspeed = 0
cannot_move = 1
global.never_move = 1
global.movement_speed = 0
attack_laser_sec += 0.12+(global.mental_attack_sp_plus)/2
sprite_index = attack_laser_sprite_sec

	if attack_laser_sec < 4
	{
	global.black_bg_ef = 1
	}

	if instance_exists(skill_red_ball_effect)
	{
	red_glow_effect(sprite_index,image_index,0.5)
	obj_camera.x = player.x
	obj_camera.tv_x -= 1280*0.1
	obj_camera.tv_y -= 720*0.1
		if floor(image_index) < 1
		{
		skill_red_ball_effect.x = x+10*image_xscale
		skill_red_ball_effect.y = y+15
		}
	
		if floor(image_index) >= 1 && floor(image_index) < 2
		{
		skill_red_ball_effect.x = x+16*image_xscale
		skill_red_ball_effect.y = y+10
		}
	
		if floor(image_index) >= 2 && floor(image_index) <= 4
		{
		skill_red_ball_effect.x = x+14*image_xscale
		skill_red_ball_effect.y = y-6
		}
	
		if floor(image_index) >= 5 && floor(image_index) <= 7
		{
		skill_red_ball_effect.x = x+14*image_xscale
		skill_red_ball_effect.y = y-5
		}
	
		if floor(image_index) >= 8 && floor(image_index) <= 9
		{
		skill_red_ball_effect.x = x+14*image_xscale
		skill_red_ball_effect.y = y-4
		}
	
		if floor(image_index) >= 10
		{
		skill_red_ball_effect.x = x-9*image_xscale
		skill_red_ball_effect.y = y+15
		skill_red_ball_effect.des = 1
		}
	}
	

	if attack_laser_sec < 14
	{
	image_index = floor(attack_laser_sec)
	}
	else
	{
	image_index = 13
	}
	
	if attack_laser_sec > 12.3
	{
	obj_camera.x += (player.x - player.image_xscale*480 - obj_camera.x)*0.17
	obj_camera.tv_x = 1280*0.9
	obj_camera.tv_y = 720*0.9
	obj_camera.v_x += (1280*0.9 - obj_camera.v_x)*0.17
	obj_camera.v_y += (720*0.9 - obj_camera.v_y)*0.17
	view_shake(1,1,1)
	}

	if floor(image_index) >= 11 && attack_laser_sfx = 0
	{
	attack_laser_sfx = 1
	global.w_alpha = 1
	var effect_ = instance_create_depth(x-image_xscale*16,y-18,player.depth+1,down_effect_for_laser)
	effect_.image_blend = c_black
	effect_.t_image_xscale = 0.3*4*image_yscale/2
	effect_.t_image_yscale = 0.05*3*image_yscale/2
	effect_.image_xscale = 2.5/2
	effect_.image_yscale = 0.8/2
	effect_.image_xscale = 2.5
	effect_.image_yscale = 0.8
	effect_.alarm[1] = 20
	
		if image_xscale = -1
		{
		effect_.image_angle = 90
		}
		else
		{
		effect_.image_angle = 270
		}
	sfx_for_multiplayer(laser_sfx_sec,0,0.09)
	attack_target_x = x
	sfx_for_multiplayer(choose(swing_lightsaber_sfx2,swing_lightsaber_sfx3),0,0.1)
	}
	
	if attack_laser_sec > 12.3 && attack_laser_sfx = 1
	{
	attack_laser_sfx = 2
	var _aaa = instance_create_depth(x-image_xscale*24,y-16,player.depth-1,effect_special_skill_sec)
		if image_xscale = 1
		{
		_aaa.image_angle = 90
		}
		else
		{
		_aaa.image_angle = 270
		}
	}
	
	if attack_laser_sec > 18
	{
	attack_laser_sfx = 0
	down_attack_plusing = 0
	attack_laser_sec = 0
	down_attack_with_rage_dis = 0
	cannot_move = 0
	cooltime = 0
	sprite_index = move_sprite
	image_index = 0
	global.never_move = 0
	}
}





if attack_laser > 0 && spin_attack = 0
{
	if global.n_sword != 6
	{
	vspeed = 0
	cannot_move = 1
	global.never_move = 1
	global.movement_speed = 0
	attack_laser += 0.1+(global.mental_attack_sp_plus)/2
	sprite_index = attack_laser_sprite

		if attack_laser < 4
		{
		global.black_bg_ef = 1
		}

		if instance_exists(skill_red_ball_effect)
		{
		red_glow_effect(sprite_index,image_index,0.5)
		obj_camera.x = player.x
		obj_camera.tv_x -= 1280*0.1
		obj_camera.tv_y -= 720*0.1
		
			if round(image_index) < 1
			{
			skill_red_ball_effect.x = x+10*image_xscale
			skill_red_ball_effect.y = y+15
			}
	
			if round(image_index) >= 1 && round(image_index) < 2
			{
			skill_red_ball_effect.x = x+16*image_xscale
			skill_red_ball_effect.y = y+10
			}
	
			if round(image_index) >= 2 && round(image_index) <= 4
			{
			skill_red_ball_effect.x = x+14*image_xscale
			skill_red_ball_effect.y = y-6
			}
	
			if round(image_index) >= 5 && round(image_index) <= 7
			{
			skill_red_ball_effect.x = x+14*image_xscale
			skill_red_ball_effect.y = y-5
			}
	
			if round(image_index) >= 8 && round(image_index) <= 9
			{
			skill_red_ball_effect.x = x+14*image_xscale
			skill_red_ball_effect.y = y-4
			}
	
			if round(image_index) >= 10
			{
			skill_red_ball_effect.x = x-9*image_xscale
			skill_red_ball_effect.y = y+15
			skill_red_ball_effect.des = 1
			}
		}
	
		if attack_laser < 13
		{
		image_index = floor(attack_laser)
		}
		else
		{
		image_index = 12
		}

		if floor(image_index) = 10 && attack_laser_sfx = 0
		{
		attack_laser_sfx = 1
	
	
		var effect_ = instance_create_depth(x,global.p_floor+27,player.depth+1,down_effect)
		effect_.t_image_xscale = 0.3*12
		effect_.t_image_yscale = 0.05*12
		effect_.received = 0
		
		
		sfx_for_multiplayer(sword_ready,0,0.12)
		view_shake(5,2,3)
		global.w_alpha = 0.1
		obj_camera.x = player.x
		obj_camera.tv_x = 1280*0.6
		obj_camera.tv_y = 720*0.6

	
		attack_target_x = x
	
		sfx_for_multiplayer(choose(swing_lightsaber_sfx2,swing_lightsaber_sfx3),0,0.1)
		}
	
		if attack_laser > 12.6
		{
			if total_laser_num <= 4
			{
			obj_camera.tv_x = 1280*(0.6+total_laser_num*0.1)
			obj_camera.tv_y = 720*(0.6+total_laser_num*0.1)
			obj_camera.v_x += (1280*(0.6+total_laser_num*0.1) - obj_camera.v_x)*0.17
			obj_camera.v_y += (720*(0.6+total_laser_num*0.1) - obj_camera.v_y)*0.17
			obj_camera.y += (player.y - total_laser_num*64 - obj_camera.y)*0.17
			}
		movement_speed = 0
		down_attack_plusing ++
			if down_attack_plusing > 34
			{
			instance_create_depth(attack_target_x+down_attack_with_rage_dis,global.p_floor+32,player.depth-1,effect_special_skill)
			instance_create_depth(attack_target_x-down_attack_with_rage_dis,global.p_floor+32,player.depth-1,effect_special_skill)
			total_laser_num++
			down_attack_plusing = 3
			down_attack_with_rage_dis += 151
			}
		}
	
		if attack_laser > 32
		{
		attack_laser_sfx = 0
		down_attack_plusing = 0
		attack_laser = 0
		down_attack_with_rage_dis = 0
		cannot_move = 0
		cooltime = 0
		sprite_index = move_sprite
		image_index = 0
		global.never_move = 0
		total_laser_num = 0
		}
	}
	else
	{
	global.movement_speed = 0
	movement_speed = 0
	obj_camera.v_x = 1280*0.9
	obj_camera.v_y = 720*0.9
	cannot_move = 1
	sprite_index = suicide_sprite
	image_index = attack_laser
	attack_laser += 0.13
		if attack_laser > 6 && suicide_sfx = 0
		{
		bloody(x-image_xscale,y,1)
		suicide_sfx = 1
		sfx_for_multiplayer(choose(global.hit_sfx_1,global.hit_sfx_2,global.hit_sfx_3),0,0.2)
		sfx_for_multiplayer(sword_ready,0,0.1)
		}
	
		if attack_laser > 12.4
		{
		hp_minus_for_player(0,self)
		global.hp = 1
		global.used_suicide_skill = 1
		global.awakening = 2
		attack_laser_sfx = 0
		down_attack_plusing = 0
		attack_laser = 0
		down_attack_with_rage_dis = 0
		cannot_move = 0
		cooltime = 0
		suicide_sfx = 0
		sprite_index = move_sprite
		image_index = 0
		global.never_move = 0
		}
	}
}




if charge_attack > 0
{
sprite_index = pl_move_skeleton_charging
cannot_move = 1
charge_attack += 0.025
global.movement_speed = 0
red_glow_effect(sprite_index,0,image_alpha*0.2)

	if attack_charge_sfx = 0
	{
	sfx_for_multiplayer(charging_sfx,false,0.1)
	attack_charge_sfx = 1
	var dust = instance_create_depth(x,y+28,depth-1,obj_dust_ef)
	dust.image_xscale = -image_xscale
	
	var effect_ = instance_create_depth(x,y-12,player.depth+1,down_effect)
	effect_.t_image_yscale = 0.4*3
	effect_.t_image_xscale = 0.05*3
	effect_.received = 0
	
	var effect_ = instance_create_depth(x,y-12,player.depth+1,down_effect)
	effect_.t_image_yscale = 0.6*3
	effect_.t_image_xscale = 0.1*3
	effect_.received = 0
	}


	if charge_attack < 2
	{
	movement_speed += (0 - movement_speed)*0.05
	}
	
	if charge_attack < 1.34
	{
	image_index = 5
	}
	else
	{
	image_index = 0
	}
	
	
	if charge_attack >= 1.5
	{
	global.movement_speed = 0
	attack_charge_sfx = 0
	sprite_index = move_sprite
	image_index = 0
	cannot_move = 0
	cooltime = 0
	charge_attack = 0
	charge_attack_effect = 0
	}
}







if down_attack > 0 && spin_attack = 0
{
	if !instance_exists(down_effect_line)
	{
		if on_floor != true
		{
		var ins_ = instance_create_depth(x-image_xscale*36,y-32,depth+1,down_effect_line)
		ins_.image_alpha = 0
		}
	}
	else
	{
	down_effect_line.x = x-image_xscale*36
	down_effect_line.y = y+24
	}
movement_speed = 0
down_dis += 0.5
	if down_attack < 5
	{
	down_attack += 0.3
		if global.awakening > 1
		{
		down_attack += 0.05
		}
	}
	
sprite_index = down_attack_sprite
image_index = down_attack
global.movement_speed = 0

	if down_attack > 3
	{
	image_index = 4
	}
	
	if down_attack < 4
	{
		if !place_meeting(x-image_xscale*2.2,y,floor_parents)
		{
		x += (-image_xscale)*2.2
		}
	
		if down_attack > 6
		{
		image_index = 6
		}
		else
		{
		image_index = down_attack
		}
	
	gravity = 0.05/global.low_gravity_plus
	down_attack_motion_dilay = 1
	}
	else
	{
		if instance_number(ef_blood_2) > 0
		{
			if gravity != 0.1
			{
			vspeed = vspeed/6
			}
		gravity = 0.1
		}
		else
		{
		gravity = 0.36/global.low_gravity_plus
		}
		
		if down_attack_gravity < 1
		{
		vspeed += 3
		down_attack_gravity += 0.2
		}
		
		if (!place_meeting(x-image_xscale*0.67,y,floor_parents)) && down_attack < 4
		{
		x += (-image_xscale)*0.67
		}
		
	
	down_attack_motion_dilay++
	
	if hurt = 0 && hurt_little = 0
	{
		if down_attack_plusing != 1
		{
		var _ef = instance_create_depth(x,y,depth+1,effect_down_attack)
		_ef.sprite_index = pl_move_skeleton_down_attack1
		_ef.image_index = global.n_sword
		_ef.image_xscale = image_xscale
		_ef.image_alpha = 0.6
		_ef.pertential_vspeed = vspeed
		down_attack_motion_dilay = 0
		}
	}
	
	image_index = 4
	}
	
	if place_meeting(x,y+vspeed,floor_parents) || on_floor = true
	{
		if down_attack_sfx_on != 1
		{
		down_attack_sfx_on = 1
		sfx_for_multiplayer(down_attack_sfx,0,0.5)
		
			if down_dis > 10
			{
			down_attack_with_rage = 1
			sfx_for_multiplayer(bomb_sfx,false,0.05)
		
			attack_target_x = x
			}
			else
			{
			down_dis = 0
			}
		
		if place_meeting(x,y,obj_water_inside)
		{
			repeat(abs(vspeed)*0.1)
			{
			var ins_bb = instance_create_depth(x-image_xscale*25+irandom_range(-16,16),y+27,depth,bubble_effect)
			ins_bb.t_scale = irandom_range(3,10)*0.5
			ins_bb.can_interect = true
			}
		}
		
		down_effect_line.image_alpha = 1
		view_shake(4,15+down_dis,4)
		
		var effect_ = instance_create_depth(x,global.p_floor+27,player.depth+1,down_effect)
		effect_.t_image_xscale = 0.3*down_dis
		effect_.t_image_yscale = 0.05*down_dis
		effect_.received = 0
		}
		
	vspeed += (0 - vspeed)*0.54
	down_attack_plusing = 1
	cooltime = 1
	}
	
	if down_attack_plusing > 0
	{
	down_attack ++
		if down_attack > 32
		{
		down_dis = 0
		alarm[1] = 8
		down_attack_motion_dilay = 0
		down_attack_gravity = 0
		down_attack_sfx_on = 0
		down_attack_plusing = 0
		down_attack = 0
		cannot_move = 0
		sprite_index = move_sprite
		image_index = 0
		y -= 1
		}
	}
}


if attack_in_air > 0
{
attack_in_air += 0.14
	if global.awakening > 1
	{
	attack_in_air += 0.03
	}

sprite_index = attack_sprite
image_index = floor(attack_in_air+2.88)

cannot_move = 1
cooltime = 1

	if dash_attack = 0 && sting_attack = 0
	{
	global.movement_speed += (0 - global.movement_speed)*0.1
	}


	if attack_sfx_on = 0 && (floor(image_index) = 5)
	{
	sfx_for_multiplayer(swing_sfx2,0,0.4)
	sfx_for_multiplayer(swing_lightsaber_sfx2,0,0.1)


	attack_sfx_on ++

	
		if hurt = 0 && hurt_little = 0
		{
		var _ef = instance_create_depth(x,y,depth-1,effect_attack2)
		_ef.image_index = (global.n_sword*4)+1
		_ef.image_xscale = image_xscale
		_ef.image_alpha = 0.8
		}
	}



	if attack_in_air+2.88 > 6.5
	{
	paring = 0
	attack_in_air = 0
	keep_attack = 0
	keep_attacking = 0
	attack_sfx_on = 0
	sprite_index = move_sprite
	alarm[1] = 12
	alarm[3] = 13
	}
}



if attack_ > 0
{
attack_ += 0.15
	if global.awakening > 1
	{
	attack_ += 0.01
	}
	
	if image_index < 9
	{
	attack_ += 0.013
	
		if global.n_sword = 2
		{
		attack_ += 0.03
		}
	}
sprite_index = attack_sprite
image_index = attack_
cannot_move = 1
cooltime = 1

	if dash_attack = 0 && sting_attack = 0
	{
	global.movement_speed += (0 - global.movement_speed)*0.1
	}

	if attack_sfx_on = 0 && (floor(image_index) = 2)
	{
	global.stamina_cooltime = 0
	sfx_for_multiplayer(swing_sfx1,0,0.4)

	sfx_for_multiplayer(swing_lightsaber_sfx1,0,0.1)

	attack_sfx_on ++
	global.movement_speed += (-image_xscale)*6.1
	
		if hurt = 0 && hurt_little = 0
		{
		var _ef = instance_create_depth(x,y,depth-1,effect_attack1)
		_ef.image_index = (global.n_sword*4)
		_ef.image_xscale = image_xscale
		_ef.image_alpha = 0.8
		}
	}

	if attack_sfx_on = 0 && (floor(image_index) = 5) // 6
	{
	global.stamina_cooltime = 0
	sfx_for_multiplayer(swing_sfx2,0,0.4)
	sfx_for_multiplayer(swing_lightsaber_sfx2,0,0.1)


	attack_sfx_on ++
	global.movement_speed += (-image_xscale)*4.2
	
		if hurt = 0 && hurt_little = 0
		{
		var _ef = instance_create_depth(x,y,depth-1,effect_attack2)
		_ef.image_index = (global.n_sword*4)+1
		_ef.image_xscale = image_xscale
		_ef.image_alpha = 0.8
		}
	}

	if attack_sfx_on = 0 && (floor(image_index) = 8) // 11
	{
	global.stamina_cooltime = 0
	sfx_for_multiplayer(swing_sfx3,0,0.4)
	sfx_for_multiplayer(swing_lightsaber_sfx3,0,0.1)



	attack_sfx_on ++
	global.movement_speed += (-image_xscale)*5.5
	
		if hurt = 0 && hurt_little = 0
		{
		var _ef = instance_create_depth(x,y,depth-1,effect_attack3)
		_ef.image_index = (global.n_sword*4)+2
		_ef.image_xscale = image_xscale
		_ef.image_alpha = 0.8
		}
	}

	if attack_sfx_on = 0 && (floor(image_index) = 14)//new
	{
	global.stamina_cooltime = 0
	sfx_for_multiplayer(swing_sfx3,0,0.4)
	sfx_for_multiplayer(swing_lightsaber_sfx3,0,0.1)



	attack_sfx_on ++
	global.movement_speed += (-image_xscale)*7
	
		if hurt = 0 && hurt_little = 0
		{
		var _ef = instance_create_depth(x,y,depth-1,effect_attack4)
		_ef.image_index = (global.n_sword*4)+3
		_ef.image_xscale = image_xscale
		_ef.image_alpha = 0.8
		}
	}

	if attack_ > 4.25 && attack_ < 4.5 && keep_attacking = 0
	{
		if keep_attack = 0
		{
		attack_ = 0
		keep_attack = 0
		keep_attacking = 0
		attack_sfx_on = 0
		sprite_index = move_sprite
		alarm[1] = 12
		alarm[3] = 13
		}
		else
		{
		keep_attacking ++
		attack_sfx_on = 0
		keep_attack = 0
		}
	}
	
	if attack_ > 6.2 && attack_ < 6.5 && keep_attacking = 1
	{
		if keep_attack = 0
		{
		attack_ = 0
		keep_attack = 0
		keep_attacking = 0
		attack_sfx_on = 0
		sprite_index = move_sprite
		alarm[1] = 12
		alarm[3] = 13
		}
		else
		{
		keep_attacking ++
		attack_sfx_on = 0
		keep_attack = 0
		}
	}
	
	if attack_ > 10.2 && attack_ < 10.5 && keep_attacking = 2
	{
		if keep_attack = 0
		{
		attack_ = 0
		keep_attack = 0
		keep_attacking = 0
		attack_sfx_on = 0
		sprite_index = move_sprite
		alarm[1] = 12
		alarm[3] = 13
		}
		else
		{
		keep_attacking ++
		attack_sfx_on = 0
		keep_attack = 0
		}
	}
	
	if attack_ > 16.1 && keep_attacking = 3
	{
	attack_ = 0
	keep_attack = 0
	keep_attacking = 0
	attack_sfx_on = 0
	sprite_index = move_sprite
	alarm[1] = 12
	alarm[3] = 13
	}
}






if dash_attack > 0
{
sprite_index = rush_sprite
dash_attack += 0.2


image_index = dash_attack

	if dash_attack < 2
	{
	global.movement_speed += (0 - global.movement_speed)*0.015
	}
	
	if dash_attack > 3
	{
	global.movement_speed += (0 - global.movement_speed)*0.15
	}
	
	if dash_attack >= 2.3 && dash_attack < 2.83
	{
	global.movement_speed = -image_xscale*48
	dash_attack = 2.83
	

	sfx_for_multiplayer(dash_attack_sfx,0,0.08)

	
		repeat(irandom_range(12,18))
		{
		randomize()
		var dust = instance_create_depth(x+irandom_range(-2,2),y+28+irandom_range(-2,2),depth+1,pepsi_effect)
		dust.image_xscale = 0.135
		dust.image_yscale = 0.135
		dust.vspeed = -irandom_range(100,200)/200
		dust.hspeed = (-global.movement_speed*irandom_range(10,50)/250)
		dust.image_alpha = 0.4
		}
		
		repeat(irandom_range(18,24))
		{
		randomize()
		var dust = instance_create_depth(x+irandom_range(-2,2),y+3+irandom_range(-5,5),depth+1,pepsi_effect)
		dust.image_xscale = 0.145
		dust.image_yscale = 0.145
		dust.vspeed = irandom_range(-220,100)/200
		dust.hspeed = (-global.movement_speed*irandom_range(10,50)/330)
		dust.image_alpha = 0.4
		}
	}
	
	if dash_attack >= 5 && dash_attack < 5.9
	{
	dash_attack = 5.9
	}
	
	if dash_attack >= 4 && dash_attack < 4.04
	{
	dash_attack = 4.04
	var __i = choose(-1,1)
	var bl_ef = instance_create_depth(x-global.movement_speed*7,y-8,depth-1,ef_blood_dash_attack)
	bl_ef.image_xscale = 2
	bl_ef.image_yscale = 0.42
	bl_ef.t_x = __i
	
	var __i = -global.movement_speed/25
	var bl_ef = instance_create_depth(x-global.movement_speed*7,y-8,depth-1,ef_blood)
	bl_ef.image_xscale = 2.3
	bl_ef.image_yscale = 0.42
	bl_ef.t_x = __i
	
	var effect_ = instance_create_depth(x-global.movement_speed*13,y-8,player.depth+1,down_effect)
	effect_.t_image_yscale = 0.3*3
	effect_.t_image_xscale = 0.05*3
	effect_.received = 0
	
	var effect_ = instance_create_depth(x-global.movement_speed*11,y-8,player.depth+1,down_effect)
	effect_.t_image_yscale = 0.15*3
	effect_.t_image_xscale = 0.025*3
	effect_.received = 0
	}

	if dash_attack > 10
	{
	dash_attack = 0
	cannot_move = 0
	sprite_index = move_sprite
	image_index = 0
	}
}

	
////////////////////////////////////////////////////////////////////////////////////////////////
	if double_pressed_run_key > 2
	{
	double_pressed_run_key = 2
	}


	var press_l = 0
	var press_r = 0
	
	if (keyboard_check_pressed(global.left_key) || gamepad_button_check_pressed(0,gp_padl)) && global.chat_activity = false
	{
		if run_dir = 1
		{
			if double_pressed_run_key = 1
			{
			double_pressed_run_key = 0
			}
		}
	double_pressed_run_key++
	run_dir = -1
	}
	
	if (keyboard_check_pressed(global.right_key) || gamepad_button_check_pressed(0,gp_padr)) && global.chat_activity = false
	{
		if run_dir = -1
		{
			if double_pressed_run_key = 1
			{
			double_pressed_run_key = 0
			}
		}
	double_pressed_run_key++
	run_dir = 1
	}
	
	if (keyboard_check(global.left_key) || gamepad_button_check(0,gp_padl)) && global.chat_activity = false
	{
	pressed_a_key = -1
	press_l = 1
	}
	else
	{
	pressed_a_key = 0
	}
	
	if (keyboard_check(global.right_key) || gamepad_button_check(0,gp_padr)) && global.chat_activity = false
	{
	pressed_d_key = 1
	press_r = 1
	}
	else
	{
	pressed_d_key = 0
	}
	
	if (press_l+press_r) = 0 && double_pressed_run_key > 0
	{
		if running_time_delay > 14
		{
		double_pressed_run_key = 0
		running_time_delay = 0
		}
		else
		{
		running_time_delay++
		}
	}
	
	
	if (press_r-press_l) != 0 && hurt = 0 && hurt_little = 0 && global.never_move = 0 && global.never_move_in_setting = 0 && global.never_move_in_setting = 0
	{
		if press_l+press_r > 0 && (cannot_move = 0 || sprite_index = jump_sprite)
		{
			if (sprite_index = move_sprite || sprite_index = jump_sprite)
			{
				if global.lockon != 1 || double_pressed_run_key >= 2
				{
				image_xscale = (press_l-press_r)
				}
				else 
				{
					if instance_exists(global.lockon_target)
					{
						if abs(global.lockon_target.x - x) >= 240
						{
						global.lockon_target = -4
						}
					}
					else
					{
					var target = instance_nearest(x,y,mob_parents)
						if instance_exists(target)
						{
							if abs(target.x - x) < 240
							{
							global.lockon_target = target
							}
							else
							{
							global.lockon_target = -4
							}
						}
					image_xscale = (press_l-press_r)
					}
				}
			}
			
			if double_pressed_run_key < 2
			{
				if assult_mode > 0
				{
				global.movement_speed += (4.3*(press_r-press_l) - global.movement_speed)*0.3
				
					if run_time <= 0
					{
					var dust = instance_create_depth(x,y+28,depth-1,obj_dust_ef)
					dust.image_xscale = -image_xscale
					run_time = 1
					}
				}
				else
				{
				run_time = 0
				global.movement_speed += (3.5*(press_r-press_l) - global.movement_speed)*0.3
				}
			}
			else
			{
			run_time ++
			global.stamina_cooltime = 0
				if run_time > 100
				{
				global.stamina -= 0.02
				}
				
				if gravity <= 0
				{
					if run_time < 2
					{
					var dust = instance_create_depth(x,y+28,depth-1,obj_dust_ef)
					dust.image_xscale = -image_xscale
					}
				
					var cal___ = (40-run_time)/3
					if cal___ > 6.5
					{
					global.movement_speed += (cal___*(press_r-press_l) - global.movement_speed)*0.3
					}
					else
					{
					global.movement_speed += (6.5*(press_r-press_l) - global.movement_speed)*0.3
					}
				}
				else
				{
				global.movement_speed += (7*(press_r-press_l) - global.movement_speed)*0.3
				}
			}
		}
	}
	else
	{
	run_time = 0
	global.movement_speed += (0 - global.movement_speed)*0.1;
		if abs(global.movement_speed) <= 0.15 && (sprite_index = move_sprite) && global.show_challenger = 0
		{
		image_index = 0
		global.movement_speed = 0
		}
	}
	
	if global.movement_speed != 0 && global.show_challenger = 0
	{
		if abs(global.movement_speed) > 0 && sprite_index = move_sprite
		{
			if abs(global.movement_speed) < 5
			{
			image_index += abs(global.movement_speed)*0.1
			}
			else
			{
			image_index += 0.5
			}
		}
	}
}


hp = global.hp

if global.hp > max_hp
{
global.hp = max_hp
}
//keep_winning_ = global.keep_winning



if instance_exists(global.lockon_target)
{
	if ((cannot_move = 0 && global.never_move = 0) || (guarding <= 1.5 && guarding > 0)) && double_pressed_run_key < 2
	{
	image_xscale = sign_k(x-global.lockon_target.x)
	}
}





if instance_exists(full_screen_option)
{
	if saved_vspeed = 0
	{
	saved_vspeed = vspeed
	saved_hspeed = hspeed
	saved_gravity = gravity
	saved_x_ = x
	saved_y_ = y
	
	vspeed = 0
	hspeed = 0
	gravity = 0
	}
	
x = saved_x_
y = saved_y_
}
