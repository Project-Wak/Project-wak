/// @description Insert description here
// You can write your code in this editor
if global.chat_activity > 0
{
w_alpha = 3
chat_line --
	if abs(t_chat_line - chat_line) > 5
	{
	chat_line --
	}

	if chat_line < 0
	{
	chat_line = 0
	}
}