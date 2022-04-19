//window()


////////////////////////////////////////////////////////////////////////


//text_color = 0 //Initialize text color variable
ip_for_calcul = ""
//created_platfrom = 0

///////////////////////////////////////////////////////////////////////
global.choice = 0
global.choice_now = 0
global.choosed = 0
for(var i = 0; i < 3; i++)
{
global.choice_name[i] = -4
}
global.gumseong_met_time = 0
global.free_hp = 0
global.n_to_setting__ = 0
global.brightness_setting = 1
global.r_alpha = 0
global.total_died = 0
global.ending_story = 0
global.back_stage_guide = 0
global.gold_for_draw = 0
global.dreamy_alpha = 0
global.back_to_origin_stage = 0
global.free_stemina = 0
global.night_vision = 0
global.gold_draw_alpha = 0
global.super_easy = 1
global.can_use_sylinge = 0
global.got_sec_phase = 0
global.gumseong_tuto = 0
gold_sfx = -4
global.playtime = 0
global.already_aed_used = 0
alarm[1] = 3600
global.key_setting_message = 0
global.never_move_in_setting = 0
global.game_ver = "Beta 1.56"
playing_gameover_scene = 0
global.graphics_for_code = 0
global.show_guide_mes = -4
global.gameover = 0
global.key_tuto = 0
global.used_suicide_skill = 0
global.heart_crystal1 = 0
global.heart_crystal2 = 0
global.heart_crystal3 = 0
global.aed = 0
global.medical_slincer1 = 0
global.medical_slincer2 = 0
global.diamond_sword = 0
global.blue_flag = 0
global.idol_shoes = 0
global.flag_enc = 0
global.hairpin = 0
global.burger = 0
global.ribon = 0
global.metal_shirts = 0
global.lockon = 0
global.lockon_target = -4
global.clock = 0
global.noclip = -1
global.gameover_reason = -4
global.platform_speed = 0
global.first_enter_game = 0
global.save_point_x = -4
global.save_point_y = -4


menu_alpha = 0
max_fps = 0
th_afas = 0
room_speed = 60
//server_ip = "211.192.230.184";//"175.196.5.129";
server_port = 12524;
is_server = false;
sepa_power = 0

sepa_alpha = 0

show_sound_list = 0
show_sound_list_y = 0
global.for_kick_player = 0
global.now_map = 2
b_map = global.now_map
global.guide_message_chat = 0
global.m_hp = 1000
global.use_final_skill = 0

force_mapchange_ = 0
show_sound_list_alpha = 0
global.blocked_pvp = 0
global.blocked_chat = 0

global.pinged_player_num = 0
for(var i = 0; i < 40; i++)
{
global.pinged_player[i] = -1
}


draw_set_font(font0);
randomize()


for(var i = 0; i <= 25; i++)
{
ping_checker[i] = 0
}
stack_lcq = 0
global.low_quality = 0

global.imoji_cooldown = 0

global.nickname = "아기 뺑띠"+string(irandom(999));
global.n_sword = 0
global.select_dev_setting = 0
global.r_hp_alpha = 0
global.dev_message = 0
global.dev_message_alpha = 0
setting_alpha = 0
setting_alpha_real = 0
setting_text_alpha = 0
auto_des = 0


my_ID = 0;
global.my_instance_id = 0;
global.clients = ds_list_create();
list_names = ds_list_create();
list_vals = ds_list_create();
list_types = ds_list_create();

depth = -99999

global.master_volume = 1
global.sfx_volume = 1
global.bgm_volume = 1
global.fps_draw = 0
global.in_practice = 0

global.build_ver = 24;
global.draw_partici = 0


global.never_move = 0
global.awakening = 0
global.stemina_cooltime = 0
global.rage_w_alpha = 0
r_w_alpha_time = 0
global.voice_option = 0
global.shine_ef = 0
global.chat_activity = false;
global.playing_scene = 0
global.playing_scene_black_bg = 0
global.tip_alpha = 0
show_timer = -120

global.gamemode = 1
global.gamemode_server = 0
global.show_challenger = 0

global.full_screen = 0
global.skill_jump_attack = 2
global.w_key = "W"
global.q_key = "Q"
global.a_key = "A"
global.run_key = vk_shift
global.e_key = "E"
global.s_key = "S"
global.g_key = "G"
global.rage_gauge = 0
global.awakening = 0
global.skill_turning_attack = 2
global.skill_jump_attack = 2
global.stop_awakening = 0
global.movement_speed = 0
global.cannot_use_stemina = 0
global.hp = 1000
global.p_floor = 903
global.stemina = 0
global.tutorial = 0

global.hit_sfx_1 = hit_sfx1
global.hit_sfx_2 = hit_sfx2
global.hit_sfx_3 = hit_sfx3
global.blood_effect = 1
global.can_send_shake = 0

global.server_build_ver = -4;


global.draw_now_rank = 0
global.l_q_grap = 0
global.snow_effect_distance = 0
global.snowflake_amount = 0
global.ban_from_server = 0


global.rainy = 1
global.wind_dir = 0






global.matched_pl1_ready = -4
global.matched_pl2_ready = -4



global.matched_pl1_won = 0
global.matched_pl2_won = 0

global.auto_volume_down = 0
global.t_auto_volume_down = 0
global.return_player_id = 0
global.to_return_player_id = 0
global.keep_winning = 0

injured_effect = 0;


before_hp = global.hp;
global.bgm = -4
global.slow_motion = 0;
global.light_scaling = 1
light_scaling_time = 0
light_scaling_ = 0
option = 0

global.camera_vx = 0

alarm[2] = 5


global.gold = 0

//마스터 볼륨
global.master_volume = 1

//BGM 볼륨
global.bgm_volume = 1

//효과음
global.sfx_volume = 1

//풀스크린
global.full_screen = 1
	
//그래픽
global.graphics = 3

//키세팅
global.a_key = "A"
global.q_key = "Q"
global.s_key ="S"
global.w_key = "W"
global.run_key = string(vk_shift)
global.e_key = "E"
global.suicide_key = "P"
global.skip_key = "D"
global.korean_text = 0
global.guard_key = vk_up

//키 가이드
global.guide = 0
	
//키 가이드
global.explosion_tuto = 0
global.suicide_skill_tuto = 0
global.killed_first_boss = 0
global.energy_laser = 0
global.first_sleep = 0
global.first_rewind = 0

//혈흔
global.blood_effect = 1

//밴당함
global.ban_from_server = 0


//튜토리얼
global.tutorial = 0
	
//피곤함
global.tiredness = 0
	
//d-day
global.left_time = 24*3
	
//현재 시각
global.n_time = 20
	
//현재 시각
global.difficulty = -4
	
//연승
global.time_plusment = 1
	
//연승
global.lenturn = 0
	
	
var total_weapon = 8
global.total_weapon_num = total_weapon
for(var i = 0; i <= total_weapon; i++)
{
//웨폰 보유 유무
global.weapon_owned[i] = 0
global.weapon_upgraded[i] = 0
}
	
var total_accessories = 18
global.total_accessories_num = total_accessories
for(var i = 0; i <= total_accessories; i++)
{
//악세사리 보유 유무
global.accessories_owned[i] = 0
}

	
for(var i = 0; i < 2; i++)
{
//악세사리 장착 유무
global.accessories_equip[i] = 0
}
//웨폰 장착 유무
global.n_sword = 0
	
//재료아이템
var total_item = 25
global.total_item_num = total_item
for(var i = 0; i < total_item; i++)
{
global.item_owned[i] = 0
}


global.item_name_owned[0] = "발광 물질"
global.item_name_owned[1] = "톱니 바퀴"
global.item_name_owned[2] = "볼트 나사"
global.item_name_owned[3] = "돌격 소총 몸체"
global.item_name_owned[4] = "스프링"
global.item_name_owned[5] = "Sector-B02 키카드"
global.item_name_owned[6] = "Sector-B03 키카드"
global.item_name_owned[7] = "Sector-B04 키카드"
global.item_name_owned[8] = "Sector-B05 키카드"
global.item_name_owned[9] = "지하 하수도 열쇠"
global.item_name_owned[10] = "왁드로이드 개발실 키카드"
global.item_name_owned[11] = "Sector-B07 키카드"
global.item_name_owned[12] = "Sector-B08 키카드"
global.item_name_owned[13] = "Sector-B09 키카드"
global.item_name_owned[14] = "Sector-B10 키카드"
global.item_name_owned[15] = "Sector-B11 키카드"
global.item_name_owned[16] = "Sector-B12 키카드"


global.max_stemina_plus = 0 //최대 스테미나 증가 +10%

global.jump_plus = 0 //점프력 증가 +15%
global.low_gravity_plus = 1 //중력 감소 -10%

global.max_armor_plus = 0 //방어력 증가 +15%
global.damage_plus = 0 //데미지 증가 +10%



global.critical_plus = 0 //크리티컬 데미지 확률 증가 +10%


global.ignore_falling_check = 0
global.mental_attack_sp_plus = 0 //멘탈 게이지 스킬 시전 속도 +50%
global.automatic_guard_plus = 0 //공격 자동 방어 확률 +10%

alarm[11] = 10


save_and_load_data(0,0)
