/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_angel) && obj_angel.activated = 0 && global.dreamy_alpha > 0.5
{
var random_val_fl = percentage_k(global.graphics_for_code*8)
	if random_val_fl = 1
	{
	xx_ = player.x+irandom_range(-500,500)
	yy_ = player.y+27+irandom_range(-32,32)
	var random_val___2 = percentage_k(50)
	create_buble_effect(0.15,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.07,0.07,$FF62D1F7,$FF6C60CD,2,$FF191919,xx_,yy_,998+random_val___2*2,1,false,false)
	}
}

if global.b_alpha < 0.1
{
	if instance_exists(obj_angel)
	{
	var dis_ = abs(player.x-2836)
		if player.x > 2836
		{
		dis_ = 0
		}
	global.dreamy_alpha = (1 - dis_/500)*1.5
	var __cal__ = (dis_/500 - 1)*0.15
	
	if __cal__ < 0.15
	{
	__cal__ = 0.15
	}
	
	global.room_brightness = __cal__
	}
	else
	{
		if !instance_exists(obj_last_boss) && !instance_exists(master_volume_setting)
		{
		global.dreamy_alpha += (-0.1 - global.dreamy_alpha)*0.01
		}
	}
}




if abs(player.x-2605) <= 32 && show_mes = 0 && global.show_credits = 0
{
show_mes++
global.show_guide_mes_spr = 6
global.show_guide_mes = "점점 이 연구소 지하의 끝이 보이는 것 같다"
}


if abs(player.x-2805) <= 32 && show_mes = 1 && global.show_credits = 0
{
show_mes++
global.show_guide_mes_spr = 6
global.show_guide_mes = "왠지 미리 장비 세팅 및 게임 저장을 하는게 좋을 것 같다"
}
