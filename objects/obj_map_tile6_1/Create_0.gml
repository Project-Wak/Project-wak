image_index = 0

image_xscale = 4
image_yscale = 0

owner_surface = surface_create(1920,1080)
check__ = -4

var ele__ = instance_create_depth(1000,640,0,obj_elevator)
ele__.cannot_active_more = 1
ele__.t_x = 1000
ele__.t_y = 640
ele__.real_t_x = 1000
ele__.real_t_y = 640
ele__.activated = 0
if room = room_sector_B02_1
{
ele__.destination = 20
}
if room = room_sector_B03_1
{
ele__.destination = 30
}
ele__.line_length = 3000
message_phase = 0

player.x = 1000
player.y = 700

global.save_point_x = 1000
global.save_point_y = 700

global.platform_speed = 10

slow_motioned = 0

global.room_brightness = 0.6

phase = 0
broken_platform = sign(global.replayed+global.item_owned[6])
global.guisanga_doo_event = sign(global.replayed)
plusment = 0