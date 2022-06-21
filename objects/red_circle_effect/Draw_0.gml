/// @description Insert description here
// You can write your code in this editor
if global.none_wakgood_mode = false
{
	if global.graphics_for_code >= 2
	{
		for(var i = 1.1; i > 0.3; i -= 0.05)
		{
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*i,image_yscale*i,0,$FF1C1CB2,image_alpha*0.05)
		}

		for(var i = 1.4; i > 0.1; i -= 0.05)
		{
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*i,image_yscale*i,0,$FF1C1CB2,image_alpha*0.01)
		}

		for(var i = 1.3+scale_plus; i > 0.9-scale_plus; i -= 0.05)
		{
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*i,image_yscale*i,0,$FF1C1CB2,image_alpha*0.02)
		}

		for(var i = 0.6; i > 0.3; i -= 0.05)
		{
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*i,image_yscale*i,0,$FF6D52F2,image_alpha*0.01)
		}

		for(var i = 0.7+scale_plus; i > 0.6-scale_plus; i -= 0.05)
		{
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*i,image_yscale*i,0,$FF6D52F2,image_alpha*0.02)
		}

		for(var i = 1+scale_plus; i > 0.6-scale_plus; i -= 0.05)
		{
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*i,image_yscale*i,0,$FF6D52F2,image_alpha*0.02)
		}

		for(var i = 0.6; i > 0.3; i -= 0.05)
		{
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*i,image_yscale*i,0,c_white,image_alpha*0.1)
		}

		for(var i = 0.7+scale_plus; i > 0.6-scale_plus; i -= 0.05)
		{
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*i,image_yscale*i,0,c_white,image_alpha*0.02)
		}

		for(var i = 0.8+scale_plus; i > 0.6-scale_plus; i -= 0.05)
		{
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*i,image_yscale*i,0,$FF6D52F2,image_alpha*0.02)
		}
	}
}
