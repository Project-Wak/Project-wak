/// @description Insert description here
// You can write your code in this editor
//draw_self()


//$FFFFC999
//$FF7F4919
//$FF1A1A1A
//$FF331700
if room != room_sector_outside
{
gpu_set_tex_filter(true);
draw_sprite_stretched_ext(BG_,0,0,0,room_width,room_height,c_white,0.5)
gpu_set_tex_filter(false);
}
else
{
gpu_set_tex_filter(true);
draw_sprite_stretched_ext(BG_1,1,0,-500,room_width,room_height*1.5,c_white,0.68)
gpu_set_tex_filter(false);
}

