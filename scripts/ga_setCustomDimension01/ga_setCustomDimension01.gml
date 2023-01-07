/// @description set current custom dimension 01
/// @param {string} dimension
function ga_setCustomDimension01() {

	if(os_browser == browser_not_a_browser)
	{
		if(os_type == os_android)
		{
			setCustomDimension01_android(argument[0]);
		}
		else if(os_type == os_ios)
		{
			setCustomDimension01_ios(argument[0]);
		}
		else if(os_type == os_windows)
		{
			setCustomDimension01_windows(argument[0]);
		}
		else if(os_type == os_macosx)
		{
			setCustomDimension01_mac(argument[0]);
		}
		else if(os_type == os_linux)
		{
			setCustomDimension01_linux(argument[0]);
		}
		else if(os_type == os_uwp)
		{
			setCustomDimension01_uwp(argument[0]);
		}
	}
	else
	{
		setCustomDimension01_html(argument[0]);
	}


}
