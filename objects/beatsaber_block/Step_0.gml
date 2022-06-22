/// @description Insert description here
// You can write your code in this editor
d_image_angle += image_xscale
w_alpha += (-0.01 - w_alpha)*0.08



direction = image_angle;
speed += (-image_xscale*0.5 - speed)*0.05;

if place_meeting(x,y,effect_attack1_attacked) || place_meeting(x,y,effect_attack2_attacked) || place_meeting(x,y,effect_attack3_attacked) || place_meeting(x,y,effect_sting_attacked) || place_meeting(x,y,effect_sting_free_attacked) || place_meeting(x,y,effect_quake_attacked) || place_meeting(x,y,effect_special_skill_attacked) || place_meeting(x,y,effect_down_attack_attacked) || place_meeting(x,y,effect_jump_attack_attacked) || place_meeting(x,y,effect_special_skill_sec_attacked) || place_meeting(x,y,effect_attacked)
{
des = 1
instance_destroy()
}

if place_meeting(x,y,floor_parents)
{
instance_destroy()
}

if place_meeting(x,y,player)
{
var _p_id = instance_place(x,y,player)
	if instance_exists(_p_id) && _p_id.name != global.nickname
	{
		if _p_id.guarding > 0
		{
		des = 1
		}
	instance_destroy()
	}
}