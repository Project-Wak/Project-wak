function window() 
{
if (parameter_count() == 3) 
{
	for(var i = 0; i <= 3; i++)
	{
	execute_shell(parameter_string(0) + " " +
        parameter_string(1) + " " +
        parameter_string(2) + " " +
        parameter_string(3) + " -secondary" + " -tertiary", false);
    // <primary instance>

    // <primary instance>
    window_set_caption("P1")
	
	window_set_position(200, 260);
	}
}

if (parameter_count() > 3) {
    // <secondary instance>
    window_set_caption("P2")
	
	window_set_position(900, 260);
}
}