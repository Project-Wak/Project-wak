/// @description set user id
/// @param {string} user id
function ga_configureUserId() {

	if(os_browser == browser_not_a_browser)
	{
		if(os_type == os_android)
		{
			configureUserId_android(argument[0]);
		}
		else if(os_type == os_ios)
		{
			configureUserId_ios(argument[0]);
		}
		else if(os_type == os_windows)
		{
			configureUserId_windows(argument[0]);
		}
		else if(os_type == os_macosx)
		{
			configureUserId_mac(argument[0]);
		}
		else if(os_type == os_linux)
		{
			configureUserId_linux(argument[0]);
		}
		else if(os_type == os_uwp)
		{
			configureUserId_uwp(argument[0]);
		}
	}
	else
	{
		configureUserId_html(argument[0]);
	}


}
