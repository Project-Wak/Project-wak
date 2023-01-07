/// @description returns string of command center content
function ga_getRemoteConfigsContentAsString() {

	if(os_browser == browser_not_a_browser)
	{
		if(os_type == os_android)
		{
			return getRemoteConfigsContentAsString_android();
		}
		else if(os_type == os_ios)
		{
			return getRemoteConfigsContentAsString_ios();
		}
		else if(os_type == os_windows)
		{
			return getRemoteConfigsContentAsString_windows();
		}
		else if(os_type == os_macosx)
		{
			return getRemoteConfigsContentAsString_mac();
		}
		else if(os_type == os_linux)
		{
			return getRemoteConfigsContentAsString_linux();
		}
		else if(os_type == os_uwp)
		{
			return getRemoteConfigsContentAsString_uwp();
		}
	}
	else
	{
		return getRemoteConfigsContentAsString_html();
	}

	return "";


}
