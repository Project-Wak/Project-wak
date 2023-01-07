/// @description utility function to format a ga_array object as a json string
/// @param {real} array instance id of ga_array object
function util_ga_arrayToJsonString(argument0) {

	var result = "[]";

	if (is_array(argument0))
	{
	    var array = argument0;
    
	    var length = array_length_1d(array);
	    result = "[";
	    for(var i = 0; i < length; ++i)
	    {
	        if(is_string(array[i]))
	        {
	            result += "\"" + string(array[i]) + "\"";
	            if(i < length - 1)
	            {
	                result += ",";
	            }
	        }
			else if(is_real(array[i]))
	        {
	            result += string(array[i]);
	            if(i < length - 1)
	            {
	                result += ",";
	            }
	        }
			else if(is_bool(array[i]))
	        {
	            result += string(array[i]);
	            if(i < length - 1)
	            {
	                result += ",";
	            }
	        }
	        else
	        {
	            ga_trace("ga_arrayToJsonString() element at index=" + i + " is not a string or number");
	        }
	    }
	    result += "]";
	}

	return result; 


}
