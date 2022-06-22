/// @description Insert description here
// You can write your code in this editor
depth = player.depth-15

if !place_meeting(x,y,obj_water_inside)
{
instance_destroy()
}


image_xscale += (t_scale*0.06 - image_xscale)*0.07
image_yscale += (t_scale*0.06 - image_yscale)*0.07



if can_interect = true && place_meeting(x,y,player) && image_xscale > 0
{
global.o2 += 5
instance_destroy()
}

y -= 1

if place_meeting(x,y,obj_floor_tile5) || place_meeting(x,y,obj_floor_tile4) || place_meeting(x,y,obj_floor_tile6)
{
instance_destroy()
}
