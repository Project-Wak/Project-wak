/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y+1,floor_parents)
{
gravity = 0
vspeed = 0
}
else
{
gravity = 0.23
}


repeat(100)
{
	if place_meeting(x,y+0.2,floor_parents)
	{
	y -= 0.1
	}
	else
	{
	break;
	}
}


if item_var != 203 && item_var != 206
{
image_index += 0.4
image_angle += angle_dir
image_alpha -= 0.1

	if image_index > 6
	{
	image_alpha = 1.1
	angle_dir = irandom_range(-10,10)/7
	}
}
else
{
	if item_var = 203
	{
	sprite_index = Sprite180
	image_index = 1
	image_angle = 180+45
	}
	else
	{
	sprite_index = Sprite180
	image_index = 9
	image_angle = 180+45
	}
}









if place_meeting(x,y,player) && player.cannot_move = 0 && global.never_move = 0 && global.playing_scene = 0
{
can_interect = 1
}
else
{
can_interect = 0
}


if can_interect = 1 && keyboard_check_pressed(global.skip_key)
{
var sfx = audio_play_sound(buy_item,0,0)
audio_sound_gain(sfx,0.07*global.master_volume*2*global.sfx_volume,0)
	if item_var >= 200
	{
	give_item(2,item_var-200)
	}
	else if item_var >= 100
	{
	give_item(1,item_var-100)
	}
	else
	{
	give_item(0,item_var)
	}
	
	if item_var = 5
	{
	global.show_guide_mes = "아이템\n\n아이템은 맵 곳곳에 숨겨져 존재한다.\n벽에 수상한 문양이 있으면 가까히 가서 조사해보자.\n\n(참고로 한 스테이지당 최소 1개 이상의 아이템이 숨겨져 있다)"
	global.show_guide_mes_spr = 0
	global.guide_gif = Sprite316
	}
instance_destroy()
}