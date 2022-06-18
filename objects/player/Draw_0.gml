if surface_exists(owner_surface)
{
var surf__ = owner_surface
draw_outline(surf__,1.5)
}
else
{
owner_surface = surface_create(1920,1080)
}

if global.visible_player = 1
{
var v_x = obj_camera.v_x/1280
var cm_width = camera_get_view_width(view_camera[0])
var cm_height = camera_get_view_height(view_camera[0])
var cm_x = camera_get_view_x(view_camera[0])
var xx = cm_x+v_x*16
var yy____ = camera_get_view_y(view_camera[0])
var yy = yy____+v_x*16



if surface_exists(global.bubble_surf)
{
draw_outline(global.bubble_surf,1.5)
}
else
{
global.bubble_surf = surface_create(1920,1080)
}




//draw_set_color(c_red)
//draw_set_alpha(1)
//draw_text(x,y-61,global.black_bg_ef)

if global.draw_partici = 1
{
var _img_ind = 0

if ping > 5 && ping <= 10
{
_img_ind = 1
}

if ping > 10 && ping <= 15
{
_img_ind = 2
}

if ping > 15 && ping <= 20
{
_img_ind = 3
}

if ping > 25 && ping <= 30
{
_img_ind = 4
}

if ping > 35
{
_img_ind = 5
}

draw_sprite_ext(Sprite147,_img_ind,xx+camera_get_view_width(view_camera[0])*0.5-v_x*58,yy+playerID*v_x*32+v_x*70,v_x,v_x,0,c_white,1)
draw_text_k_scale(xx+camera_get_view_width(view_camera[0])*0.5-v_x*80,yy+playerID*v_x*32+v_x*64,string(playerID),v_x*64,-1,1,c_white,0,1,font0,v_x*0.35,v_x*0.35,0);
draw_text_k_scale(xx+camera_get_view_width(view_camera[0])*0.5-v_x*100,yy+playerID*v_x*32+v_x*64,string(fps_now)+"/"+string(room_sp_now)+"/"+string(ping),v_x*64,-1,1,c_white,0,1,font0,v_x*0.35,v_x*0.35,0);
draw_text_k_scale(xx+camera_get_view_width(view_camera[0])*0.5-v_x*32,yy+playerID*v_x*32+v_x*64,string(name),v_x*64,-1,1,c_white,0,-1,font0,v_x*0.35,v_x*0.35,0);
}



if x > cm_x && x < cm_x+cm_width && y > yy && y < yy+cm_height
{

	
var p_floor = global.p_floor

if charge_attack >= 1.4 || charge_attack = 0
{
draw_sprite_ext(spr_shadow,0,x,p_floor+27,1-abs(y-p_floor)/48,1-abs(y-p_floor)/64,0,c_white,(1-abs(y-p_floor)/48)*0.3*image_alpha)
}
var spr = sprite_index
	if spr = move_sprite && abs(global.movement_speed) > 6
	{
	spr = spr_move_run
		if global.none_wakgood_mode = true
		{
		spr = spr_move_run247
		}
	}
draw_sprite_ext(spr,image_index,floor(x),floor(y),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
	if abs(global.player_blur) > 0
	{
	draw_sprite_ext(spr,image_index,floor(x)+global.player_blur,floor(y),image_xscale,image_yscale,image_angle,image_blend,image_alpha*0.7)
	draw_sprite_ext(spr,image_index,floor(x)-global.player_blur,floor(y),image_xscale,image_yscale,image_angle,image_blend,image_alpha*0.7)
	}
}







var xscale = -sign_k(image_xscale)
	
if global.lockon = 1
{
var target__ = global.lockon_target
	if instance_exists(target__)
	{
	gun_angle = point_direction(x,y+13,target__.x,target__.y)+180
		for(var i = 16; i > 0; i -= 0.5*(4-global.graphics_for_code))
		{
		draw_set_alpha(0.05)
		draw_set_color(c_gray)
		draw_circle(target__.x,target__.y,i/2,false)
		draw_set_alpha(0.08)
		draw_set_color(c_white)
		draw_circle(target__.x,target__.y,i/3,false)
		}
	}
	else
	{
		if image_xscale > 0
		{
		gun_angle = 360
		}
		else
		{
		gun_angle = 180
		}
	}
}
else
{
	if image_xscale > 0
	{
	gun_angle = 360
	}
	else
	{
	gun_angle = 180
	}
}

if global.n_sword = 5 && attack_gun_ > 0
{
var y_scale = image_yscale
if gun_angle > 90 && gun_angle <= 270
{
y_scale = -image_yscale
}
draw_sprite_ext(spr_gun,0,x-image_xscale*12,y+13-sign(jump)*8,abs(xscale)*0.5,y_scale*0.5,gun_angle,c_white,image_alpha)
//draw_text(x,y,gun_angle)
}
//draw_text_kl_scale(x,y-v_x*64,global.show_challenger,v_x*64,-1,1,c_white,0,0,font0,v_x*0.35,v_x*0.35,0);


if w_alpha > 0 && global.playing_scene = 0 && global.story_next < 100
{
shader_set(shFlash)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,w_alpha)
shader_reset()
}


if instance_exists(obj_angel) && instance_exists(angel_spear)
{
	if obj_angel.patturn >= 4 && obj_angel.patturn < 4.18
	{
	draw_set_color(c_white)
	draw_set_alpha(angel_spear.w_alpha)
	draw_line_width(player.x,obj_angel.y+210,player.x,obj_angel.y-1000,angel_spear.w_alpha)
	}
}


if instance_exists(obj_worm)
{
	if obj_worm.patturn >= 5 && obj_worm.patturn < 6
	{
	draw_set_color(c_white)
	draw_set_alpha(obj_worm.w_alpha)
	draw_line_width(player.x,2329,player.x,player.y-1000,obj_worm.w_alpha)
	}
}
}
