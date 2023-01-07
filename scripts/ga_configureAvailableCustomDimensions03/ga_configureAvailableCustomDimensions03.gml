/// @description configure available 03 custom dimensions
/// @param {real} array instance id of ga_array object
function ga_configureAvailableCustomDimensions03(argument0) {

	if (is_array(argument0))
	{
	    if(os_browser == browser_not_a_browser)
		{
			if(os_type == os_android)
			{
				configureAvailableCustomDimensions03_android(util_ga_arrayToJsonString(argument0));
			}
			else if(os_type == os_ios)
			{
				configureAvailableCustomDimensions03_ios(util_ga_arrayToJsonString(argument0));
			}
			else if(os_type == os_windows)
			{
				configureAvailableCustomDimensions03_windows(util_ga_arrayToJsonString(argument0));
			}
			else if(os_type == os_macosx)
			{
				configureAvailableCustomDimensions03_mac(util_ga_arrayToJsonString(argument0));
			}
			else if(os_type == os_linux)
			{
				configureAvailableCustomDimensions03_linux(util_ga_arrayToJsonString(argument0));
			}
			else if(os_type == os_uwp)
			{
				configureAvailableCustomDimensions03_uwp(util_ga_arrayToJsonString(argument0));
			}
		}
		else
		{
			configureAvailableCustomDimensions03_html(util_ga_arrayToJsonString(argument0));
		}
	}
	else
	{
	    ga_trace("ga_configureAvailableCustomDimensions03() argument is not an array");
	}


}
