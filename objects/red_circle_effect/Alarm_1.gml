/// @description Insert description here
// You can write your code in this editor
image_xscale = t_scale*1.35
image_yscale = t_scale*1.35
image_alpha = 0.95
alarm[1] = 40

view_shake(1,2,3)
global.player_blur = choose(-1,1)*(irandom_range(20,30)/5)
