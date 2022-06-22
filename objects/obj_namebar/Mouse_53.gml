if start = 0
{
var cm_vx = global.camera_vx
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5
var yy = camera_get_view_y(view_camera[0])+cm_vx*350

	if abs(mouse_x-xx) <= cm_vx*240 && abs(mouse_y-yy) <= cm_vx*32
	{
	keyboard_string = ""
	activate ++
		if activate > 1
		{
		activate = 0
		}
	}
	else
	{
	activate = 0
	}
}
