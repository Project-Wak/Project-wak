/// @description resume session (start new session)
function ga_onResume() {

	if(os_browser == browser_not_a_browser)
	{
		if(os_type == os_windows)
		{
			onResume_windows();
		}
		else if(os_type == os_macosx)
		{
			onResume_mac();
		}
		else if(os_type == os_linux)
		{
			onResume_linux();
		}
		else if(os_type == os_uwp)
		{
			onResume_uwp();
		}
	}
	else
	{
		onResume_html();
	}


}
