/// @description Insert description here
// You can write your code in this editor
var spr_1 = sprite173141
var spr_2 = Sprite140142
var spr_3 = Sprite140
var spr_4 = Sprite143151

var color_1 = c_white
var color_2 = $FF1C1CB2
var color_3 = $FF6D52F2


if a = 0
{
draw_sprite_ext(spr_2,0,x,y,image_xscale*xscale_shaker*0.9,image_yscale,image_angle,c_white,w_alpha__)
draw_sprite_ext(spr_1,0,x,y-9-laser_dis*128,image_xscale*xscale_shaker*0.9,image_yscale,image_angle,c_white,w_alpha__)
	for(var i = 1; i < 1.3; i += 0.05)
	{
	draw_sprite_ext(spr_1,0,x,y,image_xscale*xscale_shaker*0.9*i,image_yscale,image_angle,c_black,image_alpha*0.08)
	}
	for(var i = 1; i < 1.3; i += 0.05)
	{
	draw_sprite_ext(spr_1,0,x,y,image_xscale*xscale_shaker*0.9*i,image_yscale,image_angle,color_3,image_alpha*0.05)
	}
	for(var i = 1; i < 1.3; i += 0.05)
	{
	draw_sprite_ext(spr_1,0,x,y,image_xscale*xscale_shaker*0.9*i,image_yscale,image_angle,color_2,image_alpha*0.05)
	}
	for(var i = 0.9; i < 1.1; i += 0.05)
	{
	draw_sprite_ext(spr_1,0,x,y,image_xscale*xscale_shaker*0.9*i,image_yscale,image_angle,c_black,image_alpha*0.05)
	draw_sprite_ext(spr_1,0,x,y,image_xscale*xscale_shaker*0.9*i,image_yscale,image_angle,color_3,image_alpha*0.01)
	}
	for(var i = 1; i < 1.3; i += 0.05)
	{
	draw_sprite_ext(spr_1,0,x,y,image_xscale*xscale_shaker*0.9*i,image_yscale,image_angle,color_2,image_alpha*0.1)
	}
draw_sprite_ext(spr_1,0,x,y,image_xscale*xscale_shaker*0.9,image_yscale,image_angle,c_white,alpha1)
	
	if global.graphics_for_code >= 2
	{
		for(var i = 1; i < 1.3; i += 0.05)
		{
		draw_sprite_ext(spr_2,0,x,y-9-laser_dis*128,image_xscale*xscale_shaker*0.9*i,image_yscale*i,image_angle,c_black,image_alpha*0.08)
		}
		for(var i = 1; i < 1.3; i += 0.05)
		{
		draw_sprite_ext(spr_2,0,x,y-9-laser_dis*128,image_xscale*xscale_shaker*0.9*i,image_yscale*i,image_angle,color_3,image_alpha*0.05)
		}
		for(var i = 1; i < 1.3; i += 0.05)
		{
		draw_sprite_ext(spr_2,0,x,y-9-laser_dis*128,image_xscale*xscale_shaker*0.9*i,image_yscale*i,image_angle,color_2,image_alpha*0.05)
		}
		for(var i = 0.9; i < 1.1; i += 0.05)
		{
		draw_sprite_ext(spr_2,0,x,y-9-laser_dis*128,image_xscale*xscale_shaker*0.9*i,image_yscale*i,image_angle,c_black,image_alpha*0.05)
		draw_sprite_ext(spr_2,0,x,y-9-laser_dis*128,image_xscale*xscale_shaker*0.9*i,image_yscale*i,image_angle,color_3,image_alpha*0.01)
		}
		for(var i = 0.8; i > 0.7; i -= 0.05)
		{
		draw_sprite_ext(spr_2,0,x,y-9-laser_dis*128,image_xscale*xscale_shaker*0.9*i,image_yscale*i,image_angle,color_1,image_alpha*0.5)
		draw_sprite_ext(spr_2,0,x,y-9-laser_dis*128,image_xscale*xscale_shaker*0.9*i,image_yscale*i,image_angle,color_3,image_alpha*0.01)
		}
		for(var i = 1; i < 1.3; i += 0.05)
		{
		draw_sprite_ext(spr_2,0,x,y-9-laser_dis*128,image_xscale*xscale_shaker*0.9*i,image_yscale*i,image_angle,color_2,image_alpha*0.1)
		}
		for(var i = 0.8; i > 0.7; i -= 0.05)
		{
		draw_sprite_ext(spr_2,0,x,y-9-laser_dis*128,image_xscale*xscale_shaker*0.9*i,image_yscale*i,image_angle,color_1,image_alpha*0.5)
		draw_sprite_ext(spr_2,0,x,y-9-laser_dis*128,image_xscale*xscale_shaker*0.9*i,image_yscale*i,image_angle,color_3,image_alpha*0.1)
		}
	}
draw_sprite_ext(spr_2,0,x,y-9-laser_dis*128,image_xscale*xscale_shaker*0.9,image_yscale,image_angle,c_white,alpha1)
}

if a >= 1
{
	for(var i = 1; i < 1.3; i += 0.05)
	{
	draw_sprite_ext(spr_1,0,x,y,image_xscale*xscale_shaker*0.9*i,image_yscale,image_angle,c_black,image_alpha*0.08)
	}
	for(var i = 1; i < 1.3; i += 0.05)
	{
	draw_sprite_ext(spr_1,0,x,y,image_xscale*xscale_shaker*0.9*i,image_yscale,image_angle,color_3,image_alpha*0.05)
	}
	for(var i = 1; i < 1.3; i += 0.05)
	{
	draw_sprite_ext(spr_1,0,x,y,image_xscale*xscale_shaker*0.9*i,image_yscale,image_angle,color_2,image_alpha*0.05)
	}
	for(var i = 0.9; i < 1.1; i += 0.05)
	{
	draw_sprite_ext(spr_1,0,x,y,image_xscale*xscale_shaker*0.9*i,image_yscale,image_angle,c_black,image_alpha*0.05)
	draw_sprite_ext(spr_1,0,x,y,image_xscale*xscale_shaker*0.9*i,image_yscale,image_angle,color_3,image_alpha*0.01)
	}
	for(var i = 0.8; i > 0.7; i -= 0.05)
	{
	draw_sprite_ext(spr_1,0,x,y,image_xscale*xscale_shaker*0.9*i,image_yscale,image_angle,color_1,image_alpha*0.1)
	draw_sprite_ext(spr_1,0,x,y,image_xscale*xscale_shaker*0.9*i,image_yscale,image_angle,color_3,image_alpha*0.01)
	}
	for(var i = 1; i < 1.3; i += 0.05)
	{
	draw_sprite_ext(spr_1,0,x,y,image_xscale*xscale_shaker*0.9*i,image_yscale,image_angle,color_2,image_alpha*0.1)
	}
	for(var i = 0.8; i > 0.7; i -= 0.05)
	{
	draw_sprite_ext(spr_1,0,x,y,image_xscale*xscale_shaker*0.9*i,image_yscale,image_angle,color_1,image_alpha*0.1)
	draw_sprite_ext(spr_1,0,x,y,image_xscale*xscale_shaker*0.9*i,image_yscale,image_angle,color_3,image_alpha*0.1)
	}
draw_sprite_ext(spr_1,0,x,y,image_xscale*xscale_shaker*0.9,image_yscale,image_angle,c_white,alpha1)
	
	if global.graphics_for_code >= 2
	{
		for(var i = 1; i < 1.3; i += 0.05)
		{
		draw_sprite_ext(spr_2,0,x,y-9-laser_dis*128,image_xscale*xscale_shaker*0.9*i,image_yscale*i,image_angle,c_black,image_alpha*0.08)
		}
		for(var i = 1; i < 1.3; i += 0.05)
		{
		draw_sprite_ext(spr_2,0,x,y-9-laser_dis*128,image_xscale*xscale_shaker*0.9*i,image_yscale*i,image_angle,color_3,image_alpha*0.05)
		}
		for(var i = 1; i < 1.3; i += 0.05)
		{
		draw_sprite_ext(spr_2,0,x,y-9-laser_dis*128,image_xscale*xscale_shaker*0.9*i,image_yscale*i,image_angle,color_2,image_alpha*0.05)
		}
		for(var i = 0.9; i < 1.1; i += 0.05)
		{
		draw_sprite_ext(spr_2,0,x,y-9-laser_dis*128,image_xscale*xscale_shaker*0.9*i,image_yscale*i,image_angle,c_black,image_alpha*0.05)
		draw_sprite_ext(spr_2,0,x,y-9-laser_dis*128,image_xscale*xscale_shaker*0.9*i,image_yscale*i,image_angle,color_3,image_alpha*0.01)
		}
		for(var i = 0.8; i > 0.7; i -= 0.05)
		{
		draw_sprite_ext(spr_2,0,x,y-9-laser_dis*128,image_xscale*xscale_shaker*0.9*i,image_yscale*i,image_angle,color_1,image_alpha*0.5)
		draw_sprite_ext(spr_2,0,x,y-9-laser_dis*128,image_xscale*xscale_shaker*0.9*i,image_yscale*i,image_angle,color_3,image_alpha*0.01)
		}
		for(var i = 1; i < 1.3; i += 0.05)
		{
		draw_sprite_ext(spr_2,0,x,y-9-laser_dis*128,image_xscale*xscale_shaker*0.9*i,image_yscale*i,image_angle,color_2,image_alpha*0.1)
		}
		for(var i = 0.8; i > 0.7; i -= 0.05)
		{
		draw_sprite_ext(spr_2,0,x,y-9-laser_dis*128,image_xscale*xscale_shaker*0.9*i,image_yscale*i,image_angle,color_1,image_alpha*0.5)
		draw_sprite_ext(spr_2,0,x,y-9-laser_dis*128,image_xscale*xscale_shaker*0.9*i,image_yscale*i,image_angle,color_3,image_alpha*0.1)
		}
	draw_sprite_ext(spr_2,0,x,y-9-laser_dis*128,image_xscale*xscale_shaker*0.9,image_yscale,image_angle,c_white,alpha1)

		for(var i = 1; i < 1.3; i += 0.05)
		{
		draw_sprite_ext(spr_3,0,x,y-8,image_xscale*xscale_shaker*0.9*i,image_yscale*laser_dis*i,image_angle,c_black,image_alpha*0.08)
		}
		for(var i = 1; i < 1.3; i += 0.05)
		{
		draw_sprite_ext(spr_3,0,x,y-8,image_xscale*xscale_shaker*0.9*i,image_yscale*laser_dis*i,image_angle,color_3,image_alpha*0.05)
		}
		for(var i = 1; i < 1.3; i += 0.05)
		{
		draw_sprite_ext(spr_3,0,x,y-8,image_xscale*xscale_shaker*0.9*i,image_yscale*laser_dis*i,image_angle,color_2,image_alpha*0.05)
		}
		for(var i = 0.9; i < 1.1; i += 0.05)
		{
		draw_sprite_ext(spr_3,0,x,y-8,image_xscale*xscale_shaker*0.9*i,image_yscale*laser_dis*i,image_angle,c_black,image_alpha*0.05)
		draw_sprite_ext(spr_3,0,x,y-8,image_xscale*xscale_shaker*0.9*i,image_yscale*laser_dis*i,image_angle,color_3,image_alpha*0.01)
		}
		for(var i = 0.8; i > 0.7; i -= 0.05)
		{
		draw_sprite_ext(spr_3,0,x,y-8,image_xscale*xscale_shaker*0.9*i,image_yscale*laser_dis*i,image_angle,color_1,image_alpha*0.5)
		draw_sprite_ext(spr_3,0,x,y-8,image_xscale*xscale_shaker*0.9*i,image_yscale*laser_dis*i,image_angle,color_3,image_alpha*0.01)
		}
		for(var i = 1; i < 1.3; i += 0.05)
		{
		draw_sprite_ext(spr_3,0,x,y-8,image_xscale*xscale_shaker*0.9*i,image_yscale*laser_dis*i,image_angle,color_2,image_alpha*0.1)
		}
		for(var i = 0.8; i > 0.7; i -= 0.05)
		{
		draw_sprite_ext(spr_3,0,x,y-8,image_xscale*xscale_shaker*0.9*i,image_yscale*laser_dis*i,image_angle,color_1,image_alpha*0.5)
		draw_sprite_ext(spr_3,0,x,y-8,image_xscale*xscale_shaker*0.9*i,image_yscale*laser_dis*i,image_angle,color_3,image_alpha*0.1)
		}
	}
draw_sprite_ext(spr_3,0,x,y-8,image_xscale*xscale_shaker*0.9,image_yscale*laser_dis,image_angle,c_white,alpha1)




	if time > 1
	{
		var image_index_set = effect_index
		if image_index_set > 1
		{
		image_index_set = 2
		}
		
		if image_angle = 90
		{
			for(var i = 1; i <= 20; i++)
			{
			draw_sprite_ext(spr_4,image_index_set,x-effect_y+32,y,image_xscale*xscale_shaker*0.9,image_yscale*i/4,image_angle,c_white,0.08)
			}
		
			for(var i = 1; i <= 20; i++)
			{
			draw_sprite_ext(spr_4,image_index_set-1,x-effect_y+32,y,image_xscale*xscale_shaker*0.9,image_yscale*i/4,image_angle,c_white,0.08)
			}
		}
		else
		{
			for(var i = 1; i <= 20; i++)
			{
			draw_sprite_ext(spr_4,image_index_set,x+effect_y+32,y,image_xscale*xscale_shaker*0.9,image_yscale*i/4,image_angle,c_white,0.08)
			}
		
			for(var i = 1; i <= 20; i++)
			{
			draw_sprite_ext(spr_4,image_index_set-1,x+effect_y+32,y,image_xscale*xscale_shaker*0.9,image_yscale*i/4,image_angle,c_white,0.08)
			}
		}
	}
}