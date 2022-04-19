function dev_mes(argument0) 
{
global.dev_message = argument0
	if (argument0 = "F1키를 눌러 서버를 관리해주세요" || argument0 = "Enter키를 눌러 채팅창을 열어보세요!")
	{
	global.dev_message_alpha = 50
	}
	else if (argument0 = "서버의 인원이 꽉찼거나 닫혀 있습니다.")
	{
	code.alarm[4] = 90
	global.dev_message_alpha = 20
	}
	else
	{
	global.dev_message_alpha = 8
	}
}
