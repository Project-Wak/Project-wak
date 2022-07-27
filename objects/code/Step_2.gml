/// @description Insert description here
// You can write your code in this editor

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