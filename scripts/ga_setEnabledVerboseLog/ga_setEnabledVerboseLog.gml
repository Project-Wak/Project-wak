/// @description enable or disable verbose logging
/// @param {real} true or false
function ga_setEnabledVerboseLog() {

	if(os_browser == browser_not_a_browser)
	{
		if(os_type == os_android)
		{
			setEnabledVerboseLog_android(argument[0]);
		}
		else if(os_type == os_ios)
		{
			setEnabledVerboseLog_ios(argument[0]);
		}
		else if(os_type == os_windows)
		{
			setEnabledVerboseLog_windows(argument[0]);
		}
		else if(os_type == os_macosx)
		{
			setEnabledVerboseLog_mac(argument[0]);
		}
		else if(os_type == os_linux)
		{
			setEnabledVerboseLog_linux(argument[0]);
		}
		else if(os_type == os_uwp)
		{
			setEnabledVerboseLog_uwp(argument[0]);
		}
	}
	else
	{
		setEnabledVerboseLog_html(argument[0]);
	}


}
