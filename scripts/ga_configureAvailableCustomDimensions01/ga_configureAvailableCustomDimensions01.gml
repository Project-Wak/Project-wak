/// @description configure available 01 custom dimensions
/// @param {real} array instance id of ga_array object
function ga_configureAvailableCustomDimensions01(argument0) {

	if (is_array(argument0))
	{
		if(os_browser == browser_not_a_browser)
		{
			if(os_type == os_android)
			{
				configureAvailableCustomDimensions01_android(util_ga_arrayToJsonString(argument0));
			}
			else if(os_type == os_ios)
			{
				configureAvailableCustomDimensions01_ios(util_ga_arrayToJsonString(argument0));
			}
			else if(os_type == os_windows)
			{
				configureAvailableCustomDimensions01_windows(util_ga_arrayToJsonString(argument0));
			}
			else if(os_type == os_macosx)
			{
				configureAvailableCustomDimensions01_mac(util_ga_arrayToJsonString(argument0));
			}
			else if(os_type == os_linux)
			{
				configureAvailableCustomDimensions01_linux(util_ga_arrayToJsonString(argument0));
			}
			else if(os_type == os_uwp)
			{
				configureAvailableCustomDimensions01_uwp(util_ga_arrayToJsonString(argument0));
			}
		}
		else
		{
			configureAvailableCustomDimensions01_html(util_ga_arrayToJsonString(argument0));
		}
	}
	else
	{
	    ga_trace("ga_configureAvailableCustomDimensions01() argument is not an array");
	}


}
