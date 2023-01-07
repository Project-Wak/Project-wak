/// @description add business event
/// @param ... businesss event arguments
function ga_addBusinessEvent() {

	if (argument_count == 5)
	{
		if(os_browser == browser_not_a_browser)
		{
			if(os_type == os_android)
			{
				addBusinessEventJson_android(util_ga_arrayToJsonString(ga_array(argument[0], argument[1], argument[2], argument[3], argument[4])));
			}
			else if(os_type == os_ios)
			{
				addBusinessEventJson_ios(util_ga_arrayToJsonString(ga_array(argument[0], argument[1], argument[2], argument[3], argument[4])));
			}
			else if(os_type == os_windows)
			{
				addBusinessEventJson_windows(util_ga_arrayToJsonString(ga_array(argument[0], argument[1], argument[2], argument[3], argument[4])));
			}
			else if(os_type == os_macosx)
			{
				addBusinessEventJson_mac(util_ga_arrayToJsonString(ga_array(argument[0], argument[1], argument[2], argument[3], argument[4])));
			}
			else if(os_type == os_linux)
			{
				addBusinessEventJson_linux(util_ga_arrayToJsonString(ga_array(argument[0], argument[1], argument[2], argument[3], argument[4])));
			}
			else if(os_type == os_uwp)
			{
				addBusinessEventJson_uwp(util_ga_arrayToJsonString(ga_array(argument[0], argument[1], argument[2], argument[3], argument[4])));
			}
		}
		else
		{
			addBusinessEventJson_html(util_ga_arrayToJsonString(ga_array(argument[0], argument[1], argument[2], argument[3], argument[4])));
		}
	}
	else if (argument_count == 6 && os_type == os_ios)
	{
	    if(is_string(argument[5]))
	    {
	        addBusinessEventWithReceiptIOS(argument[0], argument[1], argument[2], argument[3], argument[4], argument[5]);
	    }
	    else if(argument[5] == true)
	    {
	        addBusinessEventAndAutoFetchReceipt(argument[0], argument[1], argument[2], argument[3], argument[4]);
	    }
	    else
	    {
	        addBusinessEventJson_ios(util_ga_arrayToJsonString(ga_array(argument[0], argument[1], argument[2], argument[3], argument[4])));
	    }
	}
	else if (argument_count == 7 && os_type == os_android)
	{
	    addBusinessEventWithReceiptAndroid(argument[0], argument[1], argument[2], argument[3], argument[4], argument[5], "google_play", argument[6]);
	}


}
