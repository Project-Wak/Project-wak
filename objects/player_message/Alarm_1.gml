/// @description Insert description here
// You can write your code in this editor

if global.show_credits = 0
{
var sfx = audio_play_sound(message_sfx,0,0)
audio_sound_gain(sfx,0.12*global.master_volume*2*global.sfx_volume,0)

if special_voice_chat = 0 && (string_pos("!샷업",text) != 0)
{
special_voice_chat = 1
	if instance_exists(target) && target.name = global.nickname
	{
	sfx_for_multiplayer(shut_up,0,0.3)
	}
}

if special_voice_chat = 0 && (string_pos("!아이시발",text) != 0)
{
special_voice_chat = 1
	if instance_exists(target) && target.name = global.nickname
	{
	sfx_for_multiplayer(shibal,0,0.32)
	}
}

if special_voice_chat = 0 && (string_pos("!웨잇",text) != 0)
{
special_voice_chat = 1
	if instance_exists(target) && target.name = global.nickname
	{
	sfx_for_multiplayer(wait_plz,0,0.25)
	}
}

if special_voice_chat = 0 && (string_pos("!앙",text) != 0)
{
special_voice_chat = 1
	if instance_exists(target) && target.name = global.nickname
	{
	sfx_for_multiplayer(ang___,0,0.2)
	}
}

if special_voice_chat = 0 && (string_pos("!끼애액",text) != 0)
{
special_voice_chat = 1
	if instance_exists(target) && target.name = global.nickname
	{
	sfx_for_multiplayer(kiyahou,0,0.2)
	}
}

if special_voice_chat = 0 && (string_pos("!테헹",text) != 0)
{
special_voice_chat = 1
	if instance_exists(target) && target.name = global.nickname
	{
	sfx_for_multiplayer(tae_heng,0,0.2)
	}
}

if special_voice_chat = 0 && (string_pos("!키타소",text) != 0)
{
special_voice_chat = 1
	if instance_exists(target) && target.name = global.nickname
	{
	sfx_for_multiplayer(kitaso,0,0.2)
	}
}

if special_voice_chat = 0 && (string_pos("!규성아",text) != 0)
{
special_voice_chat = 1
	if instance_exists(target) && target.name = global.nickname
	{
	sfx_for_multiplayer(guseong_a,0,0.73)
	}
}

if special_voice_chat = 0 && (string_pos("!검성우왁굳",text) != 0)
{
special_voice_chat = 1
	if instance_exists(target) && target.name = global.nickname
	{
	sfx_for_multiplayer(gumseong_woowakgood,0,0.1)
	}
}

if special_voice_chat = 0 && (string_pos("!죽어버리렴",text) != 0)
{
special_voice_chat = 1
	if instance_exists(target) && target.name = global.nickname
	{
	sfx_for_multiplayer(jukaburyrum,0,0.14)
	}
}

if special_voice_chat = 0 && (string_pos("!나가죽으렴",text) != 0)
{
special_voice_chat = 1
	if instance_exists(target) && target.name = global.nickname
	{
	sfx_for_multiplayer(go_out_die,0,0.14)
	}
}

if special_voice_chat = 0 && (string_pos("!아이폰",text) != 0)
{
special_voice_chat = 1
	if instance_exists(target) && target.name = global.nickname
	{
	sfx_for_multiplayer(iphone,0,0.04)
	}
}

if special_voice_chat = 0 && (string_pos("!정치",text) != 0)
{
special_voice_chat = 1
	if instance_exists(target) && target.name = global.nickname
	{
	sfx_for_multiplayer(jung_chi,0,0.04)
	}
}

if special_voice_chat = 0 && (string_pos("!나는멋있는",text) != 0)
{
special_voice_chat = 1
	if instance_exists(target) && target.name = global.nickname
	{
	sfx_for_multiplayer(im_cool,0,0.04)
	}
}

if special_voice_chat = 0 && (string_pos("!혐팬치",text) != 0)
{
special_voice_chat = 1
	if instance_exists(target) && target.name = global.nickname
	{
	sfx_for_multiplayer(already_all_died,0,0.14)
	}
}

if special_voice_chat = 0 && (string_pos("!기타",text) != 0)
{
special_voice_chat = 1
	if instance_exists(target) && target.name = global.nickname
	{
	sfx_for_multiplayer(guitar_chigi,0,0.14)
	}
}

if special_voice_chat = 0 && (string_pos("!드럼",text) != 0)
{
special_voice_chat = 1
	if instance_exists(target) && target.name = global.nickname
	{
	sfx_for_multiplayer(drum_chigi,0,0.14)
	}
}

if special_voice_chat = 0 && (string_pos("!유바",text) != 0)
{
special_voice_chat = 1
	if instance_exists(target) && target.name = global.nickname
	{
	sfx_for_multiplayer(youba,0,0.14)
	}
}
}

can_draw = 1

