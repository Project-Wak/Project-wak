/// @description Insert description here
// You can write your code in this editor


//discord presence
np_update();

if discord_presence_reloading > 0
{
discord_presence_reloading ++
}

if global.show_credits <= 0 && discord_presence_reloading > 30
{
var n_sword_text = "guarding_"+string(global.n_sword);

	
//////////////////////////////////////////////////////////////////////////////////
	if room = menu
	{
	global.n_sector_discord = -1
	}

	if room = room_sector_B02_1 || room = room_sector_B02_2
	{
	global.n_sector_discord = 2
	}

	if room = room_main
	{
	global.n_sector_discord = -3
	}

	if room = room_sector_B03_2_remaked || room = room_sector_B03_3_remaked
	{
	global.n_sector_discord = 3
	}

	if room = room_sector_B04_2
	{
	global.n_sector_discord = 4
	}
	
	if room = room_sector_B05_2
	{
	global.n_sector_discord = 5
	}
	
	if room = room_sector_B06_2
	{
	global.n_sector_discord = 6
	}
	
	if room = room_sector_B07
	{
	global.n_sector_discord = 7
	}
	
	if room = room_sector_outside
	{
	global.n_sector_discord = 0
	}
	
	if room = room_sector_runaway
	{
	global.n_sector_discord = -2
	}




	var n_sector_text = "해안가 근처 동굴 입구";
	if global.n_sector_discord < 10 && global.n_sector_discord > 0
	{
		if global.n_sector_discord = 1
		{
		n_sector_text = "Sector-B01 (튜토리얼)"
		}
		else if global.n_sector_discord = 6
		{
		n_sector_text = "Sector-B06 (지하 하수도)"
		}
		else if global.n_sector_discord = 7
		{
		n_sector_text = "Sector-B06 (왁드로이드 개발실 입구)"
		}
		else
		{
		n_sector_text = "Sector-B0"+string(global.n_sector_discord)
		}
	}

	if global.n_sector_discord >= 10
	{
	n_sector_text = "Sector-B"+string(global.n_sector_discord)
	}

	if global.n_sector_discord = -1
	{
	np_setpresence("메인 매뉴", "", "npc"+string(irandom_range(1,8)), "");
	}
	else if global.n_sector_discord = -2
	{
	np_setpresence("Sector-B??", "연구소 탈출 중...", string(n_sword_text), "");
	}
	else if global.n_sector_discord = -3
	{
	np_setpresence("Sector-Main", "아지트에서 정비 중...", string(n_sword_text), "");
	}
	else
	{
	np_setpresence(string(n_sector_text), "연구소 탐험 중...", string(n_sword_text), "");
	}
	
discord_presence_reloading = 0;
}







//original code for game
if global.show_achievement > 0
{
global.achievement_yy += (global.achievement_tyy - global.achievement_yy)*0.07

if global.achievement_tyy < 0
{
global.achievement_tyy = 0
}

if global.achievement_tyy > 1000
{
global.achievement_tyy = 1000
}



for(var i = 0; i <= 20; i++)
{
	if global.achievement[i] > 0
	{
	global.achievement_percentage[i] = 100
	}
}


//탈리스만 도전과제
var all_accessory = 0
for(var i = 2; i <= 19; i++)
{
	if (global.accessories_owned[i] > 0 && i != 9 && i != 18)
	{
	all_accessory ++
	}
}

if all_accessory >= 17
{
all_accessory = 17

	if global.achievement[6] != 1
	{
	var _achievement = instance_create_depth(x,y,depth,bg_achievement)
	_achievement.text = string(global.achievement_name[6])
	_achievement.icon_num = 0
	global.achievement[6] = 1
	}
}

global.achievement_percentage[6] = 100*(all_accessory/17)




//무기 도전과제
var all_weapon = 0
for(var i = 1; i <= 6; i++)
{
	if global.weapon_owned[i] > 0
	{
	all_weapon ++
	}
}

if all_weapon >= 6
{
all_weapon = 6

	if global.achievement[8] != 1
	{
	var _achievement = instance_create_depth(x,y,depth,bg_achievement)
	_achievement.text = string(global.achievement_name[8])
	_achievement.icon_num = 0
	global.achievement[8] = 1
	}
}

global.achievement_percentage[8] = 100*(all_weapon/6)




if global.replayed > 0
{
	if global.achievement[10] != 1
	{
	var _achievement = instance_create_depth(x,y,depth,bg_achievement)
	_achievement.text = string(global.achievement_name[10])
	_achievement.icon_num = 0
	global.achievement[10] = 1
	}
}


var total_boss = 0
for(var i = 11; i <= 19; i++)
{
	if global.achievement[i] > 0
	{
	total_boss ++
	}
}

if total_boss >= 9
{
total_boss = 9

	if global.achievement[9] != 1
	{
	var _achievement = instance_create_depth(x,y,depth,bg_achievement)
	_achievement.text = string(global.achievement_name[9])
	_achievement.icon_num = 0
	global.achievement[9] = 1
	}
}

global.achievement_percentage[9] = 100*(total_boss/9)
}






if global.tutorial > 0
{
	if global.achievement[0] <= 0 && !instance_exists(bg_achievement)
	{
		if global.total_died > 0 && global.clock > 0
		{
		var _achievement = instance_create_depth(x,y,depth,bg_achievement)
		_achievement.text = string(global.achievement_name[0])
		_achievement.icon_num = 0
		global.achievement[0] = 1
		}
	}
}

if global.achievement[1] <= 0 && !instance_exists(bg_achievement)
{
	if global.gameover_reason_title = "[소멸 엔딩]"
	{
	var _achievement = instance_create_depth(x,y,depth,bg_achievement)
	_achievement.text = string(global.achievement_name[1])
	_achievement.icon_num = 0
	global.achievement[1] = 1
	}
}


if global.achievement[2] <= 0 && !instance_exists(bg_achievement)
{
	if global.gameover_reason_title = "[회귀 불능 엔딩]"
	{
	var _achievement = instance_create_depth(x,y,depth,bg_achievement)
	_achievement.text = string(global.achievement_name[2])
	_achievement.icon_num = 0
	global.achievement[2] = 1
	}
}

if global.tutorial > 0
{
	if global.achievement[3] <= 0 && !instance_exists(bg_achievement)
	{
		if global.gameover_reason_title = "[종말 엔딩]"
		{
		var _achievement = instance_create_depth(x,y,depth,bg_achievement)
		_achievement.text = string(global.achievement_name[3])
		_achievement.icon_num = 0
		global.achievement[3] = 1
		}
	}
}

if global.achievement[4] <= 0 && !instance_exists(bg_achievement)
{
	if global.gameover_reason_title = "[게임오버 엔딩]"
	{
	var _achievement = instance_create_depth(x,y,depth,bg_achievement)
	_achievement.text = string(global.achievement_name[4])
	_achievement.icon_num = 0
	global.achievement[4] = 1
	}
}

if global.achievement[5] <= 0 && !instance_exists(bg_achievement)
{
	if global.gameover_reason_title = "[도망자 엔딩]"
	{
	var _achievement = instance_create_depth(x,y,depth,bg_achievement)
	_achievement.text = string(global.achievement_name[5])
	_achievement.icon_num = 0
	global.achievement[5] = 1
	}
}

if global.achievement[21] <= 0 && !instance_exists(bg_achievement)
{
var achievement_cleared = 1
	for(var i = 0; i <= 20; i++)
	{
		if global.achievement[i] <= 0
		{
		achievement_cleared = 0
		break;
		}
	}
	
	
	if achievement_cleared = 1
	{
	var _achievement = instance_create_depth(x,y,depth,bg_achievement)
	_achievement.text = string(global.achievement_name[21])
	_achievement.icon_num = 0
	global.achievement[21] = 1
	
	give_item(1,24)
	}
}