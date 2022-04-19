/// @description Insert description here
// You can write your code in this editor
y += (ystart-32 - y)*0.1
depth = -99

if c = 0
{
real_alpha += (1 - real_alpha)*0.24
}
else
{
real_alpha += (-0.1 - real_alpha)*0.24

	if real_alpha < 0
	{
	instance_destroy()
	}
}

if time > 100
{
c = 1
}
time++

