/// @description configure available resource item types
/// @param {real} array instance id of ga_array object
function ga_configureAvailableResourceItemTypes(argument0) {

	if (is_array(argument0))
	{
		if(os_browser == browser_not_a_browser)
		{
			if(os_type == os_android)
			{
				configureAvailableResourceItemTypes_android(util_ga_arrayToJsonString(argument0));
			}
			else if(os_type == os_ios)
			{
				configureAvailableResourceItemTypes_ios(util_ga_arrayToJsonString(argument0));
			}
			else if(os_type == os_windows)
			{
				configureAvailableResourceItemTypes_windows(util_ga_arrayToJsonString(argument0));
			}
			else if(os_type == os_macosx)
			{
				configureAvailableResourceItemTypes_mac(util_ga_arrayToJsonString(argument0));
			}
			else if(os_type == os_linux)
			{
				configureAvailableResourceItemTypes_linux(util_ga_arrayToJsonString(argument0));
			}
			else if(os_type == os_uwp)
			{
				configureAvailableResourceItemTypes_uwp(util_ga_arrayToJsonString(argument0));
			}
		}
		else
		{
			configureAvailableResourceItemTypes_html(util_ga_arrayToJsonString(argument0));
		}
	}
	else
	{
	    ga_trace("ga_configureAvailableResourceItemTypes() argument is not an array");
	}


}
