/// @description Insert description here
// You can write your code in this editor
//col = choose($FF3E2D24,$FF62D1F7)
//outline = choose(true,false)
draw_set_color(col)
draw_set_alpha(image_alpha)
draw_triangle(x+lengthdir_x(32*image_xscale,120+image_angle),y+lengthdir_y(32*image_xscale,120+image_angle),x+lengthdir_x(32*image_xscale,240+image_angle),y+lengthdir_y(32*image_xscale,240+image_angle),x+lengthdir_x(32*image_xscale,image_angle),y+lengthdir_y(32*image_xscale,image_angle),outline)
