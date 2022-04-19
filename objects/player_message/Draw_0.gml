/// @description Insert description here
// You can write your code in this editor
if can_draw = 1 && global.show_guide_mes = -4
{
draw_set_alpha(image_alpha)
draw_self()

draw_text_kl_scale(x,y-50*image_yscale,real_text,16,9999,image_alpha,image_blend,0,0,font0,image_xscale*1/3,image_yscale*1/3,image_angle)




	if (global.show_time = 1)
	{
	var v_x = obj_camera.v_x/1280
	var xx = player.x-v_x*48
	var yy = player.y-v_x*200
	var cal_days = floor(global.left_time/24)
	var cal_night = "낮"
		if global.n_night = 1
		{
		cal_night = "밤"
		}

	draw_text_kl_scale(x-15*v_x,yy+30*v_x,">",64,-1,1*image_alpha,c_white,-1,-1,font0,v_x/3,v_x/2,0)

	draw_sprite_ext(spr_icon,0,xx-220*v_x,yy+42*v_x,v_x*0.6,v_x*0.6,0,c_white,1*image_alpha)

	draw_text_kl_scale(xx-180*v_x,yy+30*v_x,"현재 시각",64,-1,1*image_alpha,c_white,-1,-1,font0,v_x/3.5,v_x/3.5,0)
	draw_text_kl_scale(xx-175*v_x,yy+50*v_x,string(global.n_time)+":00"+" ("+string(cal_night)+")",64,-1,1*image_alpha,c_white,-1,-1,font0,v_x/4,v_x/4,0)
	draw_text_kl_scale(xx-175*v_x,yy+70*v_x,"피로도 : "+string(global.tiredness)+"/24",64,-1,1*image_alpha,c_white,-1,-1,font0,v_x/4,v_x/4,0)

	draw_text_kl_scale(xx-113*v_x,yy+32*v_x,"/",64,-1,0.8*image_alpha,c_white,-1,-1,font0,v_x/3,v_x/1.5,0)
	draw_text_kl_scale(xx-100*v_x,yy+30*v_x,"D-day",64,-1,0.8*image_alpha,c_white,-1,-1,font0,v_x/3.5,v_x/3.5,0)
	draw_text_kl_scale(xx-95*v_x,yy+50*v_x,string(cal_days)+"일 "+string(global.left_time - cal_days*24)+"시간 남음",64,-1,0.8*image_alpha,c_white,-1,-1,font0,v_x/4,v_x/4,0)


	var n_night__ = 0
	var xx = player.x+v_x*270
	var cal_night = "낮"
		if global.n_night = 1
		{
		cal_night = "밤"
		}
	var time_cal = global.n_time+obj_bed.set_time
	var cal_days = floor((global.left_time+obj_bed.set_time)/24)
	if time_cal > 24
	{
	time_cal -= 24
	}

	if time_cal < 0
	{
	time_cal += 24
	}

	if time_cal >= 21 || time_cal <= 7
	{
	n_night__ = 1
	}
	else
	{
	n_night__ = 0
	}

	var cal_night = "낮"
	if n_night__ = 1
	{
	cal_night = "밤"
	}

	var cal_days2 = floor((global.left_time-obj_bed.set_time)/24)
	var cal_tiredness = global.tiredness - obj_bed.set_time
	if cal_tiredness < 0
	{
	cal_tiredness = 0
	}


	draw_sprite_ext(spr_icon,0,xx-220*v_x,yy+42*v_x,v_x*0.6,v_x*0.6,0,c_white,1*image_alpha)

	draw_text_kl_scale(xx-180*v_x,yy+30*v_x,"기상 시각",64,-1,1*image_alpha,c_white,-1,-1,font0,v_x/3.5,v_x/3.5,0)
	draw_text_kl_scale(xx-175*v_x,yy+50*v_x,string(time_cal)+":00"+" ("+string(cal_night)+")",64,-1,1*image_alpha,c_white,-1,-1,font0,v_x/4,v_x/4,0)
	draw_text_kl_scale(xx-175*v_x,yy+70*v_x,"피로도 : "+string(cal_tiredness)+"/24",64,-1,1*image_alpha,c_white,-1,-1,font0,v_x/4,v_x/4,0)

	draw_text_kl_scale(xx-113*v_x,yy+32*v_x,"/",64,-1,0.8*image_alpha,c_white,-1,-1,font0,v_x/3,v_x/1.5,0)
	draw_text_kl_scale(xx-100*v_x,yy+30*v_x,"D-day",64,-1,0.8*image_alpha,c_white,-1,-1,font0,v_x/3.5,v_x/3.5,0)
	draw_text_kl_scale(xx-95*v_x,yy+50*v_x,string(cal_days2)+"일 "+string(global.left_time-obj_bed.set_time - cal_days2*24)+"시간 남음",64,-1,0.8*image_alpha,c_white,-1,-1,font0,v_x/4,v_x/4,0)
	}
}
