/// @description Insert description here
// You can write your code in this editor
//if global.trailer_mode = 0
if do_not_draw = 0
{
var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])+160
var cm_vx = 1

for(var i = 0; i < 8; i ++)
{
draw_set_color(c_black)
draw_set_alpha(image_alpha*0.16)
draw_rectangle(xx,yy+i*3*cm_vx,xx+camera_get_view_width(view_camera[0]),yy+150-i*3,0)
draw_set_alpha(1)
}

	if text = "게임 모드 선택 중"
	{
	var gamemode_val_ = floor(global.gamemode)

		if gamemode_val_ <= 1
		{
		gamemode_val_ = "1 vs 1"
		}

		if gamemode_val_ = 2
		{
		gamemode_val_ = "외나무 다리 (1 vs 1)"
		}

		if gamemode_val_ = 3
		{
		gamemode_val_ = "이어싸우기 (2 vs 2)"
		}

		if gamemode_val_ = 4
		{
		gamemode_val_ = "보스 레이드 (1 vs 3)"
		}

		if gamemode_val_ = 5
		{
		gamemode_val_ = "특수 능력 대전 (1 vs 1)"
		}
		
		if gamemode_val_ = 6
		{
		gamemode_val_ = "분조장 (1 vs 1)"
		}
		
		if gamemode_val_ = 7
		{
		gamemode_val_ = "아기뺑띠 (1 vs 1 vs 1 vs 1)"
		}
	draw_text_kl_scale(xx+camera_get_view_width(view_camera[0])*0.5,yy+21,text,32,-1,image_alpha,c_white,0,0,font0,2/3*cm_vx,2/3*cm_vx,0)

	draw_text_kl_scale(xx+camera_get_view_width(view_camera[0])*0.5,yy+83*cm_vx,gamemode_val_,32,-1,image_alpha,c_white,0,0,font0,1/3*cm_vx,1/3*cm_vx,0)
	}
	else
	{
	draw_text_kl_scale(xx+camera_get_view_width(view_camera[0])*0.5,yy+21,text,32,-1,image_alpha,c_white,0,0,font0,2/3*cm_vx,2/3*cm_vx,0)

	draw_text_kl_scale(xx+camera_get_view_width(view_camera[0])*0.5,yy+83*cm_vx,sub_text,32,-1,image_alpha,c_white,0,0,font0,1/3*cm_vx,1/3*cm_vx,0)
	}

	if w_alpha > 0
	{
	draw_set_color(c_white)
	draw_set_alpha(w_alpha)
	draw_rectangle(xx,yy,xx+camera_get_view_width(view_camera[0]),yy+150,0)
	}
}
