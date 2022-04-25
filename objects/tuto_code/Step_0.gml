/// @description Insert description here
// You can write your code in this editor
if global.show_credits = 0
{
	if message_phase = 0 && !instance_exists(p_mes)
	{
	message_phase = 2
	global.never_move = 1
	//p_mes = instance_create_depth(x,y,depth-1,player_message)
	//p_mes.text = "테스트 감사합니다. 조작법 알려드림"
	//p_mes.target = player.id
	//p_mes.parents = id
		if global.tutorial > 0
		{
		room_goto(room_main)
		}
	}

	if message_phase = 1 && !instance_exists(p_mes)
	{
	global.never_move = 1
	//p_mes = instance_create_depth(x,y,depth-1,player_message)
	//p_mes.text = "참고로 esc누르면 설정 나옴"
	//p_mes.target = player.id
	//p_mes.parents = id
	}

	if message_phase = 2 && !instance_exists(p_mes)
	{
	message_phase = 3
	global.never_move = 0
	var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
	key_guide.location = -2
	key_guide.img_index = 0

	var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
	key_guide.location = -0.5
	key_guide.img_index = 1

	var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
	key_guide.location = 1.5
	key_guide.img_index = 7
	}

	if message_phase = 3 && instance_number(draw_key_) <= 0 && !instance_exists(p_mes) && global.n_sword > 2
	{
	global.never_move = 1
	message_phase = 5
	//p_mes = instance_create_depth(x,y,depth-1,player_message)
	//p_mes.text = "굿. 이제 공격 알려드림"
	//p_mes.target = player.id
	//p_mes.parents = id
	global.show_guide_mes = "일반 공격\n\n일반 공격의 경우 최대 4연타 까지 가능하며,\n다른 공격들과 달리 스테미나를 사용하지 않는다.\n또한 마지막 타의 경우 데미지가 매우 높다.\n\n(참고로 모든 가이드는, 'Tab키'를 눌러 '기타'에서 다시 확인 할수 있다)"
	global.show_guide_mes_spr = 4
	}

	if message_phase = 4 && !instance_exists(p_mes)
	{
	global.never_move = 1
	//p_mes = instance_create_depth(x,y,depth-1,player_message)
	//p_mes.text = "F8 누르면 몹 스폰되니까 스폰한 뒤 때리면서 해보셈"
	//p_mes.target = player.id
	//p_mes.parents = id
	}

	if message_phase = 5 && !instance_exists(p_mes)
	{
	global.stemina = 999
	message_phase = 6
	global.never_move = 0
	var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
	key_guide.location = 0
	key_guide.img_index = 2
	}

	if message_phase = 6 && !instance_exists(p_mes) && instance_exists(wak_drone) && point_distance(wak_drone.x,wak_drone.y,player.x,player.y) <= 370
	{
	global.stemina = 999
	message_phase = 8
	global.never_move = 0

	var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
	key_guide.location = 0
	key_guide.img_index = 15

	global.show_guide_mes = "회전베기("+string(global.q_key)+")\n\n적의 총알을 향해 회전 베기를 사용하면 총알을 도탄 시킬 수 있다.\n이때, 일부 적의 경우, 도탄된 총알을 맞게 되면 막대한 데미지를 입게된다."
	global.show_guide_mes_spr = 4
	}



	if message_phase = 7 && instance_number(draw_key_) <= 0 && !instance_exists(p_mes) && instance_exists(obj_lilla)
	{
	global.never_move = 1
	message_phase = 7
	//p_mes = instance_create_depth(x,y,depth-1,player_message)
	//p_mes.text = "굿"
	//p_mes.target = player.id
	//p_mes.parents = id
	}

	if message_phase = 7 && !instance_exists(p_mes)
	{
	global.never_move = 0
	message_phase = 8
	//p_mes = instance_create_depth(x,y,depth-1,player_message)
	//p_mes.text = "이번에는 왼쪽 위에 스테미나 사용하는 스킬 공격들임"
	//p_mes.target = player.id
	//p_mes.parents = id
	}

	if message_phase = 8 && !instance_exists(p_mes) && !instance_exists(wak_drone) && instance_exists(obj_lilla)
	{
	message_phase = 14
	global.never_move = 0
	global.stemina = 999
	instance_destroy(draw_key_)
	var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
	key_guide.location = -2
	key_guide.img_index = 4

	var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
	key_guide.location = 2
	key_guide.img_index = 3
	}


	if message_phase = 14 && !instance_exists(p_mes) && instance_number(draw_key_) <= 0
	{
	message_phase = 18
	global.never_move = 0
	var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
	key_guide.location = -2.8
	key_guide.img_index = 6

	var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
	key_guide.location = 0
	key_guide.img_index = 13

	var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
	key_guide.location = 2.8
	key_guide.img_index = 27
	global.show_guide_mes = "회피 및 가드\n\n가드시 상대 공격의 공격력에 비례하여 체력 대신 스테미나가 소모되며,\n스테미나가 부족한 경우, 가드가 되지 않는다.\n\n또한 적의 공격을 가드후, 즉시 "+string(global.a_key)+"키(일반공격)를 누르면, 패링이 된다.\n\n구르기시, 대부분의 공격을 피할수 있다\n\n또한, 기절 상태가 되었을때, 땅 위에서 '구르기' 혹은 'Space키'를 눌러주면\n빠르게 기절 상태를 캔슬할 수 있다."
	global.show_guide_mes_spr = 3
	}

	////////////////////////
	if message_phase = 17 && !instance_exists(p_mes)
	{
	message_phase = 18

	global.never_move = 0
	var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
	key_guide.location = -2.5
	key_guide.img_index = 11

	//var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
	//key_guide.location = -1
	//key_guide.img_index = 12

	var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
	key_guide.location = 1.3
	key_guide.img_index = 13

	var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
	key_guide.location = 2.8
	key_guide.img_index = 16
	}

	if message_phase = 23
	{
	message_phase = 24
	}

	if message_phase = 18 && !instance_exists(p_mes) && instance_number(draw_key_) <= 0
	{
	global.rage_gauge = 100
	var key_guide = instance_create_depth(-100,-100,-999994,draw_key_)
	key_guide.location = 0
	key_guide.img_index = 5

	message_phase = 23

	global.show_guide_mes = "레이지 모드("+string(global.e_key)+")\n\n레이지 모드 시전시, 일시적으로 스테미나 회복 속도가 대폭 증가한다.\n또한, 이동속도 증가 및 공격 속도가 증가한다."
	global.show_guide_mes_spr = 4
	}


	if message_phase = 24 && instance_number(draw_key_) <= 0 && !instance_exists(p_mes) && !instance_exists(mob_parents)
	{
	p_mes = instance_create_depth(x,y,depth-1,player_message)
	p_mes.text = "!"
	p_mes.target = player.id
	p_mes.parents = id
	}

	if message_phase = 25 && !instance_exists(p_mes)
	{
	p_mes = instance_create_depth(x,y,depth-1,player_message)
	p_mes.text = "(플렛폼에 탑승하자)"
	p_mes.target = player.id
	p_mes.parents = id
	message_phase = 32
	}

	if instance_number(draw_key_) <= 0 && !instance_exists(mob_parents)
	{
		if message_phase >= 24 && message_phase < 26
		{
		global.never_move = 1
		global.playing_scene = 1
		}
		if message_phase = 26 
		{
		global.never_move = 0
		global.playing_scene = 0
		instance_destroy()
		}
	}
}
