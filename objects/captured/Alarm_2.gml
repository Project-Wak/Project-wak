/// @description Insert description here
// You can write your code in this editor
for(var i = 1; i < 99999; i++)
{
	if !file_exists("Screenshot"+string(i)+".png")
	{
	captured.image_alpha = 0
	file_name = "Screenshot"+string(i)+".png"
	screen_save(working_directory+string(file_name))
	break;
	}
}

sprite_ = sprite_add(file_name,0,0,0,0,0)

a = 0