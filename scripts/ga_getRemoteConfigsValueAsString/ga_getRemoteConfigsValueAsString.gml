/// @description get command center value as a string
/// @param {string} command center key
/// @param {real} ?defaultValue optional default value to return if key was not found
function ga_getRemoteConfigsValueAsString() {

	if(argument_count == 1)
	{
		if(os_browser == browser_not_a_browser)
		{
			if(os_type == os_android)
			{
				return getRemoteConfigsValueAsString_android(argument[0]);
			}
			else if(os_type == os_ios)
			{
				return getRemoteConfigsValueAsString_ios(argument[0]);
			}
			else if(os_type == os_windows)
			{
				return getRemoteConfigsValueAsString_windows(argument[0]);
			}
			else if(os_type == os_macosx)
			{
				return getRemoteConfigsValueAsString_mac(argument[0]);
			}
			else if(os_type == os_linux)
			{
				return getRemoteConfigsValueAsString_linux(argument[0]);
			}
			else if(os_type == os_uwp)
			{
				return getRemoteConfigsValueAsString_uwp(argument[0]);
			}
		}
		else
		{
			return getRemoteConfigsValueAsString_html(argument[0]);
		}
	}
	else if(argument_count == 2)
	{
		if(os_browser == browser_not_a_browser)
		{
			if(os_type == os_android)
			{
				return getRemoteConfigsValueAsStringWithDefaultValue_android(argument[0]);
			}
			else if(os_type == os_ios)
			{
				return getRemoteConfigsValueAsStringWithDefaultValue_ios(argument[0]);
			}
			else if(os_type == os_windows)
			{
				return getRemoteConfigsValueAsStringWithDefaultValue_windows(argument[0]);
			}
			else if(os_type == os_macosx)
			{
				return getRemoteConfigsValueAsStringWithDefaultValue_mac(argument[0]);
			}
			else if(os_type == os_linux)
			{
				return getRemoteConfigsValueAsStringWithDefaultValue_linux(argument[0]);
			}
			else if(os_type == os_uwp)
			{
				return getRemoteConfigsValueAsStringWithDefaultValue_uwp(argument[0]);
			}
		}
		else
		{
			return getRemoteConfigsValueAsStringWithDefaultValue_html(argument[0]);
		}
	}

	return "";


}
