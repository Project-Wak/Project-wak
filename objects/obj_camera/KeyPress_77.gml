/// @description Insert description here
// You can write your code in this editor


var show_guide = 0

if instance_exists(player)
{
	if player.assult_mode <= -299
	{
	show_guide = 1
	}
	
	if instance_exists(obj_wakdroid) && obj_wakdroid.vspeed = 0 && obj_wakdroid.gravity = 0 && obj_wakdroid.hspeed = 0
	{
	show_guide = 1
	}
}



if instance_exists(obj_wakdroid) && global.show_guide_mes = -4
{
alarm[3] = 1
}




if global.guide_boss = 1 && show_guide = 1 && (global.time_plusment = 2 || global.nickname = "우왁굳" || global.nickname = "왁굳")
{
	if instance_exists(obj_wak_doo)
	{
	global.show_guide_mes = "거대 왁두\n\n플레이어의 공격 타임이 오면, 무작정 공격하기 보단\n적당히 공격한 후, 보스의 다음 공격 패턴에 대비해 하는 것이 좋다."
	global.show_guide_mes_spr = 8
	global.guide_gif = Sprite322
	}
	
	if instance_exists(obj_twin_eye)
	{
	global.show_guide_mes = "객관안과 스킵안\n\n보스가 지상에 내려오는 타이밍을 노려 공략할 수 있다.\n또한, 공중에서 떨어지는 보스는\n 미리 아무 방향으로나 달리고 있으면 쉽게 피할 수 있다."
	global.show_guide_mes_spr = 8
	global.guide_gif = Sprite298
	}


	if instance_exists(obj_angel)
	{
	global.show_guide_mes = "엔젤로이드\n\n공격이 오기 전, 항상 '특정한' 애니메이션 효과 혹은 효과음이 재생된다.\n이를 통해 보다 쉽게 공격이 오는 타이밍을 확인할 수 있다."
	global.show_guide_mes_spr = 8
	global.guide_gif = Sprite300
	}


	if instance_exists(obj_simhae_doo)
	{
	global.show_guide_mes = "심해두\n\n빠르게 돌진하는 적을 피하기 위해,\n적에게서 멀리 떨어지는 방향으로 구르면 보다 쉽게 회피할 수 있다."
	global.show_guide_mes_spr = 8
	global.guide_gif = Sprite301
	}


	if instance_exists(obj_guisangadoo)
	{
	global.show_guide_mes = "왁귀상어\n\n공격이 오기 전, 항상 '특정한' 애니메이션 효과 혹은 효과음이 재생된다.\n이를 통해 보다 쉽게 공격이 오는 타이밍을 확인할 수 있다."
	global.show_guide_mes_spr = 8
	global.guide_gif = Sprite302
	}


	if instance_exists(obj_wakdroid)
	{
	global.show_guide_mes = "왁드로이드\n\n적이 레이지 모드 상태일 때, 모든 공격에 대한 저항력이 생기기 때문에\n공격보단 최대한 거리를 두며 구르기를 사용해 회피하도록 하자.\n또한, 왁드로이드의 레이저/회전베기는 '가드 ["+string(keyconverter(global.guard_key))+"]'로 방어 가능하다."
	global.show_guide_mes_spr = 8
	global.guide_gif = Sprite303
	}
	
	
	if instance_exists(obj_worm)
	{
	global.show_guide_mes = "쌉벌레두\n\n해당 보스는 단단한 장갑을 두르고 있어, 쉽게 데미지를 입힐 수 없다.\n다만, 꼬리 부분의 '코어'를 노리면 막대한 대미지를 입힐 수 있다."
	global.show_guide_mes_spr = 8
	global.guide_gif = Sprite310
	}
	
	
	if instance_exists(obj_messi)
	{
	global.show_guide_mes = "왁두의 권속 - 메시\n\n보스를 상대할때 꽤나 까다로운 스태미나 조절을 요구하는데,\n이는 '내려찍기' 사용을 최대한 자제하면 스테미나 관리가 훨씬 쉬워진다."
	global.show_guide_mes_spr = 8
	global.guide_gif = Sprite315
	}
	
	if instance_exists(obj_last_boss)
	{
	global.show_guide_mes = "폭주한 왁드로이드\n\n레이저 공격 패턴은 플레이어를 타깃팅하여 발사하기에,\n점프나, 구르기등으로 피할 수 없다.\n따라서, '가드 ["+string(keyconverter(global.guard_key))+"]'를 통해 막도록 하자"
	global.show_guide_mes_spr = 8
	global.guide_gif = Sprite320
	}
}
