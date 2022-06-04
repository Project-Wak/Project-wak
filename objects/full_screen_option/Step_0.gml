/// @description Insert description here
// You can write your code in this editor
depth = -999999
var _c_x = obj_camera.v_x/1280
var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5-250*_c_x
var yy = camera_get_view_y(view_camera[0])+(160+150)*_c_x
global.cursor = 1

image_xscale = _c_x*0.5
image_yscale = _c_x*0.5
x = xx
y = yy

if check_mouse_place()
{
event_user(0)
}

instance_deactivate_all(true)
instance_activate_object(code)
instance_activate_object(obj_mouse)
instance_activate_object(obj_camera)
instance_activate_object(obj_potential_camera)
instance_activate_object(obj_chatbar)
instance_activate_object(obj_chatbox)
instance_activate_object(light_a)
instance_activate_object(obj_elevator)
instance_activate_object(obj_blinded_wall)
instance_activate_object(obj_droped_item)
instance_activate_object(obj_BG)
instance_activate_object(map_bg_parents)
instance_activate_object(obj_bubble_effect)
instance_activate_object(pepsi_effect)
instance_activate_object(pepsi_effect_received)
instance_activate_object(effect_bomb)
instance_activate_object(effect_spark)
instance_activate_object(message_)
instance_activate_object(obj_nope)
instance_activate_object(mob_spawn_here)
instance_activate_object(obj_light)
instance_activate_object(light_code)
instance_activate_object(floor_parents)
instance_activate_object(setting_parents)
instance_activate_object(dreamy_effect)
instance_activate_object(player)
global.stamina_cooltime = 0

