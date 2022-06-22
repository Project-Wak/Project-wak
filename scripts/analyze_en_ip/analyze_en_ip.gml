// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function analyze_en_ip(argument0)
{
	if (string_pos("0",argument0) = 0 && string_pos("1",argument0) = 0 && string_pos("2",argument0) = 0 && string_pos("3",argument0) = 0 && string_pos("4",argument0) = 0 && string_pos("5",argument0) = 0 && string_pos("6",argument0) = 0 && string_pos("7",argument0) = 0 && string_pos("8",argument0) = 0 && string_pos("9",argument0) = 0)
	{
		if argument0 != ""
		{
		var _replaced_f_code = argument0


		_replaced_f_code = string_replace(_replaced_f_code,"C","0")
		_replaced_f_code = string_replace(_replaced_f_code,"G","1")
		_replaced_f_code = string_replace(_replaced_f_code,"A","2")
		_replaced_f_code = string_replace(_replaced_f_code,"J","3")
		_replaced_f_code = string_replace(_replaced_f_code,"W","4")
		_replaced_f_code = string_replace(_replaced_f_code,"O","5")
		_replaced_f_code = string_replace(_replaced_f_code,"P","6")
		_replaced_f_code = string_replace(_replaced_f_code,"F","7")
		_replaced_f_code = string_replace(_replaced_f_code,"Y","8")
		_replaced_f_code = string_replace(_replaced_f_code,"Q","9")

		_replaced_f_code = string_replace_all(_replaced_f_code,"u","0")
		_replaced_f_code = string_replace_all(_replaced_f_code,"j","1")
		_replaced_f_code = string_replace_all(_replaced_f_code,"x","2")
		_replaced_f_code = string_replace_all(_replaced_f_code,"i","3")
		_replaced_f_code = string_replace_all(_replaced_f_code,"z","4")
		_replaced_f_code = string_replace_all(_replaced_f_code,"k","5")
		_replaced_f_code = string_replace_all(_replaced_f_code,"s","6")
		_replaced_f_code = string_replace_all(_replaced_f_code,"n","7")
		_replaced_f_code = string_replace_all(_replaced_f_code,"v","8")
		_replaced_f_code = string_replace_all(_replaced_f_code,"m","9")
	//////////////////////////////////////////////////////////////////////////////////////////////
		_replaced_f_code = string_replace_all(_replaced_f_code,"B","0")
		_replaced_f_code = string_replace_all(_replaced_f_code,"D","0")
		_replaced_f_code = string_replace_all(_replaced_f_code,"E","0")
		_replaced_f_code = string_replace_all(_replaced_f_code,"H","0")
		_replaced_f_code = string_replace_all(_replaced_f_code,"I","0")
		_replaced_f_code = string_replace_all(_replaced_f_code,"K","0")
		_replaced_f_code = string_replace_all(_replaced_f_code,"L","0")
		_replaced_f_code = string_replace_all(_replaced_f_code,"N","0")
		_replaced_f_code = string_replace_all(_replaced_f_code,"M","0")
		_replaced_f_code = string_replace_all(_replaced_f_code,"R","0")
		_replaced_f_code = string_replace_all(_replaced_f_code,"S","0")
		_replaced_f_code = string_replace_all(_replaced_f_code,"T","0")
		_replaced_f_code = string_replace_all(_replaced_f_code,"U","0")
		_replaced_f_code = string_replace_all(_replaced_f_code,"V","0")
		_replaced_f_code = string_replace_all(_replaced_f_code,"X","0")
		_replaced_f_code = string_replace_all(_replaced_f_code,"Z","0")
	
	
		_replaced_f_code = string_replace_all(_replaced_f_code,"a","0")
		_replaced_f_code = string_replace_all(_replaced_f_code,"b","0")
		_replaced_f_code = string_replace_all(_replaced_f_code,"c","0")
		_replaced_f_code = string_replace_all(_replaced_f_code,"d","0")
		_replaced_f_code = string_replace_all(_replaced_f_code,"e","0")
		_replaced_f_code = string_replace_all(_replaced_f_code,"f","0")
		_replaced_f_code = string_replace_all(_replaced_f_code,"g","0")
		_replaced_f_code = string_replace_all(_replaced_f_code,"h","0")
		_replaced_f_code = string_replace_all(_replaced_f_code,"o","0")
		_replaced_f_code = string_replace_all(_replaced_f_code,"p","0")
		_replaced_f_code = string_replace_all(_replaced_f_code,"q","0")
		_replaced_f_code = string_replace_all(_replaced_f_code,"r","0")
		_replaced_f_code = string_replace_all(_replaced_f_code,"w","0")
		_replaced_f_code = string_replace_all(_replaced_f_code,"t","0")
		_replaced_f_code = string_replace_all(_replaced_f_code,"v","0")
		_replaced_f_code = string_replace_all(_replaced_f_code,"y","0")
	
	




		var _dots_count = string_delete(_replaced_f_code,2,string_length(_replaced_f_code))
		var _dots_pos = 0
		//맨 앞자리 숫자 제거 
		var _des_first_num = string_delete(_replaced_f_code,1,1)


		for(var i = 0; i < _dots_count; i++)
		{
			if i = 0
			{
			_dots_pos[i] = string_delete(_des_first_num,2,string_length(_replaced_f_code))
			}
			else
			{
			//뒷자리 숫자 제거
			_dots_pos[i] = string_delete(_des_first_num,2+i,string_length(_replaced_f_code)-2-i)
	
			//앞자리 숫자 제거
			_dots_pos[i] = string_delete(_dots_pos[i],1,i)
			}
		}

		//맨 앞자리와 점 위치 숫자 제거 
		var _ip_only = string_delete(_replaced_f_code,1,1+_dots_count)

		var _lastest_dot_pos = 0
		for(var i = 0; i < _dots_count; i++)
		{
		_ip_only = string_insert(string("."),_ip_only,real(_dots_pos[i])+_lastest_dot_pos)
		_lastest_dot_pos += string_digits(_dots_pos[i])
		}

		return _ip_only;
		}
		else
		{
		return -1;
		}
	}
	else
	{
	return argument0;
	}
}