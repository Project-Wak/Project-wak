/// @description set current custom dimension 03
/// @param {string} dimension
function ga_setCustomDimension03() {

	if(os_browser == browser_not_a_browser)
	{
		if(os_type == os_android)
		{
			setCustomDimension03_android(argument[0]);
		}
		else if(os_type == os_ios)
		{
			setCustomDimension03_ios(argument[0]);
		}
		else if(os_type == os_windows)
		{
			setCustomDimension03_windows(argument[0]);
		}
		else if(os_type == os_macosx)
		{
			setCustomDimension03_mac(argument[0]);
		}
		else if(os_type == os_linux)
		{
			setCustomDimension03_linux(argument[0]);
		}
		else if(os_type == os_uwp)
		{
			setCustomDimension03_uwp(argument[0]);
		}
	}
	else
	{
		setCustomDimension03_html(argument[0]);
	}


}
