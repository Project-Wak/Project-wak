/// @description Insert description here
// You can write your code in this editor
global.n_to_setting__ = 0
if global.key_setting_message = 0
{
	if instance_exists(player)
	{
	global.cursor = 1
	show_debug_message("inv")
	option ++
	instance_create_depth(x,y,-9998,bg_status)

	var __aaa = instance_create_depth(x,y,-9999,bg_status_accessory)
	__aaa.accesssory_num = 0

	var __aaa = instance_create_depth(x,y,-9999,bg_status_accessory)
	__aaa.accesssory_num = 1
	
	var __aaa = instance_create_depth(x,y,-9999,bg_status_guidebook)
	__aaa.accesssory_num = 0
	instance_create_depth(x,y,-9999,suicide_option)


	var __aaa = instance_create_depth(x,y,-9999,obj_n_to_setting)
	__aaa.n_to_set = 3

	var __aaa = instance_create_depth(x,y,-9999,obj_n_to_setting)
	__aaa.n_to_set = 4
	
	var __aaa = instance_create_depth(x,y,-9999,obj_n_to_setting)
	__aaa.n_to_set = 5
	}


	if option > 1
	{
	option = 0
	global.cursor = 0
	instance_destroy(setting_parents)
	}
}


save_and_load_data(1,0)