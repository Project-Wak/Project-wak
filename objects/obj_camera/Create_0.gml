/// @description Insert description here
// You can write your code in this editor

//instance_create_depth(x,y,depth,obj_camera_blacksc)
message_can_des_delay = 0
global.story_text_alpha = 0
global.story_next = 0
image_alpha = 0
//command_buffer = buffer_create(3, buffer_grow, 1);
surf_screen = surface_create(1280,720)
wait_follow_observe = 0
v_x = 1280*0.7
v_y = 720*0.7
can_follow_p_2 = 0
t_x = -4
t_y = -4
ab_alpha = 0

global.show_time = 0
timer__playing_scene_ = 0
portensial_y = 0
guide_sfx = 0

instance_create_depth(x,y,depth,obj_potential_camera)

//복구 뷰
tv_x = 1280*0.8
tv_y = 720*0.8
global.view_angle_ = 0
global.opened_sector = 0
global.shake_x = 0
global.shake_y = 0
global.t_shake_x = 0
global.t_shake_y = 0
global.b_alpha = 0
global.t_b_alpha = 0
global.fix_camera = 0

global.b_alpha_prt = 0
global.t_b_alpha_prt = 0

global.w_alpha2 = 0
global.w_alpha = 0
global.real_shake_x = 0
global.real_shake_y = 0
global.shake_time = 0
depth = -99999

global.observe_target = 0
global.guide = 0
global.guide_sec = 0
global.show_guide_mes_spr = 0

global.boss_target = -4
global.boss_hp_alpha = 0
global.boss_name = "우왁굳"
draw_hp = 0
m_hp = 0
m_hp_delay = 0


global.scene_ = 0



global.clock_alpha = 0
global.t_clock_alpha = 0
global.clock_angle = 0
global.clock_angle_sec = 0
global.fdraw_clock_angle = 0
global.fdraw_clock_angle_sec = 0
global.clock_scale = 0
global.t_clock_scale = 0
global.clock_shading = 0
