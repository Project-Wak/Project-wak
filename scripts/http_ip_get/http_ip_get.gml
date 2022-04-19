function http_ip_get(argument0) 
{
	//Use this php code for your website : <?php echo $_SERVER["REMOTE_ADDR"]; ?>
	//argument0 = your website (IMPORTANT: Page must contain the code above ONLY)
	if argument0 == "" //If nothing was entered
	{
	return http_get("http://icanhazip.com"); //Send a request to icanhazip.com
	}
	else //If something was entered
	{
	return http_get(argument0); //Send a request to the website
	}
}
