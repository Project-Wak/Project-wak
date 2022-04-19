/// @description Insert description here
// You can write your code in this editor
sfx_for_multiplayer(choose(hit_sfx1_beat_saber,hit_sfx2_beat_saber,hit_sfx3_beat_saber),0,0.1)

var _my_p = get_my_player()

var effect__ = instance_create_depth(x,y,depth+1,beat_saber_flake)
if image_index = 0
{
effect__.image_index = 0
}
if image_index = 1
{
effect__.image_index = 2
}
effect__.image_angle = image_angle
effect__.image_xscale = image_xscale
effect__.image_yscale = image_yscale
effect__.vspeed = irandom_range(-20,-5)/9
effect__.hspeed = sign(_my_p.image_xscale)*irandom_range(-20,-5)/6


var effect__ = instance_create_depth(x,y,depth+1,beat_saber_flake)
if image_index = 0
{
effect__.image_index = 1
}
if image_index = 1
{
effect__.image_index = 3
}
effect__.image_angle = image_angle
effect__.image_xscale = image_xscale
effect__.image_yscale = image_yscale
effect__.vspeed = irandom_range(-20,-5)/9
effect__.hspeed = sign(_my_p.image_xscale)*irandom_range(-20,-5)/6

if des = 0
{
sfx_for_multiplayer(mob_faint,0,0.2)
}



	repeat(irandom_range(32,42))
	{
	var xx = x+irandom_range(-40,40)
	var yy = y+irandom_range(-40,40)
	randomize()
	
	repeat(999)
	{
		if point_distance(xx,y,x,y) > 40
		{
		var xx = x+irandom_range(-40,40)
		}
		else
		{
		break;
		}
	}
	
	
	repeat(999)
	{
		if point_distance(x,yy,x,y) > 40
		{
		var yy = y+irandom_range(-40,40)
		}
		else
		{
		break;
		}
	}
	
	var dust = instance_create_depth(xx,yy,depth-1,pepsi_effect)
	
	var scale = irandom_range(20,40)/50
	dust.image_xscale = scale
	dust.image_yscale = scale
	dust.vspeed = irandom_range(-50,50)/37
	dust.hspeed = irandom_range(-50,50)/37
	dust.image_alpha = 1
	}
	
//buffer_delete(//////send_all(command_buffer);