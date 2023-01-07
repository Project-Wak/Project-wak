/// @description end session
function ga_endSession() {

	if(os_browser == browser_not_a_browser)
	{
		if(os_type == os_android)
		{
			endSession_android();
		}
		else if(os_type == os_ios)
		{
			endSession_ios();
		}
		else if(os_type == os_windows)
		{
			endSession_windows();
		}
		else if(os_type == os_macosx)
		{
			endSession_mac();
		}
		else if(os_type == os_linux)
		{
			endSession_linux();
		}
		else if(os_type == os_uwp)
		{
			endSession_uwp();
		}
	}
	else
	{
		endSession_html();
	}


}
