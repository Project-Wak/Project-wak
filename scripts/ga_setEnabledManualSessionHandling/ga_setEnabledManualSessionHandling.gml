/// @description enable or disable manual session handling
/// @param {real} true or false
function ga_setEnabledManualSessionHandling() {

	if(os_browser == browser_not_a_browser)
	{
		if(os_type == os_android)
		{
			setEnabledManualSessionHandling_android(argument[0]);
		}
		else if(os_type == os_ios)
		{
			setEnabledManualSessionHandling_ios(argument[0]);
		}
		else if(os_type == os_windows)
		{
			setEnabledManualSessionHandling_windows(argument[0]);
		}
		else if(os_type == os_macosx)
		{
			setEnabledManualSessionHandling_mac(argument[0]);
		}
		else if(os_type == os_linux)
		{
			setEnabledManualSessionHandling_linux(argument[0]);
		}
		else if(os_type == os_uwp)
		{
			setEnabledManualSessionHandling_uwp(argument[0]);
		}
	}
	else
	{
		setEnabledManualSessionHandling_html(argument[0]);
	}


}
