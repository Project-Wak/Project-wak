/// @description checks if command center is ready or not
function ga_isRemoteConfigsReady() {

	if(os_browser == browser_not_a_browser)
	{
		if(os_type == os_android)
		{
			return isRemoteConfigsReady_android();
		}
		else if(os_type == os_ios)
		{
			return isRemoteConfigsReady_ios();
		}
		else if(os_type == os_windows)
		{
			return isRemoteConfigsReady_windows();
		}
		else if(os_type == os_macosx)
		{
			return isRemoteConfigsReady_mac();
		}
		else if(os_type == os_linux)
		{
			return isRemoteConfigsReady_linux();
		}
		else if(os_type == os_uwp)
		{
			return isRemoteConfigsReady_uwp();
		}
	}
	else
	{
		return isRemoteConfigsReady_html();
	}

	return false;


}
