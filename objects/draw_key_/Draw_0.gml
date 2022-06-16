if global.playing_scene = 0 && global.hp > 0 && global.show_guide_mes = -4
{
var cm_vx = (obj_camera.v_x/1280)*0.9
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5+location*96*cm_vx
var yy = camera_get_view_y(view_camera[0])+160*cm_vx

if img_index = 7 || img_index = 27
{
draw_sprite_ext(sprite95,1,xx,yy,cm_vx,cm_vx,0,c_white,image_alpha*0.8)
}
else
{
draw_sprite_ext(sprite95,0,xx,yy,cm_vx,cm_vx,0,c_white,image_alpha*0.8)
}

var string_ = ""
if img_index = 0 || img_index = 8
{
string_ = "<-"
}
if img_index = 1 || img_index = 9
{
string_ = "->"
}
if img_index = 2 || img_index = 24
{
string_ = string(global.a_key)
}
if img_index = 3
{
string_ = string(global.s_key)
}
if img_index = 4
{
string_ = string(global.w_key)
}
if img_index = 5
{
string_ = string(global.e_key)
}
if img_index = 6
{
string_ = "->"
}
if img_index = 7
{
string_ = "Space"
}
if img_index = 11
{
string_ = string(global.s_key)
}
if img_index = 12
{
string_ = string(global.e_key)
}
if img_index = 13
{
string_ = string(global.guard_key)
	if global.guard_key = vk_up
	{
	string_ = "<-"
	}
}
if img_index = 14
{
string_ = string(global.guard_key)
	if global.guard_key = global.guard_key
	{
	string_ = "<-"
	}
}
if img_index = 15
{
string_ = string(global.q_key)
}
if img_index = 16 || img_index = 26
{
string_ = string(global.e_key)
}

if img_index = 22
{
string_ = string(global.skip_key)
}

if img_index = 23
{
string_ = string(global.skip_key)
}

if img_index = 25
{
string_ = "<- or ->"
}
if img_index = 27
{
string_ = "Space"
}


if img_index = 6
{
draw_text_kl_scale(xx+13*cm_vx,yy,string(string_),16,9999,image_alpha,image_blend,-1,0,font0,cm_vx*1/2.5,cm_vx*1/2.5,-90)
}
else if (img_index = 13 || img_index = 14 || img_index = 25)
{
	if (img_index = 14 || img_index = 25)
	{
		if img_index = 14
		{
		draw_text_kl_scale(xx+13*cm_vx,yy,string(string_),16,9999,image_alpha,image_blend,-1,0,font0,cm_vx*1/2.5,cm_vx*1/2.5,-90)
		}
		else
		{
		draw_text_kl_scale(xx,yy-10*cm_vx,string(string_),16,9999,image_alpha,image_blend,-1,0,font0,cm_vx*1/2.5,cm_vx*1/2.5,0)
		}
	draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5,yy-cm_vx*8,"+",16,9999,image_alpha,image_blend,-1,0,font0,cm_vx*1/2.5,cm_vx*1/2.5,0)
	}
	else
	{
		if string_ = "<-"
		{
		draw_text_kl_scale(xx+13*cm_vx,yy,string(string_),16,9999,image_alpha,image_blend,-1,0,font0,cm_vx/2.5,cm_vx/2.5,-90)
		}
		else
		{
		draw_text_kl_scale(xx,yy-10*cm_vx,string(string_),16,9999,image_alpha,image_blend,-1,0,font0,cm_vx/2.5,cm_vx/2.5,0)
		}
	}
}
else
{
	if img_index != 7
	{
	draw_text_kl_scale(xx,yy-10*cm_vx,string(string_),16,9999,image_alpha,image_blend,-1,0,font0,cm_vx/2.5,cm_vx/2.5,image_angle)
	}
	else
	{
	draw_text_kl_scale(xx,yy-10*cm_vx,string(string_),16,9999,image_alpha,image_blend,-1,0,font0,cm_vx/3,cm_vx/3,image_angle)
	}
}







if img_index = 0 || img_index = 1
{
	if global.run_key != vk_shift
	{
	draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5-2*96*cm_vx-cm_vx*20,yy+85*cm_vx,"이동 (연타 or "+string(global.run_key)+" 눌러 달리기)",16,9999,1,image_blend,0,-1,font0,cm_vx*1/3,cm_vx*1/3,image_angle)
	}
	else
	{
	draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5-2*96*cm_vx-cm_vx*20,yy+85*cm_vx,"이동 (연타 or 쉬프트 눌러 달리기)",16,9999,1,image_blend,0,-1,font0,cm_vx*1/3,cm_vx*1/3,image_angle)
	}
}

if img_index = 2
{
draw_text_kl_scale(xx,yy+85*cm_vx,"일반 공격 (최대 4연타)",16,9999,1,image_blend,0,0,font0,cm_vx*1/3,cm_vx*1/3,image_angle)
}

if img_index = 24
{
draw_text_kl_scale(xx,yy+85*cm_vx,"차지\n\n\n\n[스테미나 대량 소비]\n\n\n\n(달리기 도중 "+string(global.a_key)+")",16,9999,1,image_blend,0,0,font0,cm_vx*1/3,cm_vx*1/3,image_angle)
}

if img_index = 3
{
draw_text_kl_scale(xx,yy+85*cm_vx,"내려 찍기\n\n\n\n[스테미나 소비]\n\n\n\n(공중에서 "+string(global.s_key)+")",16,9999,1,image_blend,0,0,font0,cm_vx*1/3,cm_vx*1/3,image_angle)
}

if img_index = 4
{
draw_text_kl_scale(xx,yy+85*cm_vx,"올려 치기\n\n\n\n[스테미나 소비]",16,9999,1,image_blend,0,0,font0,cm_vx*1/3,cm_vx*1/3,image_angle)
}

if img_index = 5
{
draw_text_kl_scale(xx,yy+85*cm_vx,"레이지 모드\n\n\n\n(레이지(Rage) 풀인 상태로 "+string(global.e_key)+"키 꾹)",16,9999,1,image_blend,0,0,font0,cm_vx*1/3,cm_vx*1/3,image_angle)
}

if img_index = 6
{
draw_text_kl_scale(xx,yy+85*cm_vx,"구르기\n\n\n\n(걷기 or 달리기 도중 아래 방향키)",16,9999,1,image_blend,0,0,font0,cm_vx*1/3,cm_vx*1/3,image_angle)
}

if img_index = 7
{
draw_text_kl_scale(xx,yy+85*cm_vx,"점프",16,9999,1,image_blend,0,0,font0,cm_vx*1/3,cm_vx*1/3,image_angle)
}

if img_index = 8
{
draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5,yy+85*cm_vx,global.w_key,16,9999,1,image_blend,0,0,font0,cm_vx*1/3,cm_vx*1/3,image_angle)
}

if img_index = 11
{
draw_text_kl_scale(xx,yy+85*cm_vx,"돌진베기\n\n\n\n(걷기 or 달리기 도중 "+string(global.s_key)+")\n\n\n\n[스테미나 전부 소비]",16,9999,1,image_blend,0,0,font0,cm_vx*1/3,cm_vx*1/3,image_angle)
}

if img_index = 12
{
draw_text_kl_scale(xx,yy+85*cm_vx,"지진파\n\n\n\n(공중에서 "+string(global.e_key)+")\n\n\n\n[레이지(Rage) 일부 소비]",16,9999,1,image_blend,0,0,font0,cm_vx*1/3,cm_vx*1/3,image_angle)
}

if img_index = 13
{
draw_text_kl_scale(xx,yy+85*cm_vx,"가드",16,9999,1,image_blend,0,0,font0,cm_vx*1/3,cm_vx*1/3,image_angle)
}

if img_index = 14
{
var xx_sec = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5
	if global.n_sword != 6
	{
	draw_text_kl_scale(xx_sec,yy+85*cm_vx,"익스플로전\n\n\n\n(가드키 '먼저' 누르던 도중 "+string(global.e_key)+"키)",16,9999,1,image_blend,0,0,font0,cm_vx*1/3,cm_vx*1/3,image_angle)
	}
	else
	{
	draw_text_kl_scale(xx_sec,yy+85*cm_vx,"할복\n\n\n\n(가드키 '먼저' 누르던 도중 "+string(global.e_key)+"키)",16,9999,1,image_blend,0,0,font0,cm_vx*1/3,cm_vx*1/3,image_angle)
	}
}

if img_index = 15
{
draw_text_kl_scale(xx,yy+85*cm_vx,"회전 베기\n\n\n\n(사용 도중 좌우 및 아래 방향키를 누를시 해당 방향으로 돌진)\n\n\n(공중에서 사용시 후딜 감소)",16,9999,1,image_blend,0,0,font0,cm_vx*1/3,cm_vx*1/3,image_angle)
}

if img_index = 22
{
draw_text_kl_scale(xx,yy+85*cm_vx,"연습장 입장",16,9999,1,image_blend,0,0,font0,cm_vx*1/3,cm_vx*1/3,image_angle)
}

if img_index = 23
{
draw_text_kl_scale(xx,yy+85*cm_vx,"연습장 나가기",16,9999,1,image_blend,0,0,font0,cm_vx*1/3,cm_vx*1/3,image_angle)
}

if img_index = 25
{
draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5,yy+85*cm_vx,"에네르기파\n\n\n\n[레이지(Rage) 대량 소비]\n\n\n\n(방향키 '먼저' 누르던 도중 "+string(global.e_key)+"키)",16,9999,1,image_blend,0,0,font0,cm_vx*1/3,cm_vx*1/3,image_angle)
}

if img_index = 27
{
draw_text_kl_scale(xx,yy+85*cm_vx,"일어 나기\n\n\n\n[기절 상태를 빠르게 풉니다]\n\n\n\n(기절 도중 점프 or 구르기 or 가드)",16,9999,1,image_blend,0,0,font0,cm_vx*1/3,cm_vx*1/3,image_angle)
}



if a = 0
{
	if image_alpha < 1
	{
	image_alpha += 0.05
	}
}
else
{
image_blend = c_gray
var check_all_blue = 1
	with(draw_key_)
	{
		if image_blend != c_gray
		{
		check_all_blue = 0
		}
	}

	if check_all_blue = 1
	{
	image_alpha -= 0.05
		if image_alpha <= 0
		{
		instance_destroy()
		}
	}
	else
	{
		if image_alpha < 1
		{
		image_alpha += 0.05
		}
	}
}
}