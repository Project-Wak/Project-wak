/// @description Insert description here
// You can write your code in this editor
global.n_to_setting__ = 0
if global.key_setting_message = 0
{
	if global.playing_scene = 0
	{
	global.cursor = 1
	show_debug_message("option")
	option ++
	instance_create_depth(x,y,-9998,master_volume_setting)
	instance_create_depth(x,y,-9999,bgm_volume_setting)
	instance_create_depth(x,y,-9999,sfx_volume_setting)
	instance_create_depth(x,y,-9999,full_screen_option)
	instance_create_depth(x,y,-9999,change_a_key_to_other)
	instance_create_depth(x,y,-9999,console_mode)
	instance_create_depth(x,y,-9999,change_w_key_to_other)
	instance_create_depth(x,y,-9999,change_s_key_to_other)
	instance_create_depth(x,y,-9999,change_q_key_to_other)
	instance_create_depth(x,y,-9999,change_running_key_to_other)
	instance_create_depth(x,y,-9999,change_e_key_to_other)
	instance_create_depth(x,y,-9999,blood_effect_option)
	instance_create_depth(x,y,-9999,voice_off_option)
	instance_create_depth(x,y,-9999,shine_effect_option)
	if !instance_exists(obj_start_menu)
	{
	instance_create_depth(x,y,-9999,quit_option)
	instance_create_depth(x,y,-9999,main_menu_option)
	}
	if instance_exists(player)
	{
	instance_create_depth(x,y,-9999,fps_draw_option)
	}
	instance_create_depth(x,y,-9999,change_suicide_key_to_other)
	instance_create_depth(x,y,-9999,change_skip_key_to_other)
	instance_create_depth(x,y,-9999,text_effect_option)
	instance_create_depth(x,y,-9999,change_guard_key_to_other)
	instance_create_depth(x,y,-9998,graphics_q_setting)
	instance_create_depth(x,y,-9998,brightness_setting___)



	var __aaa = instance_create_depth(x,y,-9999,obj_n_to_setting)
	__aaa.n_to_set = 0

	var __aaa = instance_create_depth(x,y,-9999,obj_n_to_setting)
	__aaa.n_to_set = 1

	var __aaa = instance_create_depth(x,y,-9999,obj_n_to_setting)
	__aaa.n_to_set = 2
	}



	if option > 1
	{
	option = 0
	global.cursor = 0
	instance_destroy(setting_parents)
	}
}


save_and_load_data(1,0)

