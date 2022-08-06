function chat_up(argument0) 
{
var chating = argument0;

	for(var i = 0; i < 32; i++)
	{
	obj_chatbox.chat[32 - i] = obj_chatbox.chat [31 - i];
	}
	
obj_chatbox.chat[0] = string(chating);
obj_chatbox.new_chat++
var sfx = audio_play_sound(buy_item,0,0)
audio_sound_gain(sfx,0.07*global.master_volume*2*global.sfx_volume,0)


	//명령어
	if string_pos("/",argument0) != 0 && string_pos("help)",argument0) = 0 && string_pos(")",argument0) = 0
	{
		if argument0 = "/item"
		{
		var random_i = irandom_range(0,4)
		give_item(0,random_i)
		}
		else if argument0 = "/item_all"
		{
			for(var i = 0; i < global.total_item_num; i++)
			{
			global.item_owned[i] = 99
			}
		}
		else if argument0 = "/add_time"
		{
		global.left_time += 99
		}
		else if argument0 = "/equipment_all"
		{
			for(var i = 0; i <= global.total_weapon_num; i++)
			{
			global.weapon_owned[i] = 1 //0
			}
			
			for(var i = 0; i <= global.total_accessories_num; i++)
			{
			global.accessories_owned[i] = 1 //0
			}
		}
		else if argument0 = "/gold"
		{
		global.gold += 99999
		}
		else if argument0 = "/rage"
		{
		global.rage_gauge = 100
		chat_up("debug) global.rage_gauge = 100")
		}
		else if argument0 = "/noclip" || argument0 = "/nc"
		{
		global.noclip *= -1
		chat_up("debug) global.noclip = "+string(global.noclip))
		}
		else if argument0 = "/ui"
		{
		global.show_ui *= -1
		}
		else if argument0 = "/pv"
		{
		global.visible_player *= -1
		}
		else if argument0 = "/free_hp"
		{
		global.free_hp *= -1
		chat_up("debug) global.free_hp = "+string(global.free_hp))
		}
		else if (argument0 = "/free_ste" || argument0 = "/free_stamina")
		{
		global.free_stamina *= -1
		chat_up("debug) global.free_stamina = "+string(global.free_stamina))
		}
		else if (argument0 = "/room_main" || argument0 = "/rm")
		{
		room_goto(room_main)
		}
		else if (argument0 = "/reset_guide" || argument0 = "/rg")
		{
		global.suicide_skill_tuto = 0
		global.explosion_tuto = 0
		global.tutorial = 0
		}
		else if (argument0 = "/B02" || argument0 = "/b02")
		{
		room_goto(room_sector_B02_2)
		}
		else if (argument0 = "/clock" || argument0 = "/cl")
		{
		global.clock = 1
		global.broken_clock = 0
		}
		else if (argument0 = "/clock_end" || argument0 = "/cled")
		{
		global.clock = 1
		global.broken_clock = 2
		}
		else if (argument0 = "/B03" || argument0 = "/b03")
		{
		room_goto(room_sector_B03_2)
		}
		else if (argument0 = "/B04" || argument0 = "/b04")
		{
		room_goto(room_sector_B04_2)
		}
		else if (argument0 = "/B05" || argument0 = "/b05")
		{
		room_goto(room_sector_B05_2)
		}
		else if (argument0 = "/B06" || argument0 = "/b06")
		{
		room_goto(room_sector_B06_2)
		}
		else if (argument0 = "/test" || argument0 = "/tb")
		{
		global.lantern = 1
		room_goto(room_sector_outside)
		}
		else if (argument0 = "/br" || argument0 = "/blur")
		{
		global.blur_range = 15
		}
		else if (argument0 = "/rp" || argument0 = "/replay")
		{
		global.replayed ++
		}
		else if (argument0 = "/test2" || argument0 = "/ts2")
		{
		global.lantern = 1
		room_goto(room_sector_B03_2_remaked)
		}
		else if (argument0 = "/test3" || argument0 = "/ts3")
		{
		global.lantern = 1
		room_goto(room_sector_B03_3_remaked)
		}
		else if (argument0 = "/b07" || argument0 = "/B07")
		{
		global.lantern = 1
		room_goto(room_sector_B07)
		}
		else if (argument0 = "/ending" || argument0 = "/end")
		{
		global.lantern = 1
		instance_create_depth(2994,2331,depth,obj_wakdroid_ending)
		player.x = 2800
		player.image_xscale = 1
		global.t_b_alpha = -0.01
		global.gold += 12000
		instance_destroy(obj_angel)
		instance_destroy(angel_spear)
		}
		else if (argument0 = "/credit" || argument0 = "/cre")
		{
		global.real_ending = 1
		instance_create_depth(2994,2331,depth,obj_wakdroid_ending)
		audio_stop_sound(final_battle)
		audio_stop_sound(follower_bgm)
		room_goto(room_sector_outside)
		global.t_b_alpha = -0.01
		}
		else if (argument0 = "/tuto")
		{
		global.tutorial = 0
		}
		else if (argument0 = "/reset_difficulty")
		{
		global.difficulty = -4
		}
		else if (argument0 = "/reset_item")
		{
			for(var i = 0; i <= global.total_weapon_num; i++)
			{
			global.weapon_owned[i] = 0
			}
			global.weapon_owned[0] = 1

			for(var i = 0; i <= global.total_accessories_num; i++)
			{
			global.accessories_owned[i] = 0
			}
			global.accessories_owned[i] = 1
		}
		else if (argument0 = "/go_mid")
		{
		player.x = room_width/2
		player.y = room_height/2
		}
		else if (argument0 = "/boss_clear")
		{
			if instance_exists(mob_parents)
			{
			mob_parents.hp = 0
			}
		}
		else
		{
		chat_up("help)")
		chat_up(") /noclip (중력 및 벽 무시), /rage (분노 100%), /item_all (아이템 99개씩 전부 지급)")
		chat_up(") /free_hp (무적), /free_ste (무한 스테미나), /item (아이템)")
		chat_up(") /boss_clear (보스 바로 컷), /gold (골드 +99999), /reset_item (아이템 전부 삭제)")
		}
	}
}
