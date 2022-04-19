/// @description Insert description here
// You can write your code in this editor
for(var i = 0; i <= 32; i ++)
{
	if _effect_line[i] = -1
	{
	randomize()
	var random_val = choose(0,1,0,1,0,1,0,0,2)
	_effect_line[i] = instance_create_depth(mouse_x,mouse_y,depth+1,red_circle_line_effect)
	_effect_line[i].image_xscale = 0.6*image_xscale
	_effect_line[i].image_yscale = 0.6*0.08*image_xscale
	_effect_line[i].t_scale = 0.4*image_xscale
	_effect_line[i].parents_obj = self.id
	_effect_line[i].dir_x = (irandom_range(-210,210)*image_xscale*4)/5
	_effect_line[i].dir_y = (irandom_range(-210,210)*image_xscale*4)/5
	_effect_line[i].cre_num = i
		if random_val = 0
		{
		break;
		}
	}
	
	if _effect_line[i] = -1
	{
	randomize()
	_effect_line[i] = instance_create_depth(mouse_x,mouse_y,depth+1,red_circle_line_effect)
	_effect_line[i].image_xscale = 0.6*image_xscale
	_effect_line[i].image_yscale = 0.6*0.08*image_xscale
	_effect_line[i].t_scale = 0.4*image_xscale
	_effect_line[i].parents_obj = self.id
	_effect_line[i].dir_x = (irandom_range(-210,210)*image_xscale*4)/5
	_effect_line[i].dir_y = (irandom_range(-210,210)*image_xscale*4)/5
	_effect_line[i].cre_num = i
		if random_val = 1
		{
		break;
		}
	}
	
	if _effect_line[i] = -1
	{
	randomize()
	_effect_line[i] = instance_create_depth(mouse_x,mouse_y,depth+1,red_circle_line_effect)
	_effect_line[i].image_xscale = 0.6*image_xscale
	_effect_line[i].image_yscale = 0.6*0.08*image_xscale
	_effect_line[i].t_scale = 0.6*image_xscale
	_effect_line[i].parents_obj = self.id
	_effect_line[i].dir_x = (irandom_range(-210,210)*image_xscale*4)/5
	_effect_line[i].dir_y = (irandom_range(-210,210)*image_xscale*4)/5
	_effect_line[i].cre_num = i
	break;
	}
}
alarm[3] = 15