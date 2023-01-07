/// @description configure available resource currencies
/// @param {real} array instance id of ga_array object
function ga_configureAvailableResourceCurrencies(argument0) {

	if (is_array(argument0))
	{
		if(os_browser == browser_not_a_browser)
		{
			if(os_type == os_android)
			{
				configureAvailableResourceCurrencies_android(util_ga_arrayToJsonString(argument0));
			}
			else if(os_type == os_ios)
			{
				configureAvailableResourceCurrencies_ios(util_ga_arrayToJsonString(argument0));
			}
			else if(os_type == os_windows)
			{
				configureAvailableResourceCurrencies_windows(util_ga_arrayToJsonString(argument0));
			}
			else if(os_type == os_macosx)
			{
				configureAvailableResourceCurrencies_mac(util_ga_arrayToJsonString(argument0));
			}
			else if(os_type == os_linux)
			{
				configureAvailableResourceCurrencies_linux(util_ga_arrayToJsonString(argument0));
			}
			else if(os_type == os_uwp)
			{
				configureAvailableResourceCurrencies_uwp(util_ga_arrayToJsonString(argument0));
			}
		}
		else
		{
			configureAvailableResourceCurrencies_html(util_ga_arrayToJsonString(argument0));
		}
	}
	else
	{
	    ga_trace("ga_configureAvailableResourceCurrencies() argument is not an array");
	}


}
