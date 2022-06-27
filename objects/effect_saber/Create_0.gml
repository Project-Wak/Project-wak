/// @description Insert description here
// You can write your code in this editor
merge_val = 0
color = c_white
merge_val_sec = 0
image_speed = 0.9
			
if global.n_sword = 1
{
image_blend = $FF474BE7
//draw_text_kl_scale(x,y-120,"양손 광선검",v_x*64,-1,show_my_sword,c_white,0,0,font0,v_x*0.35,v_x*0.35,0);
}
				
if global.n_sword = 2
{
image_blend = $FF71FF32
//draw_text_kl_scale(x,y-120,"초록 광선검",v_x*64,-1,show_my_sword,c_white,0,0,font0,v_x*0.35,v_x*0.35,0);
}
				
if global.n_sword = 3
{
image_blend = $FF474BE7
//draw_text_kl_scale(x,y-120,"붉은 광선검",v_x*64,-1,show_my_sword,c_white,0,0,font0,v_x*0.35,v_x*0.35,0);
}
			
if global.n_sword = 4
{
image_blend = $FFFF9B35
//draw_text_kl_scale(x,y-120,"푸른 광선검",v_x*64,-1,show_my_sword,c_white,0,0,font0,v_x*0.35,v_x*0.35,0);
}