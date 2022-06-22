/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])
var xxx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])


if instance_exists(obj_camera)
{
depth = obj_camera.depth+32
}






	
if global.rainy > 0
{
	if alpha < 1
	{
	alpha += 0.02
	}
	
	if global.rainy = 1 && !audio_is_playing(rain_sound_effect) && room = room_sector_outside
	{
	sfx = audio_play_sound(rain_sound_effect,0,0)
	}
}
else
{
	if alpha > 0
	{
	alpha -= 0.02
	}
		
	if alpha2 > 0
	{
	alpha2 -= 0.02
	}
}

if global.rainy != 1 || room != room_sector_outside
{
	if sfx != -1
	{
	audio_stop_sound(sfx)
	sfx = -1
	}
}


if sfx != -1
{
	if room != menu
	{
	audio_sound_gain(sfx,alpha*0.4*0.3*global.master_volume*2*global.sfx_volume,0)
	}
	else
	{
	audio_sound_gain(sfx,0,0)
	}
}



depth = -(room_width*3)


if global.rainy = 1 && alpha > 0 && room = room_sector_outside
{
var snow = part_system_create();

var particle1 = part_type_create();//파티클 타입 생성


part_type_sprite(particle1,spr_rain,0,0,true)


part_type_life(particle1,500,900);//파티클의 수명(랜덤)
part_type_size(particle1,0.2*2,0.6*2,0,0);//파티클의 크기(랜덤)
part_type_color1(particle1,c_white);//파티클의 색(1가지색)
part_type_alpha2(particle1,alpha,0);//파티클의 투명도(변화)
part_type_speed(particle1,6.7*3.5+(global.wind_dir*0.1),13*3.5+(global.wind_dir*0.1),0,0);//파티클의 속도(랜덤)
part_type_direction(particle1,270+floor(global.wind_dir),270+floor(global.wind_dir),0,0);//파티클의 방향(중력 방향)
part_type_orientation(particle1,90,90,0,0,1);//파티클 이미지 방향
//part_type_shape(particle1,shape);//파티클의 종류

var emitter1 = part_emitter_create(snow);//파티클 이미터 생성
var camera_yscale = obj_camera.v_y

//part_emitter_region(snow,emitter1,xx-10,xx+camera_xscale+10,yy-10,yy-10,ps_shape_line,ps_distr_linear);//생성 범위
//part_emitter_stream(snow,emitter1,particle1,1);//파티클 생성
//part_particles_create(emitter1,xx,yy,particle1,-2);//파티클 이미터 생성

part_system_draw_order(snow,1);//파티클 생성시 표시 순서


var random_var = percentage_k(80+global.graphics_for_code*5)
var random_var_rain_amount = global.graphics_for_code
if random_var = 1
{
	for(var i = 0; i < random_var_rain_amount; i++)
	{
	var dir__ = -10
	var set_x = irandom_range(xx-global.snow_effect_distance*100-abs(dir__)*64,xxx+global.snow_effect_distance*100+abs(dir__)*64)
	var set_y = (yy-camera_yscale/18)-100
	
	var random_cre_obj = percentage_k(10+global.graphics_for_code*5)
	
	if global.graphics_for_code >= 2
	{
	random_cre_obj = 2
	}
		if random_cre_obj = 1
		{
		var _rain_ef = instance_create_depth(set_x,set_y,obj_camera.depth+15,rain_effect)
		_rain_ef.image_angle = 270+dir__+90
		_rain_ef.direction = 270+dir__
		_rain_ef.vspeed = irandom_range((6.7*3.5+(dir__*0.1))*1000,(13*3.5+(dir__*0.1))*1000)/1000
		_rain_ef.image_xscale = irandom_range(0.2*3*10,0.8*3*10)/10
		_rain_ef.image_yscale = irandom_range(0.2*3*10,0.8*3*10)/10
		_rain_ef.ignore_floor = 0
		}
		else if random_cre_obj = 2
		{
		var _rain_ef = instance_create_depth(set_x,set_y,obj_camera.depth+15,rain_effect)
		_rain_ef.image_angle = 270+dir__+90
		_rain_ef.direction = 270+dir__
		_rain_ef.vspeed = irandom_range((6.7*3.5+(dir__*0.1))*1000,(13*3.5+(dir__*0.1))*1000)/1000
		_rain_ef.image_xscale = irandom_range(0.2*3*10,0.8*3*10)/10
		_rain_ef.image_yscale = irandom_range(0.2*3*10,0.8*3*10)/10
		_rain_ef.ignore_floor = percentage_k(40)
		}
		else
		{
		part_particles_create(emitter1,set_x,set_y,particle1,1)
		}
	}
}


	if instance_number(player) > 0
	{
	x = player.x
	y = player.y
	}
}




if global.rainy = 2 && alpha > 0
{
var snow = part_system_create();

var particle1 = part_type_create();//파티클 타입 생성


part_type_sprite(particle1,spr_snow_flake,0,0,true)



part_type_life(particle1,500,900);//파티클의 수명(랜덤)
part_type_size(particle1,0.1*3,0.8*3,0,0);//파티클의 크기(랜덤)
part_type_color1(particle1,c_white);//파티클의 색(1가지색)
part_type_alpha2(particle1,alpha,0);//파티클의 투명도(변화)

part_type_speed(particle1,1.2*3.5,1.8*3.5,0,0);//파티클의 속도(랜덤)
part_type_direction(particle1,270+floor(global.wind_dir),270+floor(global.wind_dir),0,0);//파티클의 방향(중력 방향)
part_type_orientation(particle1,0,360,0,0,1);//파티클 이미지 방향
//part_type_shape(particle1,shape);//파티클의 종류

var emitter1 = part_emitter_create(snow);//파티클 이미터 생성
var camera_yscale = obj_camera.v_y

//part_emitter_region(snow,emitter1,xx-10,xx+camera_xscale+10,yy-10,yy-10,ps_shape_line,ps_distr_linear);//생성 범위
//part_emitter_stream(snow,emitter1,particle1,1);//파티클 생성
//part_particles_create(emitter1,xx,yy,particle1,-2);//파티클 이미터 생성

part_system_draw_order(snow,1);//파티클 생성시 표시 순서


var random_var = percentage_k(50+((global.snowflake_amount)*100)*0.2+floor(abs(global.wind_dir)))
if random_var = 1
{
	for(var i = 0; i < (global.snow_effect_distance+floor(global.wind_dir*0.5))*0.1+1; i++)
	{
	part_particles_create(emitter1,irandom_range(xx-global.snow_effect_distance*100-abs(global.wind_dir)*64,xxx+global.snow_effect_distance*100+abs(global.wind_dir)*64),(yy-camera_yscale/18)-global.snow_effect_distance*50,particle1,1)
	}
}


	if instance_number(player) > 0
	{
	x = player.x
	y = player.y
	}
}