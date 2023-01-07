/// @description set current custom dimension 02
/// @param {string} dimension
function ga_setCustomDimension02() {

	if(os_browser == browser_not_a_browser)
	{
		if(os_type == os_android)
		{
			setCustomDimension02_android(argument[0]);
		}
		else if(os_type == os_ios)
		{
			setCustomDimension02_ios(argument[0]);
		}
		else if(os_type == os_windows)
		{
			setCustomDimension02_windows(argument[0]);
		}
		else if(os_type == os_macosx)
		{
			setCustomDimension02_mac(argument[0]);
		}
		else if(os_type == os_linux)
		{
			setCustomDimension02_linux(argument[0]);
		}
		else if(os_type == os_uwp)
		{
			setCustomDimension02_uwp(argument[0]);
		}
	}
	else
	{
		setCustomDimension02_html(argument[0]);
	}


}
