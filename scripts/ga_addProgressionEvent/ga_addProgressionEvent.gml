/// @description add progression event
/// @param {real} status progression status use (GA_PROGRESSIONSTATUS_START, GA_PROGRESSIONSTATUS_COMPLETE or GA_PROGRESSIONSTATUS_FAIL)
/// @param {string} progression1 first progression field (for example world)
/// @param {string} progression2 second progression field (for example level)
/// @param {string} progression3 second progression field (for example phase)
/// @param {real} ?score progression score
function ga_addProgressionEvent() {

	var status = argument[0];

	if(argument_count == 2)
	{
		if(os_browser == browser_not_a_browser)
		{
			if(os_type == os_android)
			{
				addProgressionEvent_android(status, argument[1], "", "");
			}
			else if(os_type == os_ios)
			{
				addProgressionEvent_ios(status, argument[1], "", "");
			}
			else if(os_type == os_windows)
			{
				addProgressionEvent_windows(util_ga_arrayToJsonString(ga_array(status, argument[1], "", "")));
			}
			else if(os_type == os_macosx)
			{
				addProgressionEvent_mac(util_ga_arrayToJsonString(ga_array(status, argument[1], "", "")));
			}
			else if(os_type == os_linux)
			{
				addProgressionEvent_linux(util_ga_arrayToJsonString(ga_array(status, argument[1], "", "")));
			}
			else if(os_type == os_uwp)
			{
				addProgressionEvent_uwp(util_ga_arrayToJsonString(ga_array(status, argument[1], "", "")));
			}
		}
		else
		{
			addProgressionEvent_html(status, argument[1], "", "");
		}
	}
	else if(argument_count == 3)
	{
	    if(is_real(argument[2]))
	    {
			if(os_browser == browser_not_a_browser)
			{
				if(os_type == os_android)
				{
					addProgressionEventWithScoreJson_android(util_ga_arrayToJsonString(ga_array(status, argument[1], "", "", argument[2])));
				}
				else if(os_type == os_ios)
				{
					addProgressionEventWithScoreJson_ios(util_ga_arrayToJsonString(ga_array(status, argument[1], "", "", argument[2])));
				}
				else if(os_type == os_windows)
				{
					addProgressionEventWithScoreJson_windows(util_ga_arrayToJsonString(ga_array(status, argument[1], "", "", argument[2])));
				}
				else if(os_type == os_macosx)
				{
					addProgressionEventWithScoreJson_mac(util_ga_arrayToJsonString(ga_array(status, argument[1], "", "", argument[2])));
				}
				else if(os_type == os_linux)
				{
					addProgressionEventWithScoreJson_linux(util_ga_arrayToJsonString(ga_array(status, argument[1], "", "", argument[2])));
				}
				else if(os_type == os_uwp)
				{
					addProgressionEventWithScoreJson_uwp(util_ga_arrayToJsonString(ga_array(status, argument[1], "", "", argument[2])));
				}
			}
			else
			{
				addProgressionEventWithScoreJson_html(util_ga_arrayToJsonString(ga_array(status, argument[1], "", "", argument[2])));
			}
	    }
	    else
	    {
			if(os_browser == browser_not_a_browser)
			{
				if(os_type == os_android)
				{
					addProgressionEvent_android(status, argument[1], argument[2], "");
				}
				else if(os_type == os_ios)
				{
					addProgressionEvent_ios(status, argument[1], argument[2], "");
				}
				else if(os_type == os_windows)
				{
					addProgressionEvent_windows(util_ga_arrayToJsonString(ga_array(status, argument[1], argument[2], "")));
				}
				else if(os_type == os_macosx)
				{
					addProgressionEvent_mac(util_ga_arrayToJsonString(ga_array(status, argument[1], argument[2], "")));
				}
				else if(os_type == os_linux)
				{
					addProgressionEvent_linux(util_ga_arrayToJsonString(ga_array(status, argument[1], argument[2], "")));
				}
				else if(os_type == os_uwp)
				{
					addProgressionEvent_uwp(util_ga_arrayToJsonString(ga_array(status, argument[1], argument[2], "")));
				}
			}
			else
			{
				addProgressionEvent_html(status, argument[1], argument[2], "");
			}
	    }
	}
	else if(argument_count == 4)
	{
	    if(is_real(argument[3]))
	    {
			if(os_browser == browser_not_a_browser)
			{
				if(os_type == os_android)
				{
					addProgressionEventWithScoreJson_android(util_ga_arrayToJsonString(ga_array(status, argument[1], argument[2], "", argument[3])));
				}
				else if(os_type == os_ios)
				{
					addProgressionEventWithScoreJson_ios(util_ga_arrayToJsonString(ga_array(status, argument[1], argument[2], "", argument[3])));
				}
				else if(os_type == os_windows)
				{
					addProgressionEventWithScoreJson_windows(util_ga_arrayToJsonString(ga_array(status, argument[1], argument[2], "", argument[3])));
				}
				else if(os_type == os_macosx)
				{
					addProgressionEventWithScoreJson_mac(util_ga_arrayToJsonString(ga_array(status, argument[1], argument[2], "", argument[3])));
				}
				else if(os_type == os_linux)
				{
					addProgressionEventWithScoreJson_linux(util_ga_arrayToJsonString(ga_array(status, argument[1], argument[2], "", argument[3])));
				}
				else if(os_type == os_uwp)
				{
					addProgressionEventWithScoreJson_uwp(util_ga_arrayToJsonString(ga_array(status, argument[1], argument[2], "", argument[3])));
				}
			}
			else
			{
				addProgressionEventWithScoreJson_html(util_ga_arrayToJsonString(ga_array(status, argument[1], argument[2], "", argument[3])));
			}
	    }
	    else
	    {
			if(os_browser == browser_not_a_browser)
			{
				if(os_type == os_android)
				{
					addProgressionEvent_android(status, argument[1], argument[2], argument[3]);
				}
				else if(os_type == os_ios)
				{
					addProgressionEvent_ios(status, argument[1], argument[2], argument[3]);
				}
				else if(os_type == os_windows)
				{
					addProgressionEvent_windows(util_ga_arrayToJsonString(ga_array(status, argument[1], argument[2], argument[3])));
				}
				else if(os_type == os_macosx)
				{
					addProgressionEvent_mac(util_ga_arrayToJsonString(ga_array(status, argument[1], argument[2], argument[3])));
				}
				else if(os_type == os_linux)
				{
					addProgressionEvent_linux(util_ga_arrayToJsonString(ga_array(status, argument[1], argument[2], argument[3])));
				}
				else if(os_type == os_uwp)
				{
					addProgressionEvent_uwp(util_ga_arrayToJsonString(ga_array(status, argument[1], argument[2], argument[3])));
				}
			}
			else
			{
				addProgressionEvent_html(status, argument[1], argument[2], argument[3]);
			}
	    }
	}
	else if(argument_count == 5)
	{
		if(os_browser == browser_not_a_browser)
		{
			if(os_type == os_android)
			{
				addProgressionEventWithScoreJson_android(util_ga_arrayToJsonString(ga_array(status, argument[1], argument[2], argument[3], argument[4])));
			}
			else if(os_type == os_ios)
			{
				addProgressionEventWithScoreJson_ios(util_ga_arrayToJsonString(ga_array(status, argument[1], argument[2], argument[3], argument[4])));
			}
			else if(os_type == os_windows)
			{
				addProgressionEventWithScoreJson_windows(util_ga_arrayToJsonString(ga_array(status, argument[1], argument[2], argument[3], argument[4])));
			}
			else if(os_type == os_macosx)
			{
				addProgressionEventWithScoreJson_mac(util_ga_arrayToJsonString(ga_array(status, argument[1], argument[2], argument[3], argument[4])));
			}
			else if(os_type == os_linux)
			{
				addProgressionEventWithScoreJson_linux(util_ga_arrayToJsonString(ga_array(status, argument[1], argument[2], argument[3], argument[4])));
			}
			else if(os_type == os_uwp)
			{
				addProgressionEventWithScoreJson_uwp(util_ga_arrayToJsonString(ga_array(status, argument[1], argument[2], argument[3], argument[4])));
			}
		}
		else
		{
			addProgressionEventWithScoreJson_html(util_ga_arrayToJsonString(ga_array(status, argument[1], argument[2], argument[3], argument[4])));
		}
	}


}
