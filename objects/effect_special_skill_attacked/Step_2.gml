/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_last_boss)
{
var xx_ = x+irandom_range(-16,16)
var yy_ = y+irandom_range(-16,16)
var random_val___ = percentage_k(global.graphics_for_code*5)
	if random_val___ = 1
	{
	var random_val___2 = percentage_k(1)
	create_buble_effect(0.3,270+irandom_range(-50,50),0,choose(-1)*irandom_range(1,150)/7,0.07,0.07,$FF62D1F7,$FF6C60CD,2,$FF191919,xx_,yy_,depth-1+random_val___2,1,false,false)
	}
}
