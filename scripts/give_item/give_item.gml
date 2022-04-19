// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function give_item(argument0,argument1)
{
	if argument0 = 1
	{
	var _cal__ = argument1
	global.accessories_owned[_cal__] ++
		if _cal__ = 3
		{
		chat_up("악세사리 '객관안'을 획득하였다!")
		}
		
		if _cal__ = 2
		{
		chat_up("'Re:wind 시계'를 획득하였다!")
		global.show_guide_mes = "악세사리\n\n악세사리는 Tab키를 통해 장착 가능 하며,\n최대 2개까지 장착 가능하다.\n\n(참고로, Re:wind 시계를 장착하지 않고 플레이어 사망시\n'완전한 게임오버'가 되니 꼭 장착하도록 하자.)"
		global.show_guide_mes_spr = 0
		}
		
		if _cal__ = 4
		{
		chat_up("악세사리 '강철 나시'를 획득하였다!")
		}
		
		if _cal__ = 5
		{
		chat_up("악세사리 '보라 리본'을 획득하였다!")
		}
		
		if _cal__ = 6
		{
		chat_up("악세사리 '징거 버거'를 획득하였다!")
		}
		
		if _cal__ = 7
		{
		chat_up("악세사리 '파란 머리핀'을 획득하였다!")
		}
		
		if _cal__ = 8
		{
		chat_up("악세사리 '응원 깃발'을 획득하였다!")
		}
		
		if _cal__ = 11
		{
		chat_up("악세사리 '푸른색의 깃발'을 획득하였다!")
		}
		
		if _cal__ = 12
		{
		chat_up("악세사리 '다이아몬드 검'을 획득하였다!")
		}
		
		if _cal__ = 13
		{
		chat_up("악세사리 'AED'를 획득하였다!")
		}
		
		if _cal__ = 14
		{
		chat_up("악세사리 '긴급 치료제'를 획득하였다!")
		}
		
		if _cal__ = 16
		{
		chat_up("악세사리 '깨진 하트 크리스탈 (좌)'를 획득하였다!")
		}
		
		if _cal__ = 17
		{
		chat_up("악세사리 '깨진 하트 크리스탈 (우)'를 획득하였다!")
		}
	}
	else if argument0 = 2
	{
	var _cal__ = argument1
	global.weapon_owned[_cal__] ++
		if _cal__ = 2
		{
		chat_up("'초록 광선검'을 획득하였다!")
		}
		
		if _cal__ = 4
		{
		chat_up("'푸른 광선검'을 획득하였다!")
		}
		
		if _cal__ = 1
		{
		chat_up("'양손 광선검'을 획득하였다!")
		}
	
		if _cal__ = 5
		{
		chat_up("'돌격 소총'을 획득하였다!")
		}
		
		if _cal__ = 3
		{
		chat_up("'붉은 광선검'을 획득하였다!")
		global.n_sword = 3
		code.alarm[7] = 1
		}
		
		if _cal__ = 6
		{
		chat_up("'지옥 참마도'를 획득하였다!")
		}
	}
	else if argument0 = 3
	{
	chat_up("'랜턴'을 획득하였다!")
	global.lenturn = 1
	}
	else
	{
	global.item_owned[argument1] ++
	chat_up("'"+string(global.item_name_owned[argument1])+"'을/를 획득하였다!    (보유갯수 : "+string(global.item_owned[argument1])+")")
	}
}