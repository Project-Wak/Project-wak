/// @description Insert description here
// You can write your code in this editor
var v_x = global.camera_vx
var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])

if surface_exists(owner_surface)
{
surface_set_target(owner_surface);
draw_clear_alpha(0,0);  // It doesn't matter what colour you give it - it's going to be transparent.
surface_reset_target();
}

var __alpha__ = 1
if (first_guide_timer < 60)
{
__alpha__ = first_guide_timer/60
}

if (first_guide_timer > 340)
{
__alpha__ = (400-first_guide_timer)/60
}

if __alpha__ > 0
{
draw_sprite_ext(Sprite289,0,xx+640*v_x,yy+420*v_x,v_x*2.5,v_x*2.5,0,c_white,__alpha__*0.5)
draw_text_k_scale(xx+640*v_x,yy+v_x*200,"게임 효과음과 시각적 요소가 게임플레이에 큰 영향을 끼칩니다",99,-1,__alpha__*0.9,c_white,0,0,font_title,v_x/5,v_x/5,0)
draw_text_k_scale(xx+640*v_x,yy+v_x*245,"가능한 헤드셋을 착용해주세요",99,-1,__alpha__*0.7,c_white,0,0,font_title,v_x/5.5,v_x/5.5,0)
}