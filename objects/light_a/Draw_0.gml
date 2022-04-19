/// @description Insert description here
// You can write your code in this editor
var c_scale = obj_camera.v_y/720




//draw_sprite_ext(BG,2,x,y+(global.p_floor-target_y)/128,999,999,0,c_white,1)
var target_y = my_p.y
if my_p.y > room_height
{
target_y = room_height
}

if global.low_quality = 0
{
	for(var i = 1; i > 0.2; i -= 0.0125)
	{
	draw_sprite_ext(Sprite178,0,x,y+(global.p_floor-target_y)/128,scale*c_scale*i,scale*c_scale*i,0,c_white,0.011)
	}

	for(var i = 1; i > 0.2; i -= 0.0125)
	{
	draw_sprite_ext(Sprite178,0,x,y+(global.p_floor-target_y)/128,scale*0.7*c_scale*i,scale*0.7*c_scale*i,0,c_white,0.034)
	}

	for(var i = 1; i > 0.2; i -= 0.0125)
	{
	draw_sprite_ext(Sprite178,0,x,y+(global.p_floor-target_y)/128,scale*0.3*c_scale*i,scale*0.3*c_scale*i,0,c_white,0.034)
	}

	for(var i = 2; i > 0.2; i -= 0.0125)
	{
	draw_sprite_ext(Sprite178,0,x,y+(global.p_floor-target_y)/128,scale*5*c_scale*i,scale*0.1*c_scale*i,0,c_white,0.0054)
	}

	for(var i = 1.5; i > 0.2; i -= 0.1)
	{
	draw_sprite_ext(Sprite178,0,x,y+(global.p_floor-target_y)/128,scale*4.3*c_scale*i,scale*0.3*c_scale*i,45,c_white,0.0043)
	}

	for(var i = 1.5; i > 0.2; i -= 0.1)
	{
	draw_sprite_ext(Sprite178,0,x,y+(global.p_floor-target_y)/128,scale*4.3*c_scale*i,scale*0.3*c_scale*i,-45,c_white,0.0043)
	}

	for(var i = 1.5; i > 0.2; i -= 0.1)
	{
	draw_sprite_ext(Sprite178,0,x,y+(global.p_floor-target_y)/128,scale*4*c_scale*i,scale*0.3*c_scale*i,90,c_white,0.0043)
	}
}
else
{
	for(var i = 1; i > 0.2; i -= 0.025)
	{
	draw_sprite_ext(Sprite178,0,x,y+(global.p_floor-target_y)/128,scale*c_scale*i,scale*c_scale*i,0,c_white,0.011)
	}

	for(var i = 1; i > 0.2; i -= 0.025)
	{
	draw_sprite_ext(Sprite178,0,x,y+(global.p_floor-target_y)/128,scale*0.7*c_scale*i,scale*0.7*c_scale*i,0,c_white,0.034)
	}

	for(var i = 1; i > 0.2; i -= 0.025)
	{
	draw_sprite_ext(Sprite178,0,x,y+(global.p_floor-target_y)/128,scale*0.3*c_scale*i,scale*0.3*c_scale*i,0,c_white,0.034)
	}

	for(var i = 2; i > 0.2; i -= 0.025)
	{
	draw_sprite_ext(Sprite178,0,x,y+(global.p_floor-target_y)/128,scale*5*c_scale*i,scale*0.1*c_scale*i,0,c_white,0.0054)
	}

	for(var i = 1.5; i > 0.2; i -= 0.25)
	{
	draw_sprite_ext(Sprite178,0,x,y+(global.p_floor-target_y)/128,scale*4.3*c_scale*i,scale*0.3*c_scale*i,45,c_white,0.0043)
	}

	for(var i = 1.5; i > 0.2; i -= 0.25)
	{
	draw_sprite_ext(Sprite178,0,x,y+(global.p_floor-target_y)/128,scale*4.3*c_scale*i,scale*0.3*c_scale*i,-45,c_white,0.0043)
	}

	for(var i = 1.5; i > 0.2; i -= 0.25)
	{
	draw_sprite_ext(Sprite178,0,x,y+(global.p_floor-target_y)/128,scale*4*c_scale*i,scale*0.3*c_scale*i,90,c_white,0.0043)
	}
}


