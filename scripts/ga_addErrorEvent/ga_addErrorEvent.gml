/// @description add error event
/// @param {real} severity
/// @param {string} message
function ga_addErrorEvent() {

	if(os_browser == browser_not_a_browser)
	{
		if(os_type == os_android)
		{
			addErrorEvent_android(argument[0], argument[1]);
		}
		else if(os_type == os_ios)
		{
			addErrorEvent_ios(argument[0], argument[1]);
		}
		else if(os_type == os_windows)
		{
			addErrorEvent_windows(argument[0], argument[1], "{}", false);
		}
		else if(os_type == os_macosx)
		{
			addErrorEvent_mac(argument[0], argument[1], "{}", false);
		}
		else if(os_type == os_linux)
		{
			addErrorEvent_linux(argument[0], argument[1], "{}", false);
		}
		else if(os_type == os_uwp)
		{
			addErrorEvent_uwp(argument[0], argument[1], "{}", false);
		}
	}
	else
	{
		addErrorEvent_html(argument[0], argument[1]);
	}


}
