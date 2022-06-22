/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(vk_anykey)
{
timer = -8
alpha1 = 0
}



if image_alpha < -2 && start = 1
{
	if (room == menu)
	{
		if cannot_select_name <= 0
		{
		var _r_ip = analyze_en_ip(ip_for_calcul)
			code.server = network_create_socket(network_socket_tcp);
			var res = network_connect(code.server, string(_r_ip), code.server_port);
	
			if (res < 0) 
			{
			dev_mes("서버의 인원이 꽉찼거나 닫혀 있습니다.");
			}
			else 
			{
			room_goto(room_main);
			}
		}
	}
}


if start = 1
{
activate = 0
image_alpha -= 0.05
}


timer += 0.1
if timer > 0
{
alpha1 += 0.1
}

if activate = 1
{
ip_for_calcul = keyboard_string;

keyboard_string = string_replace(keyboard_string," ","");
ip_for_calcul = string_replace(ip_for_calcul," ","");

	if keyboard_check(ord("V")) && keyboard_check(vk_control)
	{
	ip_for_calcul = clipboard_get_text()
	activate = 0
	}
}

cannot_select_name -= 0.08


if activate = 0
{
keyboard_string = string_replace(keyboard_string," ","");
ip_for_calcul = string_replace(ip_for_calcul," ","");
already_set_name = 1
}