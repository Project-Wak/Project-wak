/// @description Insert description here
// You can write your code in this editor
d_image_angle += image_xscale
w_alpha += (-0.01 - w_alpha)*0.08

direction = image_angle;
speed += (-image_xscale*0.5 - speed)*0.05;


if place_meeting(x,y,effect_attack1) || place_meeting(x,y,effect_attack2) || place_meeting(x,y,effect_attack3) || place_meeting(x,y,effect_sting) || place_meeting(x,y,effect_sting_free) || place_meeting(x,y,effect_quake) || place_meeting(x,y,effect_special_skill) || place_meeting(x,y,effect_down_attack) || place_meeting(x,y,effect_jump_attack) || place_meeting(x,y,effect_special_skill_sec) || place_meeting(x,y,effect)
{
des = 1
instance_destroy()
}

if place_meeting(x,y,floor_parents)
{
instance_destroy()
}
