/// @description start session
function ga_startSession() {

	if(os_browser == browser_not_a_browser)
	{
		if(os_type == os_android)
		{
			startSession_android();
		}
		else if(os_type == os_ios)
		{
			startSession_ios();
		}
		else if(os_type == os_windows)
		{
			startSession_windows();
		}
		else if(os_type == os_macosx)
		{
			startSession_mac();
		}
		else if(os_type == os_linux)
		{
			startSession_linux();
		}
		else if(os_type == os_uwp)
		{
			startSession_uwp();
		}
	}
	else
	{
		startSession_html();
	}


}
