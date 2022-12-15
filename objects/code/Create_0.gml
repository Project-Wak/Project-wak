
//window()
//instance_create_depth(x,y,depth,code_bubble_surf)
twitch_init("oauth:43rzue6rdcldus9fomqrwmtfuauma9")
twitch_chat_connect("woowakgood","우왁굳","oauth:43rzue6rdcldus9fomqrwmtfuauma9")

global.chat_sender = noone
global.chat_data = noone
global.game_ver = "Beta 3.23"

global.bubble_surf = surface_create(1920, 1080);
global.rage_surf = surface_create(1920, 1080);
global.none_wakgood_mode = false
global.guisanga_doo_event = 0
global.already_played_platform_scene = 0
////////////////////////////////////////////////////////////////////////
global.simhaedoo_stage = 0
global.credit_message = "\n\n\n\nDirector\n아버 (1인 개발)\n\n\nProgramer\n아버\n\n\nStory\n아버\n\n\nEnemy design\n아버\n\n\nUI design\n아버\n\n\nStage design\n아버\n\n\nEffect design\n아버\n\n\n\n\n\nBackground Music\nSymphony of Specters - Intense Cinematic Trailer\n\nSharo - Atorie to denno sekai\n\nBrightwaltz - Touch a flower softly\n\nBrightwaltz - Trifolium repens f. roseum\n\nSharou - Jinro no tame no komori uta\n\nBrightwaltz - Piano Improvisation 2020 Spring No2\n\nBrightwaltz - Dance in the Air\n\n\nilodolly - Raison d'etre\n\nMakai Symphony - Dragon Castle\n\n\nTrailer Music\nak+q - Ignotus\nZekk - Libertas\n\n\n\n\n\n\n\nReference\n\n\nThe Legend of Gockgang-E\n\nElden Ring\n\nMegaman Z\n\nTerraria\n\n심해두 팬아트\n\n메시 팬아트\n\n왁두 팬아트\n\nNier:Automata\n\n이세돌 팬아트\n\n\n\n\n\n1차 QA\n(피드백/버그 제보)\n\n\nStellarSea\n\n서장님\n오코츠유타\n옥수수칲\n탄창\n황금뿌리\n러머\nSsab\n공벌\n화염뽱어\n젓가락아저씨\n진성e\n벼슬\n페르마벤\n댐쿵이\n쓰레기맛캔디\n1잡탕1\nzun\nDillionaire\nalpamin\nBackSang\nNANFREE\n쥬기\n참이프\n광부\nContra\nQuiettBee\n사미니\n(이외의 많은 여러 사람들)\n\n\n\n\n2차 QA\n\n\n댐쿵이\nBackSang\n모니타리\n스즈메의 문단속\n벤찌\n별명1577\nKastle\n고 라니임니다\n재영이요\n윤석\n러머\n최민우\nㅁㅈ\n허미온\n아리에스\nNAㅅ\nMang0_k\nLadon\nTJD\najdkg296\n쥬기\n잠복근무\n도트박스\n재영\n윤석\n허미온\ncccc\n원시인\n징버거의 돗대\n면주바이\n\n\n\n\n3차 QA\n\n\n세구세구세구야사랑해\n1잡탕1\n백상\nKIM DDi YOMG\nTT1\nACHI99\nNikemach\ndamku1214\nDillionaire\n로얄플러쉬\nDO_S\n이미지박스\n킹츄러스\nseesaw\n소다쿤\n플로토돔\n펭구\n입꼬기\n명준\n갱후니\n조금하는바드\n은색의하늘\najdkg296\nChungYeo\nsda\njustahirman\n허거덩\n\n\n\n\n\n\n\nSpecial Thanks\n(개발에 큰 도움 주신분들과 추가 아이디어 제공자)\n\n\n\nBackSang\n쓰레기맛캔디\nzun\nDillionaire\nNANFREE\nalpamin\n1잡탕1\n쥬기\n댐쿵이\n\n\n\n\n\n\n\nThanks for playing\n\n\n\n\n\n\n\nMade with Gamemaker studio 2"
//text_color = 0 //Initialize text color variable
ip_for_calcul = ""
//created_platfrom = 0
sfx_broken = 0
last_bgm = -4
in_dg_bgm = -4
dg_vol = 0
optimizing_surf = 0

///////////////////////////////////////////////////////////////////////
global.choice = 0
global.choice_now = 0
global.choosed = 0
global.killed_angel = 0
global.poisoning = 0
global.clock_far_from = 0
global.cursor = 1
timer_boss_light = 0
saved_brightness = 0
activated_brightness_control = 0
timer_boss_light_thi = 0
timer_boss_light_sec = 0
global.selecting_stage = 0
global.boss_opening_light_alpha = 1
global.show_achievement = 0
global.replayed = 0
global.player_blur = 0
global.player_blur_time = 0
global.show_ui = 1
global.visible_player = 1
for(var i = 0; i <= 20; i++)
{
global.achievement[i] = -4
global.achievement_name[i] = -4
global.achievement_desc[i] = -4
global.achievement_percentage[i] = 0
}

global.achievement_name[0] = "Re:wind"
global.achievement_desc[0] = "사망 회귀를 이용해 과거로 돌아왔다"

global.achievement_name[1] = "소멸 엔딩"
global.achievement_desc[1] = "소멸 엔딩을 봤다"

global.achievement_name[2] = "회귀 불능"
global.achievement_desc[2] = "회귀 불능 엔딩을 봤다"

global.achievement_name[3] = "세계의 종말"
global.achievement_desc[3] = "종말 엔딩을 봤다"

global.achievement_name[4] = "게임 오버"
global.achievement_desc[4] = "게임오버 엔딩을 봤다"

global.achievement_name[5] = "도망자"
global.achievement_desc[5] = "도망자 엔딩을 봤다"

global.achievement_name[6] = "탈리스만 수집가"
global.achievement_desc[6] = "얻을 수 있는 모든 탈리스만을 수집했다"

global.achievement_name[7] = "의문의 제단"
global.achievement_desc[7] = "제단에 붉은 광선검과 푸른 광선검을 바쳤다"

global.achievement_name[8] = "무기 수집가"
global.achievement_desc[8] = "얻을 수 있는 모든 무기를 수집했다"

global.achievement_name[9] = "무-신"
global.achievement_desc[9] = "모든 보스를 클리어했다"

global.achievement_name[10] = "다회차 플레이"
global.achievement_desc[10] = "다회차 플레이를 했다"

global.achievement_name[11] = "거대 왁두"
global.achievement_desc[11] = "프로토타입 거대왁두 mk.2를 쓰러뜨렸다"

global.achievement_name[12] = "암흑의 심해"
global.achievement_desc[12] = "심해두를 쓰러뜨렸다"

global.achievement_name[13] = "거대 왁두의 권속"
global.achievement_desc[13] = "화염의 거대 안드로이드 메시를 쓰러뜨렸다"

global.achievement_name[14] = "연구소의 감시자"
global.achievement_desc[14] = "객관안과 스킵안을 쓰러뜨렸다"

global.achievement_name[15] = "하수도 속의 벌레"
global.achievement_desc[15] = "쌉벌레두를 쓰러뜨렸다"

global.achievement_name[16] = "연구소의 수호자"
global.achievement_desc[16] = "창의 기사 엔젤로이드를 쓰러뜨렸다"

global.achievement_name[17] = "왁드로이드"
global.achievement_desc[17] = "왁드로이드를 저지했다"

global.achievement_name[18] = "폭주한 왁드로이드"
global.achievement_desc[18] = "폭주한 왁드로이드를 쓰러뜨렸다"

global.achievement_name[19] = "왁귀상어"
global.achievement_desc[19] = "귀상어두를 쓰러뜨렸다"

global.achievement_name[20] = "'프로젝트 왁' 저지"
global.achievement_desc[20] = "성공적으로 박사의 계획 '프로젝트 왁'을 저지하였다"


for(var i = 0; i < 3; i++)
{
global.choice_name[i] = -4
}
global.gumseong_met_time = 0
global.free_hp = -1
global.n_to_setting__ = 0
global.brightness_setting = 1
global.r_alpha = 0
global.total_died = 0
global.ending_story = 0
global.back_stage_guide = 0
global.gold_for_draw = 0
global.dreamy_alpha = 0
global.back_to_origin_stage = 0
timer_back_to_stage = 0
global.free_stamina = 0
global.night_vision = 0
global.gold_draw_alpha = 0
global.super_easy = 1
global.can_use_sylinge1 = 0
global.can_use_sylinge2 = 0
global.max_sylinge1_use = 1
global.max_sylinge2_use = 1
global.got_sec_phase = 0
global.gumseong_tuto = 0
global.real_ending = 0
global.broken_clock = 0
global.poison_tuto = 0
global.chunyang = 0
global.hp_upgrage_money = 0
global.add_max_hp = 0
global.auto_run = 0
global.o2 = 100



gold_sfx = -4
global.playtime = 0
global.already_aed_used = 0
alarm[1] = 3600
global.key_setting_message = 0
global.never_move_in_setting = 0
playing_gameover_scene = 0
global.graphics_for_code = 0
global.show_guide_mes = -4
global.gameover = 0
global.key_tuto = 0
global.achievement_yy = 0
global.achievement_tyy = 0
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
global.gameover_reason_title = -4
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
global.stamina_cooltime = 0
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

global.rage_gauge = 0
global.all_reset_key = 0
global.awakening = 0
global.skill_turning_attack = 2
global.skill_jump_attack = 2
global.stop_awakening = 0
global.movement_speed = 0
global.cannot_use_stamina = 0
global.hp = 1000
global.p_floor = 903
global.stamina = 0
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

global.console_mode = 0

//키세팅
global.a_key = ord("A")
global.a_key_for_draw = keyconverter(global.a_key)

global.q_key = ord("Q")
global.q_key_for_draw = keyconverter(global.q_key)

global.s_key = ord("S")
global.s_key_for_draw = keyconverter(global.s_key)

global.w_key = ord("W")
global.w_key_for_draw = keyconverter(global.w_key)

global.run_key = string(vk_shift)
global.run_key_for_draw = keyconverter(global.run_key)

global.e_key = ord("E")
global.e_key_for_draw = keyconverter(global.e_key)

global.suicide_key = ord("P")
global.suicide_key_for_draw = keyconverter(global.suicide_key)

global.skip_key = ord("D")
global.skip_key_for_draw = keyconverter(global.skip_key)

global.use_item = ord("R")
global.use_item_for_draw = keyconverter(global.use_item)

global.g_key = ord("G")
global.g_key_for_draw = keyconverter(global.g_key)

global.jump_key = vk_space
global.left_key = vk_left
global.right_key = vk_right
global.guard_key = vk_up
global.down_key = vk_down
global.korean_text = 0

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
global.n_time = 8
	
//현재 시각
global.difficulty = -4
	
//연승
global.time_plusment = 1
	
//연승
global.lantern = 0
	
	
var total_weapon = 8
global.total_weapon_num = total_weapon
for(var i = 0; i <= total_weapon; i++)
{
//웨폰 보유 유무
global.weapon_owned[i] = 0
global.weapon_upgraded[i] = 0
}
	
var total_accessories = 19
global.total_accessories_num = total_accessories
for(var i = 0; i <= total_accessories; i++)
{
//탈리스만 보유 유무
global.accessories_owned[i] = 0
}

	
for(var i = 0; i <= 2; i++)
{
//탈리스만 장착 유무
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
global.item_name_owned[3] = "고철"
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


global.max_stamina_plus = 0 //최대 스테미나 증가 +10%

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
