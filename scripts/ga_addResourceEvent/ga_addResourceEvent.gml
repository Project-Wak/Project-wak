/// @description add resource event
/// @param {real} flowType resource flow type (GA_RESOURCEFLOWTYPE_SINK or GA_RESOURCEFLOWTYPE_SOURCE)
/// @param {string} currency resource currency
/// @param {real} amount amount of resource
/// @param {string} itemType item type
/// @param {string} itemId item id
function ga_addResourceEvent() {

	if(os_browser == browser_not_a_browser)
	{
		if(os_type == os_android)
		{
			addResourceEventJson_android(util_ga_arrayToJsonString(ga_array(argument[0], argument[1], argument[2], argument[3], argument[4])));
		}
		else if(os_type == os_ios)
		{
			addResourceEventJson_ios(util_ga_arrayToJsonString(ga_array(argument[0], argument[1], argument[2], argument[3], argument[4])));
		}
		else if(os_type == os_windows)
		{
			addResourceEventJson_windows(util_ga_arrayToJsonString(ga_array(argument[0], argument[1], argument[2], argument[3], argument[4])));
		}
		else if(os_type == os_macosx)
		{
			addResourceEventJson_mac(util_ga_arrayToJsonString(ga_array(argument[0], argument[1], argument[2], argument[3], argument[4])));
		}
		else if(os_type == os_linux)
		{
			addResourceEventJson_linux(util_ga_arrayToJsonString(ga_array(argument[0], argument[1], argument[2], argument[3], argument[4])));
		}
		else if(os_type == os_uwp)
		{
			addResourceEventJson_uwp(util_ga_arrayToJsonString(ga_array(argument[0], argument[1], argument[2], argument[3], argument[4])));
		}
	}
	else
	{
		addResourceEventJson_html(util_ga_arrayToJsonString(ga_array(argument[0], argument[1], argument[2], argument[3], argument[4])));
	}


}
