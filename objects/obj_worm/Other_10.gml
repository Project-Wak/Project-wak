/// @description Insert description here
// You can write your code in this editor

if dead_scene = 0
{
	for(var i = 0; i < 32; i++)
	{
	worm_body[i] = instance_create_depth(x+i*10,y,depth+1,obj_worm_body)
		if i != 0
		{
		worm_body[i].target = worm_body[i-1]
		}
		else
		{
		worm_body[i].target = id
		}
	}
}

t_x = -4
t_y = -4
x = xstart
y = ystart+500
