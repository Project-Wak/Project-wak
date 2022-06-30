/// @description Insert description here
// You can write your code in this editor
//무기 이미지
var cal__img = now_set_weapon
	if pressed > 0
	{
	cal__img = pressed-1
	}
		
var _c_x = obj_camera.v_x/1280
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5-250*_c_x
var yy = camera_get_view_y(view_camera[0])+(200-10)*_c_x
draw_set_alpha(0.8)
draw_set_color($FF191414)
draw_rectangle(camera_get_view_x(view_camera[0])-128,camera_get_view_y(view_camera[0])-128,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])+128,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])+128,0)

if bg_alpha > 0
{
draw_set_alpha(bg_alpha)
draw_set_color(bg_col)
draw_rectangle(camera_get_view_x(view_camera[0])-128,camera_get_view_y(view_camera[0])-128,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])+128,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])+128,0)
}

if global.key_setting_message = 0
{
var xx2 = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5-410*_c_x
draw_set_alpha(0.8)
draw_set_color($FF0C0A0A)
draw_rectangle(camera_get_view_x(view_camera[0])-128,camera_get_view_y(view_camera[0])-128,xx2,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])+128,0)
}

if (pressed > 0 && global.key_setting_message > 0) || global.key_setting_message = 0
{
	if global.n_to_setting__ = 0
	{
		if global.key_setting_message = 1
		{
			if pressed > 0
			{
			draw_sprite_ext(sprite_index,10,xx-_c_x*64,yy,-_c_x*0.8,_c_x*0.8,0,c_white,1)
			draw_sprite_ext(sprite_index,10,xx+_c_x*64,yy,_c_x*0.8,_c_x*0.8,0,c_white,1)
			}
		}
		
	draw_sprite_ext(sprite_index,image_index,xx,yy,_c_x*0.8,_c_x*0.8,0,c_white,1)
	

	draw_sprite_ext(item_sword,cal__img,xx,yy,_c_x*0.6,_c_x*0.6,0,c_white,1)
	
	var item_name_upgrade = ""
	var item_name__ = "장착 안함"
	var item_desc__ = "무기를 장착하지 않음\n가드력 0%\n\n특수 효과 : 무기를 사용하는 공격은 사용 불가 (단, 달리기를 하지 않아도 "+string(global.a_key)+"키를 누를시 대쉬 스킬 발동)"
	
	
	if cal__img = 1
	{
	item_name__ = "양손 광선검 (+"+string(global.weapon_upgraded[cal__img])+")"
	item_name_upgrade = "양손 광선검 (+"+string(global.weapon_upgraded[cal__img]+1)+")"
	item_desc__ = "양손으로 광선검을 사용한다\n가드력 0%\n\n특수 효과 : '익스플로전' 사용 가능"
	}
	if cal__img = 2
	{
	item_name__ = "초록 광선검 (+"+string(global.weapon_upgraded[cal__img])+")"
	item_name_upgrade = "초록 광선검 (+"+string(global.weapon_upgraded[cal__img]+1)+")"
	item_desc__ = "왁굳에디션 광선검\n가드력 10%\n\n특수 효과 : 일반 공격 공속 증가"
	}
	if cal__img = 3
	{
	item_name__ = "붉은 광선검 (+"+string(global.weapon_upgraded[cal__img])+")"
	item_name_upgrade = "붉은 광선검 (+"+string(global.weapon_upgraded[cal__img]+1)+")"
	item_desc__ = "푸른 광선검과 함께라면 더욱 강력해진다\n가드력 0%"
	}
	if cal__img = 4
	{
	item_name__ = "푸른 광선검 (+"+string(global.weapon_upgraded[cal__img])+")"
	item_name_upgrade = "푸른 광선검 (+"+string(global.weapon_upgraded[cal__img]+1)+")"
	item_desc__ = "붉은 광선검과 함께라면 더욱 강력해진다\n가드력 0%"
	}
	if cal__img = 5
	{
	item_name__ = "돌격 소총 (+"+string(global.weapon_upgraded[cal__img])+")"
	item_name_upgrade = "돌격 소총 (+"+string(global.weapon_upgraded[cal__img]+1)+")"
	item_desc__ = "가디언 팬치들이 사용하던 소총 (예능 무기)\n\n특수 효과 : "+string(global.a_key)+"키를 사용한 공격만 가능, 가드 불가, 총알 제한 없음\n적의 방어력을 무시한 고정 데미지 적용"
	}
	if cal__img = 6
	{
	item_name__ = "지옥참마도 (+"+string(global.weapon_upgraded[cal__img])+")"
	item_name_upgrade = "지옥참마도 (+"+string(global.weapon_upgraded[cal__img]+1)+")"
	item_desc__ = "검성 우왁굳이 되는거다\n가드력 20%\n\n특수 효과 : '할복' 사용 가능"
	}



		if cal__img != 0
		{
		draw_text_kl_scale(xx-24*_c_x,yy-70*_c_x,"강화 대상",16,999,0.8,image_blend,0,-1,font0,1/3*_c_x,1/3*_c_x,image_angle)
		draw_text_kl_scale(xx+50*_c_x,yy+60*_c_x-16*_c_x,item_name__,16,999,0.65,image_blend,0,-1,font0,1/3.5*_c_x,1/3.5*_c_x,image_angle)
		draw_text_kl_scale(xx+50*_c_x,yy+60*_c_x,item_desc__,54*_c_x,2300*_c_x,0.33,image_blend,0,-1,font0,1/4*_c_x,1/4*_c_x,image_angle)
		draw_text_kl_scale(xx-24*_c_x,yy+40*_c_x,"강화 전)",16,999,0.8,image_blend,0,-1,font0,1/3*_c_x,1/3*_c_x,image_angle)
	
		draw_text_kl_scale(xx-24*_c_x,yy+180*_c_x,"강화 후)",16,999,0.8,image_blend,0,-1,font0,1/3*_c_x,1/3*_c_x,image_angle)
		draw_text_kl_scale(xx+50*_c_x,yy+200*_c_x-16*_c_x,item_name_upgrade,16,999,0.74,image_blend,0,-1,font0,1/3.5*_c_x,1/3.5*_c_x,image_angle)
		
			
			if global.weapon_upgraded[cal__img] = 0 && cal__img != 5 && global.none_wakgood_mode = false
			{
			draw_text_kl_scale(xx+50*_c_x,yy+200*_c_x,"\n+ 기본 데미지 +3증가 및 '에네르기파' 사용 가능",54*_c_x,2300*_c_x,0.63,image_blend,0,-1,font0,1/4*_c_x,1/4*_c_x,image_angle)
			}
			else
			{
			draw_text_kl_scale(xx+50*_c_x,yy+200*_c_x,"\n+ 기본 데미지 +3증가",54*_c_x,2300*_c_x,0.63,image_blend,0,-1,font0,1/4*_c_x,1/4*_c_x,image_angle)
			}

		draw_text_kl_scale(xx+50*_c_x,yy+325*_c_x,"필요한 재료 : ",54*_c_x,2300*_c_x,0.8,image_blend,0,-1,font0,1/3.5*_c_x,1/3.5*_c_x,image_angle)
		
		
			for(var i = 0; i <= 3; i++)
			{
			var item_value = requirement[i]
				if item_value != -4
				{
				draw_text_kl_scale(xx+50*_c_x,yy+(350+i*27)*_c_x,string(global.item_name_owned[item_value])+" ("+string(global.item_owned[item_value])+" / "+string(requirement_amount[i])+")",54*_c_x,2300*_c_x,0.4,image_blend,0,-1,font0,1/4*_c_x,1/4*_c_x,image_angle)
				}
				else
				{
					if i = 0
					{
					draw_text_kl_scale(xx+50*_c_x,yy+(350)*_c_x,"없음",54*_c_x,2300*_c_x,0.4,image_blend,0,-1,font0,1/4*_c_x,1/4*_c_x,image_angle)
					}
				}
			}
		draw_text_kl_scale(xx+50*_c_x,yy+250*_c_x,"필요한 골드 : ",54*_c_x,2300*_c_x,0.8,image_blend,0,-1,font0,1/3.5*_c_x,1/3.5*_c_x,image_angle)
		draw_text_kl_scale(xx+50*_c_x,yy+275*_c_x,string(requirement_gold)+"Gold",54*_c_x,2300*_c_x,0.4,image_blend,0,-1,font0,1/4*_c_x,1/4*_c_x,image_angle)
		draw_text_kl_scale(xx+50*_c_x,yy+290*_c_x,"(보유 중인 골드 :    "+string(global.gold)+" Gold)",64*_c_x,999,0.67,image_blend,0,-1,font0,1/3.8*_c_x,1/3.8*_c_x,image_angle)
		}
		else
		{
		draw_text_kl_scale(xx-24*_c_x,yy-70*_c_x,"강화 대상 (클릭 혹은 "+string(global.skip_key)+"키를 눌러 변경)",16,999,0.8,image_blend,0,-1,font0,1/3*_c_x,1/3*_c_x,image_angle)
		}
	}
	//draw_text_kl_scale(xx-10*_c_x,yy-60*_c_x,"공격)",16,999,0.8,image_blend,0,-1,font0,1/3*_c_x,1/3*_c_x,image_angle)
}

	if global.key_setting_message = 1 && pressed > 0
	{
	draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5,camera_get_view_y(view_camera[0])+630*_c_x,"강화할 장비를 선택해주세요 (방향키와 "+string(global.skip_key)+"키로 선택합니다)",_c_x*64,-1,0.7,c_white,0,0,font0,_c_x*0.3,_c_x*0.3,0);
	draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5,camera_get_view_y(view_camera[0])+665*_c_x,"(ESC키를 누르면 기존값으로 설정됩니다)",_c_x*64,-1,0.5,c_white,0,0,font0,_c_x*0.25,_c_x*0.25,0);
	}
	else
	{
		if cal__img != 0
		{
		draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5,camera_get_view_y(view_camera[0])+630*_c_x,"강화할 장비를 선택했다면, 'R'키를 눌러 강화합니다",_c_x*64,-1,0.7,c_white,0,0,font0,_c_x*0.3,_c_x*0.3,0);
		}
	//draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5,camera_get_view_y(view_camera[0])+615*_c_x,"(ESC키를 누르면 기존값으로 설정됩니다)",_c_x*64,-1,0.5,c_white,0,0,font0,_c_x*0.25,_c_x*0.25,0);
	}
	
	if global.n_to_setting__ = 0
	{
	draw_text_kl_scale(camera_get_view_x(view_camera[0])+32*_c_x,camera_get_view_y(view_camera[0])+32*_c_x,"- 강화",16,999,0.8,image_blend,0,-1,font0,1/2.5*_c_x,1/2.5*_c_x,image_angle)
	}
	else
	{
	draw_text_kl_scale(camera_get_view_x(view_camera[0])+32*_c_x,camera_get_view_y(view_camera[0])+32*_c_x,"- 기타",16,999,0.8,image_blend,0,-1,font0,1/2.5*_c_x,1/2.5*_c_x,image_angle)
	}


draw_text_kl_scale(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-42*_c_x,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-32*_c_x,"(ESC키 혹은 Tab키로 창 닫기)",16,999,0.7,$FFCC8E61,0,1,font0,1/3.5*_c_x,1/3.5*_c_x,image_angle)


var yy_ = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-(160-10)*_c_x
var yy = camera_get_view_y(view_camera[0])+(160-10)*_c_x
if global.key_setting_message = 0
{
///////////////////////////////////////////////////////////////////////////////////
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5-420*_c_x
draw_set_alpha(0.7)
draw_set_color(c_white)
draw_line_width(xx,yy,xx,yy_,2*_c_x)

///////////////////////////////////////////////////////////////////////////////////
}


//var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-280*_c_x

//draw_set_alpha(0.7)
//draw_line_width(xx,yy,xx,yy_,2*_c_x)

//draw_text_kl_scale(xx-32*_c_x,yy+260*_c_x,"보유 중인 골드)\n\n"+string(global.gold)+"Gold",64*_c_x,999,0.9,image_blend,0,-1,font0,1/3*_c_x,1/3*_c_x,image_angle)

//var draw_i = 0
//	for(var i = 0; i < 5; i++)
//	{
//		if global.item_owned[i] > 0
//		{
//		draw_text_kl_scale(xx+20*_c_x,yy+27*_c_x+35*_c_x*draw_i,string(global.item_name_owned[i])+" x"+string(global.item_owned[i]),54*_c_x,2300*_c_x,0.7,image_blend,0,-1,font0,1/3.2*_c_x,1/3.2*_c_x,image_angle)
//		draw_i ++
//		}
//	}
