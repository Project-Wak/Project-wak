// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function encryption_ip(argument0)
{
	if argument0 != ""
	{
	var ip_for_calcul = argument0

	var _count_dots = string_count(".",argument0)

	var dots_position = 0
	for(var i = 0; i < _count_dots; i++)
	{
	dots_position[i] = string_pos(".",ip_for_calcul)
	ip_for_calcul = string_delete(ip_for_calcul,1,dots_position[i]);
	}



	var ip_without_dots = string_replace_all(argument0,".","")




	var f_total_calcul = string(_count_dots)
	for(var i = 0; i < _count_dots; i++)
	{
	f_total_calcul = string(f_total_calcul)+string(dots_position[i])
	}

	var total_calcul_result = string(f_total_calcul)+string(ip_without_dots)

	total_calcul_result = string_replace(total_calcul_result,"0","C")
	total_calcul_result = string_replace(total_calcul_result,"1","G")
	total_calcul_result = string_replace(total_calcul_result,"2","A")
	total_calcul_result = string_replace(total_calcul_result,"3","J")
	total_calcul_result = string_replace(total_calcul_result,"4","W")
	total_calcul_result = string_replace(total_calcul_result,"5","O")
	total_calcul_result = string_replace(total_calcul_result,"6","P")
	total_calcul_result = string_replace(total_calcul_result,"7","F")
	total_calcul_result = string_replace(total_calcul_result,"8","Y")
	total_calcul_result = string_replace(total_calcul_result,"9","Q")

	total_calcul_result = string_replace_all(total_calcul_result,"0","u")
	total_calcul_result = string_replace_all(total_calcul_result,"1","j")
	total_calcul_result = string_replace_all(total_calcul_result,"2","x")
	total_calcul_result = string_replace_all(total_calcul_result,"3","i")
	total_calcul_result = string_replace_all(total_calcul_result,"4","z")
	total_calcul_result = string_replace_all(total_calcul_result,"5","k")
	total_calcul_result = string_replace_all(total_calcul_result,"6","s")
	total_calcul_result = string_replace_all(total_calcul_result,"7","n")
	total_calcul_result = string_replace_all(total_calcul_result,"8","v")
	total_calcul_result = string_replace_all(total_calcul_result,"9","m")

	return total_calcul_result;
	}
	else
	{
	return -1;
	}
}