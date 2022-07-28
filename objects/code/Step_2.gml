/// @description Insert description here
// You can write your code in this editor

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