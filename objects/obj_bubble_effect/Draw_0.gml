/// @description Insert description here
// You can write your code in this editor
draw_self()
var col_sec = sec_col
if thi_col_able = 1
{
var col_sec = thi_col
image_blend = thi_col
}
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,string(sec_col),sec_alpha*image_alpha)