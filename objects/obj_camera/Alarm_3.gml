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



if global.guide_boss = 1 && show_guide = 1
{
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
	global.show_guide_mes = "왁드로이드\n\n적이 레이지 모드 상태일 때, 모든 공격에 대한 저항력이 생기기 때문에\n공격보단 최대한 거리를 두며 구르기를 사용해 회피하도록 하자.\n또한, 왁드로이드의 레이저 공격은 '가드 ["+string(keyconverter(global.guard_key))+"]'로 방어 가능하다."
	global.show_guide_mes_spr = 8
	global.guide_gif = Sprite303
	}
	
	
	if instance_exists(obj_worm)
	{
	global.show_guide_mes = "쌉벌레두\n\n쌉벌레두의 레이저는 '가드 ["+string(keyconverter(global.guard_key))+"]'를 통해 막을 수 있다"
	global.show_guide_mes_spr = 8
	global.guide_gif = Sprite318
	}
}


