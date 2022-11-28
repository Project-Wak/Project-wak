/// @description Insert description here
// You can write your code in this editor
//draw_sprite_ext(spr_shadow,0,x,check_floor+100,(1-abs(y+100-check_floor)/48)*2,2*(1-abs(y+100-check_floor)/64),0,c_white,(1-abs(y-check_floor)/256)*0.3)
if surface_exists(owner_surface)
{
var surf__ = owner_surface
draw_outline(surf__,1.5)
}
else
{
owner_surface = surface_create(1920,1080)
}

if grabing_alpha > 0
{
	for(var i = 1; i > 0.5; i -= 0.08)
	{
		for(var ii = -3; ii <= 3; ii++)
		{
		var _color_ = $FF75F2FF
			if i < 0.7
			{
			_color_ = $FF36BFFF
			}
		draw_sprite_ext(sprite15_1,2,player.x,player.y,image_xscale*(4 - abs(0 - ii)*0.5),image_yscale*i,ii*5,_color_,grabing_alpha/(2.5 - abs(0 - ii)*0.7))
		
			if grabing_walpha > 0
			{
			draw_sprite_ext(sprite15_1,2,player.x,player.y,image_xscale*(4 - abs(0 - ii)*0.5),image_yscale*i,ii*5,c_white,grabing_walpha)
			}
		}
	}
	
draw_sprite_ext(sprite15_1,2,player.x,player.y,image_xscale*3,image_yscale*0.8,90,_color_,grabing_alpha)

	if grabing_walpha > 0
	{
	draw_sprite_ext(sprite15_1,2,player.x,player.y,image_xscale*3,image_yscale*0.8,90,c_white,grabing_walpha)
	}
}



//for(var i = -4; i < 4; i += 0.5)
//{
//draw_sprite_ext(sprite_index,image_index,x,y+i,image_xscale,image_yscale,image_angle,image_blend,image_alpha/i/5)
//draw_sprite_ext(sprite_index,image_index,x+i,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha/i/5)
//}
draw_self()
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_black,alpha*0.7)

shader_set(shFlash)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,w_alpha)
shader_reset()


if global.fps_draw > 0
{
draw_text(x+32,y,scene__)
draw_text(x-32,y,patturn)
draw_text(x+100,y,timer)
draw_text(x-100,y,instance_number(obj_wak_doo))
}