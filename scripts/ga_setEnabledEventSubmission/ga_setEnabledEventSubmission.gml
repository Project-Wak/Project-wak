/// @description enable or disable manual session handling
/// @param {real} true or false
function ga_setEnabledEventSubmission() {

	if(os_browser == browser_not_a_browser)
	{
		if(os_type == os_android)
		{
			setEnabledEventSubmission_android(argument[0]);
		}
		else if(os_type == os_ios)
		{
			setEnabledEventSubmission_ios(argument[0]);
		}
		else if(os_type == os_windows)
		{
			setEnabledEventSubmission_windows(argument[0]);
		}
		else if(os_type == os_macosx)
		{
			setEnabledEventSubmission_mac(argument[0]);
		}
		else if(os_type == os_linux)
		{
			setEnabledEventSubmission_linux(argument[0]);
		}
		else if(os_type == os_uwp)
		{
			setEnabledEventSubmission_uwp(argument[0]);
		}
	}
	else
	{
		setEnabledEventSubmission_html(argument[0]);
	}


}
