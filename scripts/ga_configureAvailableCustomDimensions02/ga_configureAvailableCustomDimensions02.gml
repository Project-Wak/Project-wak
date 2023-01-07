/// @description configure available 02 custom dimensions
/// @param {real} array instance id of ga_array object
function ga_configureAvailableCustomDimensions02(argument0) {

	if (is_array(argument0))
	{
	    if(os_browser == browser_not_a_browser)
		{
			if(os_type == os_android)
			{
				configureAvailableCustomDimensions02_android(util_ga_arrayToJsonString(argument0));
			}
			else if(os_type == os_ios)
			{
				configureAvailableCustomDimensions02_ios(util_ga_arrayToJsonString(argument0));
			}
			else if(os_type == os_windows)
			{
				configureAvailableCustomDimensions02_windows(util_ga_arrayToJsonString(argument0));
			}
			else if(os_type == os_macosx)
			{
				configureAvailableCustomDimensions02_mac(util_ga_arrayToJsonString(argument0));
			}
			else if(os_type == os_linux)
			{
				configureAvailableCustomDimensions02_linux(util_ga_arrayToJsonString(argument0));
			}
			else if(os_type == os_uwp)
			{
				configureAvailableCustomDimensions02_uwp(util_ga_arrayToJsonString(argument0));
			}
		}
		else
		{
			configureAvailableCustomDimensions02_html(util_ga_arrayToJsonString(argument0));
		}
	}
	else
	{
	    ga_trace("ga_configureAvailableCustomDimensions02() argument is not an array");
	}


}
