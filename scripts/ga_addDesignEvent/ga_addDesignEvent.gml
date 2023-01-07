/// @description add design event
/// @param {string} eventId event id
/// @param {real} ?value optional value
function ga_addDesignEvent() {

	if(argument_count == 1)
	{
		if(os_browser == browser_not_a_browser)
		{
			if(os_type == os_android)
			{
				addDesignEvent_android(argument[0]);
			}
			else if(os_type == os_ios)
			{
				addDesignEvent_ios(argument[0]);
			}
			else if(os_type == os_windows)
			{
				addDesignEvent_windows(argument[0], "{}", false);
			}
			else if(os_type == os_macosx)
			{
				addDesignEvent_mac(argument[0], "{}", false);
			}
			else if(os_type == os_linux)
			{
				addDesignEvent_linux(argument[0], "{}", false);
			}
			else if(os_type == os_uwp)
			{
				addDesignEvent_uwp(argument[0], "{}", false);
			}
		}
		else
		{
			addDesignEvent_html(argument[0]);
		}
	}
	else if(argument_count == 2)
	{
		if(os_browser == browser_not_a_browser)
		{
			if(os_type == os_android)
			{
				addDesignEventWithValue_android(argument[0], argument[1]);
			}
			else if(os_type == os_ios)
			{
				addDesignEventWithValue_ios(argument[0], argument[1]);
			}
			else if(os_type == os_windows)
			{
				addDesignEventWithValue_windows(argument[0], argument[1], "{}", false);
			}
			else if(os_type == os_macosx)
			{
				addDesignEventWithValue_mac(argument[0], argument[1], "{}", false);
			}
			else if(os_type == os_linux)
			{
				addDesignEventWithValue_linux(argument[0], argument[1], "{}", false);
			}
			else if(os_type == os_uwp)
			{
				addDesignEventWithValue_uwp(argument[0], argument[1], "{}", false);
			}
		}
		else
		{
			addDesignEventWithValue_html(argument[0], argument[1]);
		}
	}


}
