/// @description Insert description here
// You can write your code in this editor
if cannot_select_name <= 0
{
var sfx = audio_play_sound(message_sfx,0,0)
audio_sound_gain(sfx,0.2*global.master_volume*2*global.sfx_volume,0)
code.server = network_create_server(network_socket_tcp, code.server_port, 12);
		
	if (code.server < 0) 
	{
	dev_mes("서버의 인원이 꽉찼거나 닫혀 있습니다.");
	}
	else 
	{
	save_and_load_data(1,0)
	room_goto(room_main);
	code.is_server = true;
	}
}