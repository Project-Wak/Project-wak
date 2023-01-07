/// @description initialize sdk with given keys
/// @param {string} key game key
/// @param {string} secret secret key
function ga_initialize(argument0, argument1) {

	var GA_VERSION = "gamemaker 4.0.7";

	if(os_browser == browser_not_a_browser)
	{
		if(os_type == os_android)
		{
			configureSdkGameEngineVersion_android(GA_VERSION);
			native_ga_initialize_android(argument0, argument1);
		}
		else if(os_type == os_ios)
		{
			configureSdkGameEngineVersion_ios(GA_VERSION);
			native_ga_initialize_ios(argument0, argument1);
		}
		else if(os_type == os_windows)
		{
			configureSdkGameEngineVersion_windows(GA_VERSION);
			native_ga_initialize_windows(argument0, argument1);
		}
		else if(os_type == os_macosx)
		{
			configureSdkGameEngineVersion_mac(GA_VERSION);
			native_ga_initialize_mac(argument0, argument1);
		}
		else if(os_type == os_linux)
		{
			configureSdkGameEngineVersion_linux(GA_VERSION);
			native_ga_initialize_linux(argument0, argument1);
		}
		else if(os_type == os_uwp)
		{
			configureSdkGameEngineVersion_uwp(GA_VERSION);
			native_ga_initialize_uwp(argument0, argument1);
		}
	}
	else
	{
		configureSdkGameEngineVersion_html(GA_VERSION);
		native_ga_initialize_html(argument0, argument1);
	}


}
