/// @description Insert description here
// You can write your code in this editor

var _c_x = obj_camera.v_x/1280
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5-250*_c_x
var yy = camera_get_view_y(view_camera[0])+(360-10+accesssory_num*100)*_c_x

if (pressed > 0 && global.key_setting_message > 0) || global.key_setting_message = 0
{
	if global.n_to_setting__ = 0
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
	if global.accessories_equip[accesssory_num] != -1
	{
	var cal__img = global.accessories_equip[accesssory_num]
		if pressed > 0
		{
		cal__img = pressed-1
		}
	draw_sprite_ext(item_accessory,cal__img,xx,yy,0.5*_c_x,0.5*_c_x,0,c_white,1)
	}
	
	
	var item_name__ = "장착 안함"
	var item_desc__ = "탈리스만를 장착하지 않음"
	if cal__img = 2
	{
	item_name__ =  "Re:wind 시계"
		if (global.time_plusment = 2 && global.super_easy = 1)
		{
		item_desc__ = "Re:wind뮤비속 시계를 본따 만든 휴대용 시계\n\n특수효과 : 게임 오버가 되었을 때 바로 직전의 과거로 시간을 되돌림\n또한, 현재 시각과 함께 왁드로이드 완성까지 남은 시간을 표시해줌\n+방어력 25% 증가 (벨런스 보정 효과)"
		}
		else if (global.time_plusment = 2 && global.super_easy = 2)
		{
		item_desc__ = "Re:wind뮤비속 시계를 본따 만든 휴대용 시계\n\n특수효과 : 게임 오버가 되었을 때 바로 직전의 과거로 시간을 되돌림\n또한, 현재 시각과 함께 왁드로이드 완성까지 남은 시간을 표시해줌\n+방어력 40% 증가 (벨런스 보정 효과)"
		}
		else if (string_pos(global.nickname,"왁굳") != 0 || string_pos(global.nickname,"우왁굳") != 0)
		{
		item_desc__ = "Re:wind뮤비속 시계를 본따 만든 휴대용 시계\n\n특수효과 : 게임 오버가 되었을 때 바로 직전의 과거로 시간을 되돌림\n또한, 현재 시각과 함께 왁드로이드 완성까지 남은 시간을 표시해줌\n+방어력 40% 증가 ('우왁굳'이름 벨런스 보정 효과)"
		}
		else
		{
		item_desc__ = "Re:wind뮤비속 시계를 본따 만든 휴대용 시계\n\n특수효과 : 게임 오버가 되었을 때 바로 직전의 과거로 시간을 되돌림\n또한, 현재 시각과 함께 왁드로이드 완성까지 남은 시간을 표시해줌"
		}
	}
	if cal__img = 3
	{
	item_name__ = "객관안"
	item_desc__ = "자동으로 적을 타깃팅 해준다. 돌격 소총과 함께 사용하면 총을 모든 각도로 자동 조준한다\n\n특수효과 : 객관적으로 판단하여 적을 자동으로 락온"
	}
	if cal__img = 4
	{
	item_name__ = "런닝 나시"
	item_desc__ = "런닝용 나시티\n\n특수효과 : 대쉬 스킬 사용시 소모하는 스테미나량 50% 경감"
	}
	if cal__img = 5
	{
	item_name__ = "보라색 리본"
	item_desc__ = "주르르의 리본\n\n특수효과 : 방어력 10% 증가 및 최대 체력 50만큼 증가"
	}
	if cal__img = 6
	{
	item_name__ = "징버거"
	item_desc__ = "징버거의 징버거\n\n특수효과 : 전투 모드가 아닌경우 체력을 조금씩 회복"
	}
	if cal__img = 7
	{
	item_name__ = "파란 머리핀"
	item_desc__ = "고세구의 머리핀\n\n특수효과 : 방어력 10% 증가 및 최대 체력 50만큼 증가"
	}
	if cal__img = 8
	{
	item_name__ = "응원 깃발"
	item_desc__ = "응원을 받아 강력해짐\n\n특수효과 : 기본 데미지 18% 증가"
	}
	if cal__img = 9
	{
	item_name__ = "알잘딱 가드"
	item_desc__ = "알잘딱으로 자동 방어 해준다\n\n특수효과 : 적에게 피격당할시, 70%확률로 자동 방어"
	}
	if cal__img = 10
	{
	item_name__ = "아이돌 신발"
	item_desc__ = "특수효과 : 점프력 증가 및 중력 감소"
	}
	if cal__img = 11
	{
	item_name__ = "푸른색의 깃발"
	item_desc__ = "특수효과 : 크리티컬 데미지 확률 15% 증가"
	}
	if cal__img = 12
	{
	item_name__ = "다이아몬드 검"
	item_desc__ = "비챤의 다이아몬드 검\n\n특수효과 : 크리티컬 데미지 확률 10% 및 기본 데미지 10% 증가"
	}
	if cal__img = 13
	{
	item_name__ = "AED"
	item_desc__ = "심장 제세동기\n\n특수효과 : 플레이어가 사망하였을때 체력을 1만큼 남기고 즉시 부활"
	}
	if cal__img = 14
	{
	var etc_mes = ""
		if global.max_sylinge1_use > 1
		{
		etc_mes = "(+"+string(global.max_sylinge1_use-1)+")"
		}
	item_name__ = "뱅갈고무나무 에스트 병"+string(etc_mes)
	item_desc__ = "뱅갈고무나무 잎을 우려낸 물, 실제로 우려내서 먹진 말자\n전투 도중 '"+string(global.use_item_for_draw)+"키'를 눌러 사용가능하다.\n\n특수효과 : 최대 체력의 50%만큼 회복 및 상태 이상 해제 (각 전투당 1회 사용가능)"
	}
	if cal__img = 15
	{
	item_name__ = "각성제"
	item_desc__ = "전투 도중 '"+string(global.use_item_for_draw)+"키'를 눌러 사용가능한 각성제\n\n특수효과 : 사용 즉시 레이지 모드 발동 및 상태 이상 해제 (각 전투당 1회 사용가능)"
	}
	if cal__img = 16
	{
	item_name__ = "깨진 하트 크리스탈 (좌)"
	item_desc__ = "깨진 하트 크리스탈의 왼쪽 부분\n\n특수효과 : 최대 체력 100만큼 증가"
	}
	if cal__img = 17
	{
	item_name__ = "깨진 하트 크리스탈 (우)"
	item_desc__ = "깨진 하트 크리스탈의 오른쪽 부분\n\n특수효과 : 최대 체력 100만큼 증가"
	}
	if cal__img = 18
	{
	item_name__ = "하트 크리스탈"
	item_desc__ = "특수효과 : 최대 체력 150만큼 증가"
	}
	if cal__img = 19
	{
	item_name__ = "바다의 왕의 삼지창"
	item_desc__ = "바다의 왕, 귀상어두의 번개를 사용할 수 있다\n\n특수효과 : Rage(레이지)게이지가 80%이상 찬 경우, 공중에서 "+string(global.e_key_for_draw)+"키를 누를시 강력한 특수 스킬 사용"
	}
	if cal__img = 20
	{
	item_name__ = "1차 테스터 기념 동상"
	item_desc__ = "프로젝트 왁 1차 테스터 기념 동상\n\n특수효과 : 방어력 5%, 크리티컬 데미지 확률 12%, 기본 데미지 10% 증가"
	}
	if cal__img = 21
	{
	item_name__ = "2차 테스터 기념 동상"
	item_desc__ = "프로젝트 왁 2차 테스터 기념 동상\n\n특수효과 : 방어력 5%, 크리티컬 데미지 확률 12%, 기본 데미지 10% 증가"
	}
	if cal__img = 22
	{
	item_name__ = "3차 테스터 기념 동상"
	item_desc__ = "프로젝트 왁 3차 테스터 기념 동상\n\n특수효과 : 방어력 5%, 크리티컬 데미지 확률 12%, 기본 데미지 10% 증가"
	}
	if cal__img = 23
	{
	item_name__ = "버그 사냥꾼"
	item_desc__ = "프로젝트 왁 출시 직전에 진행한 디버그 테스트에 참가해주신 테스터에게 지급되는 특수 탈리스만\n\n특수효과 : 크리티컬 데미지 확률 15%, 기본 데미지 20% 증가"
	}
	
	draw_text_kl_scale(xx+50*_c_x-global.key_setting_message*_c_x*70,yy-16*_c_x+global.key_setting_message*_c_x*80,item_name__,16,999,0.74,image_blend,0,-1,font0,1/3.5*_c_x,1/3.5*_c_x,image_angle)
	draw_text_kl_scale(xx+50*_c_x-global.key_setting_message*_c_x*70,yy+global.key_setting_message*_c_x*80,item_desc__,60*_c_x,2300*_c_x,0.4,image_blend,0,-1,font0,1/4*_c_x,1/4*_c_x,image_angle)
	if accesssory_num = 0
	{
	draw_text_kl_scale(xx-24*_c_x,yy-70*_c_x,"장비 중인 탈리스만",16,999,0.8,image_blend,0,-1,font0,1/3*_c_x,1/3*_c_x,image_angle)
	}
	
	if global.key_setting_message = 1 && pressed > 0
	{
	draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5,camera_get_view_y(view_camera[0])+160*_c_x,"장비할 아이템을 선택해주세요 (방향키와 "+string(global.skip_key_for_draw)+"키로 선택합니다)",_c_x*64,-1,0.7,c_white,0,0,font0,_c_x*0.3,_c_x*0.3,0);
	draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5,camera_get_view_y(view_camera[0])+215*_c_x,"(ESC키를 누르면 기존값으로 설정됩니다)",_c_x*64,-1,0.5,c_white,0,0,font0,_c_x*0.25,_c_x*0.25,0);
	}
	

	//draw_text_kl_scale(xx-10*_c_x,yy-60*_c_x,"공격)",16,999,0.8,image_blend,0,-1,font0,1/3*_c_x,1/3*_c_x,image_angle)
	}
}



