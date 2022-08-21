/// @description  ProcessComands(name,data);
/// @param name
/// @param data
function ProcessComands(argument0, argument1)
{
	//if (string_pos("!say",argument1) != 0)
	{
	global.chat_sender = argument0;
	global.chat_data = string_replace(argument1,"!say","");
	}
}
