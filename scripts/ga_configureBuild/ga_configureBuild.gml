/// @description set build number
/// @param {string} build number
function ga_configureBuild() {

	if(os_browser == browser_not_a_browser)
	{
		if(os_type == os_android)
		{
			configureBuild_android(argument[0]);
		}
		else if(os_type == os_ios)
		{
			configureBuild_ios(argument[0]);
		}
		else if(os_type == os_windows)
		{
			configureBuild_windows(argument[0]);
		}
		else if(os_type == os_macosx)
		{
			configureBuild_mac(argument[0]);
		}
		else if(os_type == os_linux)
		{
			configureBuild_linux(argument[0]);
		}
		else if(os_type == os_uwp)
		{
			configureBuild_uwp(argument[0]);
		}
	}
	else
	{
		configureBuild_html(argument[0]);
	}


}
