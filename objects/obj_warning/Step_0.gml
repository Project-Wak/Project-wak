/// @description Insert description here
// You can write your code in this editor

if global.playing_scene = 0 && abs(player.x - x) < 32 && abs(player.y - y) <= 160
{
can_interect = 1
}
else
{
can_interect = 0
}

if instance_exists(global.boss_target)
{
can_interect = 0
}


if global.show_guide_mes != -4 && interectinig_now > 0
{
	if string_pos("이 앞, 올려 베기",warning_message) != 0
	{
	global.guide_gif = Sprite321
	}
}

if keyboard_check_released(global.skip_key) && can_interect = 1 && global.never_move_in_setting = 0
{
interectinig_now = 1
}

if interectinig_now > 0
{
global.never_move = 1
global.playing_scene = 1
	if !instance_exists(check__) && message_phase = 0
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "?"
	check__.target = player.id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 1
	{
	global.show_guide_mes_spr = 6
	global.show_guide_mes = warning_message
	message_phase ++
	}
	
	if !instance_exists(check__) && message_phase = 2
	{
	check__ = instance_create_depth(x,y,depth-1,player_message)
	check__.text = "..."
	check__.target = player.id
	check__.parents = id
	}
	
	if !instance_exists(check__) && message_phase = 3 && tutorial_message = 0
	{
		if warning_message = "이 앞, '움직이는 그림자'가 등장하니 아래로 우회할 것"
		{
		global.show_guide_mes_spr = 4
		global.show_guide_mes = "검성의 그림자\n\n검성의 그림자는 플레이어를 흉내 내는 일종의 히든몹으로,\n처치시 특수한 무기를 드랍한다.\n\n(tip : 해당 몹은 매우 강력하므로 무시하고 지나쳐도 상관없으며\n 검성의 그림자가 레이지 모드 상태가 되었을때는\n레이지 모드가 끝날때 까지 최대한 도망다니는것이 좋다)"
		global.gumseong_tuto = 1
		global.guide_gif = Sprite319
		tutorial_message = 1
		}
	
		if warning_message = "독 주의"
		{
		global.show_guide_mes_spr = 5
		global.show_guide_mes = "상태 이상(디버프) - 독\n\n체력이 1이 남을때 까지 지속적으로 체력이 닳는다.\n(상태 이상은 특정 아이템을 사용하거나 사망 혹은 수면 시에만 해제된다)"
		global.poison_tuto = 1
		tutorial_message = 1
		}
	
		if warning_message = "별과 같은 투사체가 플레이어를 향해 떨어지니 주의"
		{
		global.show_guide_mes_spr = 3
		global.show_guide_mes = "투사체 회피\n\n플레이어를 타깃팅하여 날라오는 투사체들은\n달리기와 구르기를 섞어 도망다니면 쉽게 피할 수 있다."
		global.poison_tuto = 1
		global.guide_gif = Sprite317
		tutorial_message = 1
		}
	
		if warning_message = "감전 주의"
		{
		global.show_guide_mes_spr = 3
		global.show_guide_mes = "상태 이상(디버프) - 감전\n\n플레이어가 감전되었을 경우, 스테미나가 0이 되버린다."
		global.poison_tuto = 1
		tutorial_message = 1
		}
		
		if warning_message = "녀석... 몸통이 매우 단단하니 '꼬리에 있는 코어'를 노릴것..."
		{
		global.show_guide_mes_spr = 4
		global.show_guide_mes = "쌉벌래두\n\n다른 보스들에 비해 몸통이 매우 단단하니,\n꼬리에 붙어있는 '코어'를 노리자"
		global.guide_gif = Sprite310
		global.poison_tuto = 1
		tutorial_message = 1
		}
		
		if warning_message = "물이 깊으니 익사 주의"
		{
		global.show_guide_mes_spr = 3
		global.show_guide_mes = "수중 전투\n\n물속에서 기절 상태에 빠졌을경우,\n스페이스바를 눌러 빠르게 회복할 수 있다\n또한, 수중에서 적을 처치하면 산소를 드랍한다"
		global.guide_gif = Sprite314
		global.poison_tuto = 1
		tutorial_message = 1
		}
	}
	
	
	if tutorial_message > 0
	{
		if global.show_guide_mes = -4
		{
		tutorial_message = 0
		}
	}
	
	if !instance_exists(check__) && message_phase >= 3 && tutorial_message = 0
	{
	global.never_move = 0
	global.playing_scene = 0
	message_phase = 0
	interectinig_now = 0
	}
}

