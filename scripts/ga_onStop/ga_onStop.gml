/// @description call on stop game
function ga_onStop() {

	if(os_browser == browser_not_a_browser)
	{
		if(os_type == os_windows)
		{
			onStop_windows();
		}
		else if(os_type == os_macosx)
		{
			onStop_mac();
		}
		else if(os_type == os_linux)
		{
			onStop_linux();
		}
		else if(os_type == os_uwp)
		{
			onStop_uwp();
		}
	}
	else
	{
		onStop_html();
	}


}
