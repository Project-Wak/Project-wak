/// @description Insert description here
// You can write your code in this editor

/*if is_server = true
{
gamemode_select = 1

	if _mes_gamemode = -4
	{
	_mes_gamemode = instance_create_depth(x,y,-999,message_);
	_mes_gamemode.t_image_alpha = 1;
	_mes_gamemode.text = "게임 모드 선택 중"
	_mes_gamemode.sub_text = 0;
	_mes_gamemode.auto_destroy = 0;
	}

buffer_seek(gamemode_select_buffer, buffer_seek_start, 0);
buffer_write(gamemode_select_buffer, buffer_u8, DATA.GAMEMODE_SELECTING);
//send_all(gamemode_select_buffer);
}