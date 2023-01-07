/// @description enable or disable info logging
/// @param {real} true or false
function ga_setEnabledInfoLog() {

	if(os_browser == browser_not_a_browser)
	{
		if(os_type == os_android)
		{
			setEnabledInfoLog_android(argument[0]);
		}
		else if(os_type == os_ios)
		{
			setEnabledInfoLog_ios(argument[0]);
		}
		else if(os_type == os_windows)
		{
			setEnabledInfoLog_windows(argument[0]);
		}
		else if(os_type == os_macosx)
		{
			setEnabledInfoLog_mac(argument[0]);
		}
		else if(os_type == os_linux)
		{
			setEnabledInfoLog_linux(argument[0]);
		}
		else if(os_type == os_uwp)
		{
			setEnabledInfoLog_uwp(argument[0]);
		}
	}
	else
	{
		setEnabledInfoLog_html(argument[0]);
	}


}
