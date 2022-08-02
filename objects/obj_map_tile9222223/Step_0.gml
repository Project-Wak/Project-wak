/// @description Insert description here
// You can write your code in this editor


if player.attack_laser_sec = 0 && player.attack_laser = 0 && player.suicide = 0 && player.sting_attack = 0
{
	if !instance_exists(obj_simhae_doo) && !instance_exists(obj_guisangadoo)
	{
	global.room_brightness = 0.05
	obj_camera.tv_x = 1280*0.76
	obj_camera.tv_y = 720*0.76
	}
	else
	{
		if instance_exists(obj_simhae_doo) && obj_simhae_doo.activated = 0
		{
		global.room_brightness = 0.05
		obj_camera.tv_x = 1280*0.76
		obj_camera.tv_y = 720*0.76
		}
	
		if instance_exists(obj_guisangadoo) && obj_guisangadoo.activated = 0
		{
		global.room_brightness = 0.05
		obj_camera.tv_x = 1280*0.76
		obj_camera.tv_y = 720*0.76
		}
	}
}

if player.y <= 16 && global.back_to_origin_stage != 1
{
global.t_b_alpha = 2.01
global.simhaedoo_stage = 1
	if global.b_alpha > 1
	{
	room_goto(room_sector_B03_2_remaked)
	}
}


if player.x > 3385 && mes = 0
{
global.show_guide_mes_spr = 3
	if instance_exists(obj_guisangadoo)
	{
	global.show_guide_mes = "상태 이상(디버프) - 감전\n\n플레이어가 감전되었을 경우, 스테미나가 0이 되버린다."
	}
	else
	{
	global.show_guide_mes = "투사체 회피\n\n플레이어를 타깃팅하여 날라오는 투사체들의 경우,\n달리기와 구르기를 섞어 도망다니면 쉽게 피할 수 있다."
	}
mes ++
}