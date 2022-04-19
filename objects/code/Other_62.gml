/// @description Insert description here
// You can write your code in this editor
/*if ds_map_find_value(async_load, "id") == send_request //If received data is our request
{
	if ds_map_find_value(async_load, "status") == 0 //If data received
	{
	my_ip = string(ds_map_find_value(async_load, "result")); //Write message + data (IP)
	text_color = c_lime //Text will be green
	}
	else if ds_map_find_value(async_load, "status") < 0 //If error occurred
	{
	var error_code = ds_map_find_value(async_load, "http_status")
	my_ip = "Please check your internet connection."; //Write error message
	text_color = c_red //Text will be red
	error = "Error " + string(error_code) + " " + http_errors(error_code) //Write message + error code + error status with script 
	}
}
