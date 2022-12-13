/// @description Insert description here
// You can write your code in this editor

var _c_x = obj_camera.v_x/1280
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5-320*_c_x
var yy = camera_get_view_y(view_camera[0])+(400-30)*_c_x



if (pressed > 0 && global.key_setting_message > 0) || global.key_setting_message = 0
{
	if global.n_to_setting__ = 1
	{
		if global.key_setting_message = 1
		{
		//draw_text(xx-_c_x*64,yy,pressed)
			if pressed > 0
			{
			draw_sprite_ext(sprite_index,10,xx-_c_x*64,yy,-_c_x*0.8,_c_x*0.8,0,c_white,1)
			draw_sprite_ext(sprite_index,10,xx+_c_x*64,yy,_c_x*0.8,_c_x*0.8,0,c_white,1)
			}
		}
	
	draw_sprite_ext(sprite_index,image_index,xx,yy,_c_x*0.8,_c_x*0.8,0,c_white,1)
	
	//탈리스만 이미지

	var cal__img = 0
		if pressed > 0
		{
		cal__img = pressed-1
		draw_sprite_ext(spr_icon,7,xx,yy,0.5*_c_x,0.5*_c_x,0,c_black,1)
		}
		else
		{
		draw_sprite_ext(spr_icon,7,xx,yy,0.5*_c_x,0.5*_c_x,0,c_white,1)
		}

	
	
	var item_name__ = "가이드 북 0번 - 기본 조작 (공격)"
	var item_desc__ = "'"+string(keyconverter(global.g_key))+"키'를 눌러 스킬 조작키 가이드를 상시 띄워둘수 있다."
	if cal__img = 1
	{
	item_name__ = "가이드 북 1번 - 레이지 모드"
	item_desc__ = string(keyconverter(global.e_key))+"키를 지속적으로 누르고 있으면 '레이지 모드'가 발동된다.\n 레이지 모드 시전시, 몇십초간 스테미나가 매우 빠르게 회복된다."
	}
	if cal__img = 2
	{
	item_name__ = "가이드 북 2번 - 스테이지 탈출"
	item_desc__ = "플렛폼을 타고 도착한 맵에서 돌아가고 싶으면\n"+string(keyconverter(global.suicide_key))+"키 혹은 스테이터스 창(Tab)에 들어가서 '자살 (사망 회귀)'버튼을 눌러 자살하여\n섹터에 입장하기 전의 과거로 돌아가 탈출할 수 있다 (단, 1시간의 시간이 소모 된다)"
	}
	if cal__img = 3
	{
	item_name__ = "가이드 북 3번 - 기절 상태 풀기"
	item_desc__ = "적에게 피격당해 기절 상태에 걸린경우, Space키 혹은 구르기, 가드키로 빠르게 일어날수 있다."
	}
	if cal__img = 4
	{
	item_name__ = "가이드 북 4번 - 히든 아이템"
	item_desc__ = "각 스테이지에는 최소 1개 이상의 숨겨진 아이템이 존재한다.\n맵에 수상한 문양이 있으면 의심해보자"
	}
	if cal__img = 5
	{
	item_name__ = "가이드 북 5번 - 잡몹"
	item_desc__ = "보스가 아닌 잡몹들은 굳이 처치하지 않아도 스테이지를 넘어갈수 있다. (단, 이러한 경우 잡몹이 드랍하는 재료 아이템을 얻을 수 없다)"
	}
	if cal__img = 6
	{
	item_name__ = "가이드 북 6번 - 히든몹(검성의 그림자)"
	item_desc__ = "검성의 그림자는 플레이어를 흉내내는 매우 강력한 몹이지만, 굳이 처치 하지 않고도 게임 진행이 가능하다.\n다만, 검성의 그림자를 처치 할 경우 '특수한 무기'를 드랍한다.\n\n(tip : 검성의 그림자가 레이지 모드를 사용하는 경우\n 가능한 레이지 모드가 끝날 때까지 도망다니자)"
	}
	if cal__img = 7
	{
	item_name__ = "가이드 북 7번 - 보스 레이드"
	item_desc__ = "보스를 잡게되면 다음 구역으로 이동 가능 하게 해주는 '키카드' 혹은 '열쇠'를 드랍한다.\n또한, 보스를 잡을때 마다 d-day를 6시간씩 늦출수 있다. (쉬움 난이도의 경우 12시간)"
	}
	if cal__img = 8
	{
	item_name__ = "가이드 북 8번 - 시간"
	item_desc__ = "오른쪽 상단에 남은 d-day와 함께 현재 시각이 나오며, d-day가 모두 지나게 되면 게임 오버가 된다.\n이때, 시간이 밤인 경우 몹들이 더욱 강력해지니 조심하도록 하자."
	}
	if cal__img = 9
	{
	item_name__ = "가이드 북 9번 - 강화 및 재료"
	item_desc__ = "무기는 골드와 재료 아이템을 이용하여 팬치에게 말을 걸면 강화 할수 있다.\n이때 필요한 재료 아이템은 각 몹을 처치시 드랍하는데,\n드랍하는 아이템 종류는 해당 몹의 특징에 맞게 드랍한다.\n(빛과 관련된 몹의 경우 '발광 물질'아이템을 드랍하는 식)"
	}
	if cal__img = 10
	{
	item_name__ = "가이드 북 10번 - 보스 파해법"
	item_desc__ = "모든 보스의 패턴은 파해법이 모두 존재한다. 또한, 보스들은 대부분 딜링 타임이 존재하는데\n보스들 도중 딜링 타임이 없는 경우, 체력이 보통의 보스들 2배 이상 적기에\n보스의 공격을 피하는 동시에 아주 조금씩 딜을 넣으면 된다."
	}
	if cal__img = 11
	{
	item_name__ = "가이드 북 11번 - 가드와 관련된 팁"
	item_desc__ = "대부분의 공격은 구르기로 회피가 가능하지만, 일부 스킬의 경우 구르기로 회피가 되지 않는 경우가 있다.\n이러한 경우엔, 가드를 사용해보자.\n(단, 가드 가능한 공격의 범위는 플레이어형(플레이어와 비슷한 생김새의) 몹의 공격에 경우에 한하여 가드가 가능하다)"
	}
	if cal__img = 12
	{
	item_name__ = "가이드 북 12번 - 익스플로전"
	item_desc__ = "'양손 광선검'무기에 붙어 있는 특수 스킬로, 키보드 방향키 '상'을 누르고 있는 동시에 "+string(global.e_key_for_draw)+"키를 눌러 사용할 수 있다.\n(단, 왼쪽 상단의 Rage(레이지)게이지가 80%~90%정도 충전 되어 있어야 한다)"
	}
	if cal__img = 13
	{
	item_name__ = "가이드 북 13번 - 할복"
	item_desc__ = "'지옥 참마도'무기에 붙어 있는 특수 스킬로, 키보드 방향키 '상'을 누르고 있는 동시에 "+string(global.e_key_for_draw)+"키를 눌러 사용할 수 있다.\n(사용시, 플레이어의 체력이 1이 됨과 동시에 플레이어 사망 전까지 레이지 모드가 무한히 지속된다)"
	}
	if cal__img = 14
	{
	item_name__ = "가이드 북 14번 - 에네르기파"
	item_desc__ = "'광선검 유형'의 무기를 1레벨 이상 강화 한경우 사용 할수 있는 스킬로, 키보드 방향키 '좌' 혹은 '우'를 누르고 있는 동시에 "+string(global.e_key_for_draw)+"키를 눌러 사용할 수 있다.\n(단, 왼쪽 상단의 Rage(레이지)게이지가 80%~90%정도 충전 되어 있어야 한다)"
	}
	if cal__img = 15
	{
	item_name__ = "가이드 북 15번 - 수면"
	item_desc__ = "플레이어는 맵을 이동할 때 마다, d-day를 소모함과 동시에 피로도가 쌓이게 된다.\n이때, 이 피로도는 수면을 취함으로써 줄일수 있고, 침대와 상호작용시 게임이 저장된다. (상호작용 하지 않으면, 게임이 저장되지 않으니 유의 하자)"
	}
	if cal__img = 16
	{
	item_name__ = "가이드 북 16번 - 공격 캔슬 시스템 (후딜 감소)"
	item_desc__ = "아래 베기의 경우 후 딜레이가 있는데, 이때, 공격이 끝나서 땅에 닿는 순간 구르기 혹은 가드키, 올려 베기 키를 누르면 빠르게 캔슬할 수 있다.\n이외에도 돌진베기 사용후 점프키를 연타하거나, 구르기를 하는등의 회피키를 연타하면 공격후 후딜이 없어진다.\n(참고로 회전베기 스킬의 경우 지면 위에서 사용하거는거 보다 공중에서 사용할 때, 더 빠르게 공격한다)"
	}

	
	draw_text_kl_scale(xx+50*_c_x-global.key_setting_message*_c_x*70,yy-16*_c_x+global.key_setting_message*_c_x*80,item_name__,16,999,0.74,image_blend,0,-1,font0,1/3*_c_x,1/3*_c_x,image_angle)
	draw_text_kl_scale(xx+50*_c_x-global.key_setting_message*_c_x*70,yy+global.key_setting_message*_c_x*95,item_desc__,85*_c_x,2300*_c_x,0.6,image_blend,0,-1,font0,1/3.5*_c_x,1/3.5*_c_x,image_angle)
	if accesssory_num = 0
	{
	draw_text_kl_scale(xx-24*_c_x,yy-70*_c_x,"현재 보고 있는 가이드 북 (총 16개)",16,999,0.8,image_blend,0,-1,font0,1/3*_c_x,1/3*_c_x,image_angle)
	}
	
	if global.key_setting_message = 1 && pressed > 0
	{
	draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5,camera_get_view_y(view_camera[0])+160*_c_x,"읽어 볼 가이드 북을 선택해주세요 (방향키와 "+string(global.skip_key_for_draw)+"키로 선택합니다)",_c_x*64,-1,0.7,c_white,0,0,font0,_c_x*0.3,_c_x*0.3,0);
	draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5,camera_get_view_y(view_camera[0])+215*_c_x,"(ESC키를 누르면 기존값으로 설정됩니다)",_c_x*64,-1,0.5,c_white,0,0,font0,_c_x*0.25,_c_x*0.25,0);
	}
	

	//draw_text_kl_scale(xx-10*_c_x,yy-60*_c_x,"공격)",16,999,0.8,image_blend,0,-1,font0,1/3*_c_x,1/3*_c_x,image_angle)
	}
}


