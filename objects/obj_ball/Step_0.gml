/// @description Insert description here// You can write your code in this editor
if y > room_height+300
{
instance_destroy()
}

var distance_p = abs(x - player.x)
if distance_p > 1500
{
faraway_timer ++
	if faraway_timer > 30
	{
		if sign(faraway - distance_p) > 0
		{
		faraway = distance_p
		faraway_timer = 0
		}
		else
		{
		instance_destroy()
		}
	}
}

for(var i = 0; i <= 16; i++)
{
	if position_meeting(x,y+image_yscale*64+i,stair_parents)
	{
	y = y+i
	break;
	}
}


if hp <= 0
{
var sfx = audio_play_sound(mob_faint,0,0)
audio_sound_gain(sfx,0.4*global.master_volume*2*global.sfx_volume,0)
///////////////////////////////////////////
repeat(irandom_range(14,17))
{
create_buble_effect(1.2,irandom_range(0,359),0,choose(-1)*irandom_range(1,100)/7,0.08,0.08,$FF00D2FE,$FF076BFE,1.5,$FF737272,x,y,-room_width*1.5,0,true,false)
}
	
repeat(irandom_range(7,10))
{
create_buble_effect(1.45,irandom_range(0,359),0,choose(-1)*irandom_range(1,100)/7,0.07,0.07,c_white,$FF00D2FE,1.5,$FF342F32,x,y,-room_width*1.5,1,true,false)
}
	
view_shake(choose(0,0,0,0,1),irandom_range(10,15),choose(0,1))
var y_set = y+irandom_range(-16,16)
repeat(8)
{
var _ef = instance_create_depth(x,y_set,depth-1,effect_spark)
_ef.hspeed = irandom_range(5,20)*choose(-1,1)
_ef.vspeed = irandom_range(-8,-3)
}
	
var a___ = audio_play_sound(bomb_sfx,0,0)
audio_sound_gain(a___,0.07*global.master_volume*2*global.sfx_volume,0)


global.gold += 1200


instance_destroy()
}


if floor(damaged_hp) != floor(hp)
{
	if hp_bar_alpha > 0
	{
	damaged_time++
		if damaged_time >= 60
		{
		damaged_hp += (hp - damaged_hp)*0.1
			if abs(damaged_hp - hp) < 2
			{
			damaged_hp = hp
			damaged_time = 0
			}
		}
	}
	else
	{
	damaged_hp = hp
	}
}

check_floor = -4
for(var i = 0; i <= 32; i++)
{
	if place_meeting(x,y+image_yscale*64+i,floor_parents)
	{
	check_floor = y+i
	break;
	}
}

repeat(100)
{
	if place_meeting(x,y+1,floor_parents)
	{
	check_on_floor = 1
	gravity = 0
	vspeed = 0
		if obj_twin_eye.patturn != 0
		{
		y -= 1
		}
		else
		{
		break;
		}
	}
	else
	{
	check_on_floor = 0
	break;
	}
}
var a___ = instance_create_depth(x,y,depth,rage_mode_knockback_attacked)
	a___.image_xscale = 3
	a___.image_yscale = 3

if check_on_floor = 0
{
sfx__ = 0
gravity = 0.3
}
else
{
	if sfx__ = 0
	{
		if point_distance(x,y,player.x,player.y) <= 1600
		{
		sfx_for_multiplayer(down_attack_sfx,1,0.3)
		sfx_for_multiplayer(guard,1,0.07)
		sfx_for_multiplayer(mob_faint,1,0.2)
		}
		
		if vspeed > 2 && abs(hspeed) > 7
		{
		view_shake(11,10,1)
	
		var effect_ = instance_create_depth(x,y+70,depth+1,down_effect)
		effect_.t_image_yscale = 0.4*3
		effect_.t_image_xscale = 0.05*3
		effect_.received = 0
		
			repeat(8)
			{
			var _ef = instance_create_depth(x,y+60,depth-1,effect_spark)
			_ef.hspeed = irandom_range(-20,20)
			_ef.vspeed = irandom_range(-4,2)
			
				repeat(choose(6,7,7,8,8,9,9,9,10,10,11,12))
				{
				randomize()
				var random_target = id
				var dust = instance_create_depth(random_target.x+irandom_range(-5,5),random_target.y+irandom_range(-5,5),random_target.depth-1,pepsi_effect_received)
				var scale = irandom_range(20,40)/50
				dust.image_xscale = scale
				dust.image_yscale = scale
				dust.vspeed = irandom_range(-50,50)/25
				dust.hspeed = irandom_range(-50,50)/25
				dust.image_alpha = 1
				}
			}
		}
		
	
	sfx__ = 1
	}
}

var ins_pl = instance_place(x,y+5,stair_parents)
if instance_exists(ins_pl)
{
	if abs(hspeed) <= 33
	{
	hspeed -= sign(ins_pl.image_xscale)*0.2
	}
	else
	{
	hspeed = 33*sign(hspeed)
	}
}
image_angle -= hspeed

var ins_pl = instance_place(x,y,obj_ball)
if instance_exists(ins_pl) && delay = 0
{
delay = 1
ins_pl.hspeed += hspeed*0.6
ins_pl.delay = 1
hspeed = -hspeed*0.8
}


var ins_pl = instance_place(x,y+1,obj_floor_tile3)
if instance_exists(ins_pl) && delay = 0
{
delay = 1
hspeed = -hspeed*0.8
}

var ins_pl = instance_place(x,y+1,obj_floor_tile1)
if instance_exists(ins_pl) && ins_pl.image_angle != 0 && delay = 0
{
delay = 1
hspeed = hspeed*0.8
}

if delay > 0
{
delay ++
	if delay > 15
	{
	delay = 0
	}
}
