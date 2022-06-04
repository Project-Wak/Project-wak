/// @description Insert description here
// You can write your code in this editor
instance_activate_all()
room_speed = 60
global.cursor = 0

if instance_exists(player)
{
player.vspeed = player.saved_vspeed
player.hspeed = player.saved_hspeed
player.gravity = player.saved_gravity
player.saved_vspeed = 0
player.saved_hspeed = 0
player.saved_gravity = 0
}
