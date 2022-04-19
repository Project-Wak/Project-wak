/// @description Insert description here
// You can write your code in this editor
random_alpha_m = irandom_range(10,50)/100
for(var i = 0; i <= 20; i++)
{
spark_x[i] = x
spark_y[i] = y
}
time = 0
time_s = 1
alpha = 0
alpha2 = 0.4
bounced_time = 4.3

image_xscale = 6/64
image_yscale = 6/64

color_1 = c_white
color_2 = $FFB2DFFF

if instance_number(effect_spark) > 15
{
instance_destroy()
}