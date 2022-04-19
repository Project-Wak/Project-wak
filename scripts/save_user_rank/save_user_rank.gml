// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_user_rank(argument0,argument1)
{
ini_open("Project wak_for_server.ini")

ini_write_string(string(argument0),"/",argument1);

ini_close()
}