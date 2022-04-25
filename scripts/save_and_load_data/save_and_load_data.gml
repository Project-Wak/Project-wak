// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_and_load_data(argument0,argument1)
{
	if argument0 = 1 //save 
	{
	ini_open_protect("Project_wak_beta_04.ini")
	
	//골드
	ini_write_real("key_tuto","a",global.key_tuto);
	ini_write_real("poison_tuto","a",global.poison_tuto);
	ini_write_real("chunyang","a",global.chunyang);
	ini_write_real("replayed","a",global.replayed);
	for(var i = 0; i <= 6; i++)
	{
	ini_write_real("achievement",string(i),global.achievement[i]);
	}
	
	//골드
	ini_write_real("first_sleep","a",global.first_sleep);
	
	//골드
	ini_write_real("back_stage_guide","a",global.back_stage_guide);
	
	//골드
	ini_write_real("total_died","a",global.total_died);
	
	//골드
	ini_write_real("playtime","a",global.playtime);

	//마스터 볼륨
	ini_write_real("master_volume","a",global.master_volume);

	//BGM 볼륨
	ini_write_real("bgm_volume","a",global.bgm_volume);

	//효과음
	ini_write_real("sfx_volume","a",global.sfx_volume);

	//풀스크린
	ini_write_real("full_screen","a",global.full_screen);

	//그래픽
	ini_write_real("graphics","a",global.graphics);
	ini_write_real("gumseong_tuto","a",global.gumseong_tuto);

	//키세팅
	ini_write_string("a_key","a",global.a_key)
	ini_write_string("q_key","a",global.q_key)
	ini_write_string("s_key","a",global.s_key)
	ini_write_string("w_key","a",global.w_key)
	ini_write_string("run_key","a",global.run_key)
	ini_write_string("e_key","a",global.e_key)
	ini_write_string("sui_key","a",global.suicide_key)
	ini_write_string("skip_key","a",global.skip_key)
	ini_write_string("korean_text","a",global.korean_text)
	ini_write_string("guard_key","a",global.guard_key)
	ini_write_string("g_key","a",global.g_key)
	ini_write_string("brightness_setting","a",global.brightness_setting)



	//키 가이드
	ini_write_real("guide","a",global.guide)

	//혈흔
	ini_write_real("blood_effect","a",global.blood_effect)

	//밴당함
	ini_write_real("ban_from_server","a",global.ban_from_server)

	//이름 저장
	ini_write_string("nickname","a",global.nickname)

	//연승
	ini_write_real("keep_winning","a",global.keep_winning)
	
	
	//연승
	ini_write_real("difficulty","a",global.difficulty)

	//연승
	ini_write_real("time_plusment","a",global.time_plusment)
	
	
	if argument1 = 1 //아이템 정보도 저장
	{
	ini_write_real("add_max_hp","a",global.add_max_hp);
	ini_write_real("broken_clock","a",global.broken_clock);
	//키 가이드
	ini_write_real("explosion_tuto","a",global.explosion_tuto)
	ini_write_real("suicide_skill_tuto","a",global.suicide_skill_tuto)
	ini_write_real("killed_first_boss","a",global.killed_first_boss)
	ini_write_real("energy_laser","a",global.energy_laser)
	ini_write_real("first_sleep","a",global.first_sleep)
	ini_write_real("first_rewind","a",global.first_rewind)


	//튜토리얼
	ini_write_real("tutorial","a",global.tutorial)
	
	//골드
	ini_write_real("gold","a",global.gold);
	
	//피곤함
	ini_write_real("tiredness","a",global.tiredness);
	
	//d-day
	ini_write_real("left_time","a",global.left_time);
	
	//현재 시각
	ini_write_real("n_time","a",global.n_time);
	
	//현재 시각
	ini_write_real("lenturn","a",global.lenturn);
	
	
	//현재 시각
	ini_write_real("super_easy","a",global.super_easy);
	
	
		for(var i = 0; i < 2; i++)
		{
		//악세사리 장착 유무
		ini_write_real("accessories_equip",string(i),global.accessories_equip[i])
		}
		//웨폰 장착 유무
		ini_write_real("n_sword",string(0),global.n_sword)
		
		for(var i = 0; i <= global.total_weapon_num; i++)
		{
		//웨폰 보유 유무
		ini_write_real("weapon_owned",string(i),global.weapon_owned[i])
		ini_write_real("weapon_upgraded",string(i),global.weapon_upgraded[i])
		}
	
		for(var i = 0; i <= global.total_accessories_num; i++)
		{
		//악세사리 보유 유무
		ini_write_real("accessories_owned",string(i),global.accessories_owned[i])
		}
		
		//재료아이템
		for(var i = 0; i < global.total_item_num; i++)
		{
		ini_write_real("item_owned",string(i),global.item_owned[i])
		}
	}
	
	if argument1 = 2 //아이템 정보도 저장 (다회차용)
	{
	//웨폰 보유 유무
	var i = global.n_sword
	ini_write_real("weapon_owned",string(i),global.weapon_owned[i])
	ini_write_real("weapon_upgraded",string(i),global.weapon_upgraded[i])
	ini_write_real("add_max_hp","a",global.add_max_hp);
	}


	ini_close_protect()
	}
	else
	{
	ini_open_protect("Project_wak_beta_04.ini")
	//골드
	global.gold = ini_read_real("gold","a",0);
	global.poison_tuto = ini_read_real("poison_tuto","a",0);
	global.chunyang = ini_read_real("chunyang","a",0);
	global.add_max_hp = ini_read_real("add_max_hp","a",0);
	global.broken_clock = ini_read_real("broken_clock","a",0);
	global.replayed = ini_read_real("replayed","a",0);
	
	
	//골드
	global.first_sleep = ini_read_real("first_sleep","a",0);
	
	//골드
	global.total_died = ini_read_real("total_died","a",0);
	
	//골드
	global.back_stage_guide = ini_read_real("back_stage_guide","a",0);
	
	//골드
	global.playtime = ini_read_real("playtime","a",0);

	//마스터 볼륨
	global.master_volume = ini_read_real("master_volume","a",1);

	//BGM 볼륨
	global.bgm_volume = ini_read_real("bgm_volume","a",1);

	//효과음
	global.sfx_volume = ini_read_real("sfx_volume","a",1);

	//풀스크린
	global.full_screen = ini_read_real("full_screen","a",2);
	
	//그래픽
	global.graphics = ini_read_real("graphics","a",1);
	global.gumseong_tuto = ini_read_real("gumseong_tuto","a",0);
	

	//키세팅
	global.a_key = ini_read_string("a_key","a","A")
	global.q_key = ini_read_string("q_key","a","Q")
	global.s_key = ini_read_string("s_key","a","S")
	global.w_key = ini_read_string("w_key","a","W")
	global.run_key = ini_read_string("run_key","a",string(vk_shift))
	global.e_key = ini_read_string("e_key","a","E")
	global.suicide_key = ini_read_string("sui_key","a","P")
	global.skip_key = ini_read_string("skip_key","a","D")
	global.korean_text = ini_read_string("korean_text","a",0)
	global.guard_key = ini_read_string("guard_key","a",vk_up)
	global.g_key = ini_read_string("g_key","a","G")

	//키 가이드
	global.guide = ini_read_real("guide","a",0)
	global.brightness_setting = ini_read_real("brightness_setting","a",0.5)
	
	//키 가이드
	global.explosion_tuto = ini_read_real("explosion_tuto","a",0)
	global.suicide_skill_tuto = ini_read_real("suicide_skill_tuto","a",0)
	global.killed_first_boss = ini_read_real("killed_first_boss","a",0)
	global.energy_laser = ini_read_real("energy_laser","a",0)
	global.first_sleep = ini_read_real("first_sleep","a",0)
	global.first_rewind = ini_read_real("first_rewind","a",0)

	//혈흔
	global.blood_effect = ini_read_real("blood_effect","a",1)

	//밴당함
	global.ban_from_server = ini_read_real("ban_from_server","a",0)

	//이름
	global.nickname = ini_read_string("nickname","a",-4)

	//연승
	global.keep_winning = ini_read_real("keep_winning","a",0)

	//튜토리얼
	global.tutorial = ini_read_real("tutorial","a",0)
	
	//피곤함
	global.tiredness = ini_read_real("tiredness","a",0);
	
	//d-day
	global.left_time = ini_read_real("left_time","a",24*3);
	
	//현재 시각
	global.n_time = ini_read_real("n_time","a",8);
	
	//현재 시각
	global.difficulty = ini_read_real("difficulty","a",-4);
	
	//연승
	global.time_plusment = ini_read_real("time_plusment","a",1);
	
	//연승
	global.lenturn = ini_read_real("lenturn","a",0);
	
	//현재 시각
	global.super_easy = ini_read_real("super_easy","a",1);
	
	for(var i = 0; i <= global.total_weapon_num; i++)
	{
	//웨폰 보유 유무
	global.weapon_owned[i] = ini_read_real("weapon_owned",string(i),0)
	global.weapon_upgraded[i] = ini_read_real("weapon_upgraded",string(i),0)
	}
	global.weapon_owned[0] = 1
	
	for(var i = 0; i <= global.total_accessories_num; i++)
	{
	//악세사리 보유 유무
	global.accessories_owned[i] = ini_read_real("accessories_owned",string(i),0)
	}
	global.accessories_owned[0] = 1
	global.accessories_owned[1] = 1
	
	for(var i = 0; i < 2; i++)
	{
	//악세사리 장착 유무
	global.accessories_equip[i] = ini_read_real("accessories_equip",string(i),1)
	}
	//웨폰 장착 유무
	global.n_sword = ini_read_real("n_sword",string(0),0)
	
	//재료아이템
	for(var i = 0; i < global.total_item_num; i++)
	{
	global.item_owned[i] = ini_read_real("item_owned",string(i),0)
	}
	
	for(var i = 0; i <= 6; i++)
	{
	global.achievement[i] = ini_read_real("achievement",string(i),-4);
	}
	
	

	ini_close_protect()
	}
}