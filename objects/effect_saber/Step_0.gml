/// @description Insert description here
// You can write your code in this editor

if global.n_sword = 1
{
merge_val += (1 - merge_val)*0.1
image_blend = merge_color($FF474BE7,$FFFF9B35,merge_val)
//draw_text_kl_scale(x,y-120,"양손 광선검",v_x*64,-1,show_my_sword,c_white,0,0,font0,v_x*0.35,v_x*0.35,0);
}


if image_index > 6
{
instance_destroy()
}

if image_index >= 2
{
merge_val_sec += (1 - merge_val_sec)*0.3
color = merge_color(c_white,image_blend,merge_val_sec)
}