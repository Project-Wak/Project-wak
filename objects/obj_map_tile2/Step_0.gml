/// @description Insert description here
// You can write your code in this editor
if check___ = 0 && instance_exists(obj_lilla)
{
check___ = 1
}

if check___ = 1 && !instance_exists(obj_lilla)
{
check___ = 2
}

if check___ = 2 && instance_exists(wall1)
{
instance_destroy(wall1)
check___ = 3
}