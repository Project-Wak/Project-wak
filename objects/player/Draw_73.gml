/// @description Insert description here
// You can write your code in this editor
if surface_exists(owner_surface)
{
surface_set_target(owner_surface);
draw_clear_alpha(0,0);  // It doesn't matter what colour you give it - it's going to be transparent.
surface_reset_target();
}


if surface_exists(global.bubble_surf)
{
surface_set_target(global.bubble_surf);
draw_clear_alpha(0,0);  // It doesn't matter what colour you give it - it's going to be transparent.
surface_reset_target();
}

if surface_exists(global.rage_surf)
{
surface_set_target(global.rage_surf);
draw_clear_alpha(0,0);  // It doesn't matter what colour you give it - it's going to be transparent.
surface_reset_target();
}


if global.show_credits = 0 && global.show_ui = 1
{
var v_x = obj_camera.v_x/1280
var cm_x = camera_get_view_x(view_camera[0])
var xx = cm_x+v_x*16
var yy____ = camera_get_view_y(view_camera[0])
var yy = yy____+v_x*16


if image_alpha > 0 && global.hp > 0 && global.playing_scene <= 0 && global.t_b_alpha < 1 && global.b_alpha < 0.2 && global.never_move_in_setting = 0
{
	if global.slow_motion = 0 && global.select_dev_setting = 0 && global.story_next < 100 && player.attack_laser+player.attack_laser_sec <= 0 && global.show_guide_mes = -4
	{
		//if show_my_sword > 0
		//{
		//	if global.n_sword = 0
		//	{
		//	draw_text_kl_scale(x,y-120,"장착 안함",v_x*64,-1,show_my_sword,c_white,0,0,font0,v_x*0.35,v_x*0.35,0);
		//	}
			
		//	if global.n_sword = 1
		//	{
		//	draw_text_kl_scale(x,y-120,"양손 광선검",v_x*64,-1,show_my_sword,c_white,0,0,font0,v_x*0.35,v_x*0.35,0);
		//	}
				
		//	if global.n_sword = 2
		//	{
	//		draw_text_kl_scale(x,y-120,"초록 광선검",v_x*64,-1,show_my_sword,c_white,0,0,font0,v_x*0.35,v_x*0.35,0);
		//	}
				
	//		if global.n_sword = 3
	//		{
	//		draw_text_kl_scale(x,y-120,"붉은 광선검",v_x*64,-1,show_my_sword,c_white,0,0,font0,v_x*0.35,v_x*0.35,0);
	//		}
			
	//		if global.n_sword = 4
	//		{
	//		draw_text_kl_scale(x,y-120,"푸른 광선검",v_x*64,-1,show_my_sword,c_white,0,0,font0,v_x*0.35,v_x*0.35,0);
	//		}
	//		
	//		if global.n_sword = 5
//			{
//			draw_text_kl_scale(x,y-120,"돌격 소총",v_x*64,-1,show_my_sword,c_white,0,0,font0,v_x*0.35,v_x*0.35,0);
//			}
//			
//			if global.n_sword = 6
//			{
//			draw_text_kl_scale(x,y-120,"지옥참마도",v_x*64,-1,show_my_sword,c_white,0,0,font0,v_x*0.35,v_x*0.35,0);
//			}
//
		//draw_sprite_ext(item_sword,global.n_sword,x-image_xscale*2,y-64,0.75,0.75,0,c_white,show_my_sword)
		//}
		
	//체력바
	hp_bar_alpha += (1 - hp_bar_alpha)*0.1
		if hp_bar_alpha > 0 && global.slow_motion = 0 && global.show_challenger = 0
		{
		draw_hp += (global.hp - draw_hp)*0.1
		draw_sprite_ext(sprite20,0,xx+66*v_x,yy+32*v_x,(max_hp/1080)*5.5*v_x,2.05*v_x,0,c_white,hp_bar_alpha)
			if global.hp/max_hp > 0 && global.hp <= max_hp
			{
			draw_sprite_ext(sprite20,5,xx+69*v_x,yy+32*v_x,(max_hp/1000)*(global.m_hp/max_hp)*5.5*v_x,1.9*v_x*1.6,0,c_white,hp_bar_alpha)
			draw_sprite_ext(sprite20,1,xx+69*v_x,yy+32*v_x,(max_hp/1000)*(draw_hp/max_hp)*5.5*v_x,1.9*v_x*1.6,0,c_white,hp_bar_alpha)
				if poison_alpha > 0
				{
				draw_sprite_ext(sprite20,6,xx+69*v_x,yy+32*v_x,(max_hp/1000)*(draw_hp/max_hp)*5.5*v_x,1.9*v_x*1.6,0,c_white,poison_alpha)
				}
			}
			
		
			if code.injured_effect > 0
			{
			draw_sprite_ext(sprite20,3,xx+69*v_x,yy+32*v_x,5.5*v_x,2.05*v_x,0,c_white,code.injured_effect)
			}
			
			if global.r_hp_alpha > 0
			{
			draw_sprite_ext(sprite20,3,xx+69*v_x,yy+32*v_x,(max_hp/1080)*5.5*v_x,2.05*v_x,0,c_red,global.r_hp_alpha)
			}
		}
	
		if hp_bar_alpha > 0 && global.slow_motion = 0 && global.show_challenger = 0
		{
		draw_stamina += (global.stamina-global.max_stamina_plus - draw_stamina)*0.1
		draw_sprite_ext(sprite20,0,xx+66*v_x,yy+64*v_x,5.1*v_x,v_x*1.55,0,c_white,hp_bar_alpha)
			if global.stamina/(10+global.max_stamina_plus) > 0
			{
			draw_sprite_ext(sprite20,4,xx+69*v_x,yy+64*v_x,(draw_stamina/10)*5.5*v_x,v_x*1.5,0,c_white,hp_bar_alpha)
			
				if stamina_highlight > 0
				{
				draw_sprite_ext(sprite20,3,xx+69*v_x,yy+64*v_x,(draw_stamina/10)*5*v_x,v_x*1.5,0,c_white,hp_bar_alpha*stamina_highlight)
				}
			}
		}
	
		if hp_bar_alpha > 0 && global.slow_motion = 0 && global.show_challenger = 0
		{
		draw_rage += (global.rage_gauge - draw_rage)*0.1
		draw_sprite_ext(sprite20,0,xx+66*v_x,yy+96*v_x,1.82*v_x,1.71*v_x,0,c_white,hp_bar_alpha)
			if global.rage_gauge/100 > 0
			{
			draw_sprite_ext(sprite20,2,xx+69*v_x,yy+96*v_x,(draw_rage/100)*1.9*v_x,2*v_x,0,c_white,hp_bar_alpha)
			}
		draw_sprite_ext(sprite20,3,xx+69*v_x,yy+96*v_x,1.82*v_x,1.71*v_x,0,c_white,global.rage_w_alpha)
		}
		
		
		if obj_camera.o2_alpha > 0 && global.slow_motion = 0 && global.show_challenger = 0
		{
		draw_o2 += (global.o2 - draw_o2)*0.1
		draw_sprite_ext(sprite20,0,x-24*v_x,y+56*v_x,1.82*v_x,1.71*v_x,0,c_white,obj_camera.o2_alpha)
			if global.o2/100 > 0
			{
			draw_sprite_ext(sprite20,7,x-22*v_x,y+56*v_x,(draw_o2/100)*1.9*v_x,2*v_x,0,c_white,obj_camera.o2_alpha)
			}
		}
		
		if global.medical_slincer1 > 0
		{
		draw_sprite_ext(spr_icon,9,xx+8*v_x,yy+133*v_x,v_x*0.3,v_x*0.3,0,c_white,hp_bar_alpha)
		draw_text_kl_scale(xx+93*v_x,yy+128*v_x,"남은 에스트병 횟수 : "+string(global.can_use_sylinge1),v_x*64,-1,hp_bar_alpha,c_white,0,0,font0,v_x*0.3,v_x*0.3,0);
		}
	}
}


	if global.playing_scene <= 0 && global.b_alpha < 0.3 && !instance_number(setting_parents) && global.hp > 1 && global.show_guide_mes = -4
	{
		if hurt > 0 && ((gravity = 0 && vspeed = 0) || (global.o2 < 100))
		{
		draw_text_kl_scale(x,y-v_x*64,"빠른 일어나기 (Space)",v_x*64,-1,image_alpha*guide__alpha,c_white,0,0,font0,v_x*0.3,v_x*0.3,0);
		guide__alpha += (1 - guide__alpha)*0.04
		}
		else
		{
			if global.hp <= max_hp*0.35 && global.medical_slincer1 > 0 && global.can_use_sylinge1 > 0 && hurt = 0
			{
			draw_text_kl_scale(x,y-v_x*64,"에스트병 사용 (R)",v_x*64,-1,image_alpha*guide__alpha,c_white,0,0,font0,v_x*0.3,v_x*0.3,0);
			guide__alpha += (1 - guide__alpha)*0.04
			}
			else
			{
				if global.room_brightness <= 0.35 && global.lantern > 0 && lantern_turnon <= 0
				{
				draw_text_kl_scale(x,y-v_x*64,"랜턴 켜기 (F)",v_x*64,-1,image_alpha*guide__alpha,c_white,0,0,font0,v_x*0.3,v_x*0.3,0);
				guide__alpha += (1 - guide__alpha)*0.04
				}
				else
				{
				guide__alpha = 0;
				}
			}
		}
	}
}







