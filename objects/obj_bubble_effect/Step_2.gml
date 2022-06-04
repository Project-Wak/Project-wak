/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_wakdroid_ending) && obj_wakdroid_ending.message_phase >= 7 && obj_wakdroid_ending.message_phase <= 15
{
can_use_surf = false
}

if can_use_surf = true
{
	if sepa_surf = -4
	{
		if surface_exists(global.bubble_surf)
		{
		set_surf_outline(image_xscale,image_yscale,image_blend,1,global.bubble_surf)


		var col_sec = sec_col;
		if thi_col_able = 1
		{
		var col_sec = thi_col;
		image_blend = thi_col;
		}
		set_surf_outline(image_xscale,image_yscale,string(sec_col),sec_alpha,global.bubble_surf)
		}
	}
	else
	{
		if instance_exists(surf_owner) && surface_exists(surf_owner.owner_surface)
		{
		set_surf_outline(image_xscale,image_yscale,image_blend,1,surf_owner.owner_surface)
		var col_sec = sec_col;
		if thi_col_able = 1
		{
		var col_sec = thi_col;
		image_blend = thi_col;
		}
		set_surf_outline(image_xscale,image_yscale,string(sec_col),sec_alpha,surf_owner.owner_surface)
		}
	}
}
