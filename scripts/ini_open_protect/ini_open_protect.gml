function ini_open_protect(argument0) {
	var file;
	var file_size;
	var pointer;
	var _byte;

	global._ini_name = argument0;

	if file_exists(global._ini_name) // If the file exists, decrypt
	{
	    file = file_bin_open(global._ini_name, 2);
	    file_size = file_bin_size(file);
    
	    for (pointer = 0; pointer < file_size; pointer+=1)
	    {
	        file_bin_seek(file,file_size -pointer -1);
	        _byte[pointer] = abs(file_bin_read_byte(file)-256);
	    }
    
	    file_bin_rewrite(file);
    
	    for (pointer = 0; pointer < file_size; pointer+=1)
	    {
	        file_bin_seek(file,pointer);
	        file_bin_write_byte(file,_byte[pointer]);
	    }
    
	    file_bin_close(file);
	}

	ini_open(global._ini_name);




}
