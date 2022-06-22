/// @description Insert description here
// You can write your code in this editor
var color_1 = c_white
var color_2 = $FF2C75FF
var color_3 = $FF75F2FF
if global.graphics_for_code >= 2
{
	for(var i = 1.1; i > 0.3; i -= 0.05)
	{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*i,image_yscale*i,0,color_2,image_alpha*0.05)
	}

	for(var i = 1.4; i > 0.1; i -= 0.05)
	{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*i,image_yscale*i,0,color_2,image_alpha*0.01)
	}

	for(var i = 1.3+scale_plus; i > 0.9-scale_plus; i -= 0.05)
	{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*i,image_yscale*i,0,color_2,image_alpha*0.02)
	}

	for(var i = 0.6; i > 0.3; i -= 0.05)
	{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*i,image_yscale*i,0,color_3,image_alpha*0.01)
	}

	for(var i = 0.7+scale_plus; i > 0.6-scale_plus; i -= 0.05)
	{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*i,image_yscale*i,0,color_3,image_alpha*0.02)
	}

	for(var i = 1+scale_plus; i > 0.6-scale_plus; i -= 0.05)
	{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*i,image_yscale*i,0,color_3,image_alpha*0.02)
	}

	for(var i = 0.6; i > 0.3; i -= 0.05)
	{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*i,image_yscale*i,0,color_1,image_alpha*0.1)
	}

	for(var i = 0.7+scale_plus; i > 0.6-scale_plus; i -= 0.05)
	{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*i,image_yscale*i,0,color_1,image_alpha*0.02)
	}

	for(var i = 0.8+scale_plus; i > 0.6-scale_plus; i -= 0.05)
	{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*i,image_yscale*i,0,color_3,image_alpha*0.02)
	}
}

//체력바
hp_bar_alpha += (t_hp_bar_alpha - hp_bar_alpha)*0.1

if hp_bar_alpha > 0
{
draw_hp += (hp - draw_hp)*0.1
draw_sprite_ext(sprite20,0,x-20,y+32,1,1,0,c_white,hp_bar_alpha)
	if hp/max_hp > 0
	{
	draw_sprite_ext(sprite20,5,x-18,y+32,damaged_hp/max_hp,1,0,c_white,hp_bar_alpha)
	draw_sprite_ext(sprite20,1,x-18,y+32,draw_hp/max_hp,1,0,c_white,hp_bar_alpha)
	}
}

