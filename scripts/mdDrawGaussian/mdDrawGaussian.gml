/// @func mdDrawGaussian(sprite, index, range, standard_deviation, x, y)
/// @param {real} surf sprite index
/// @param {real} range range of gaussian blur
/// @param {real} standard_deviation standard deviation of gaussian distribution
/// @param {real} x x
/// @param {real} y y
/// @param {real} xscale x
/// @param {real} yscale y
function mdDrawGaussian(argument0,argument1,argument2,argument3,argument4,argument5,argument6) 
{
shader_enable_corner_id(true);

var __SHADER = mdGaussian;
var __SPRITE = argument0;

shader_set(__SHADER);
shader_set_uniform_f(shader_get_uniform(__SHADER,"scaler"), clamp(argument1,1,15));
var __texture = surface_get_texture(__SPRITE);
shader_set_uniform_f(shader_get_uniform(__SHADER,"texelSize"), texture_get_texel_width(__texture), texture_get_texel_height(__texture));
var UV = texture_get_uvs(__texture);
shader_set_uniform_f(shader_get_uniform(__SHADER,"uvLT"), UV[0], UV[1]);
shader_set_uniform_f(shader_get_uniform(__SHADER,"uvRB"), UV[2], UV[3]);
shader_set_uniform_f(shader_get_uniform(__SHADER,"v"), clamp(argument2,2,8));

draw_surface_ext(__SPRITE,argument3,argument4,argument5,argument6,0,c_white,1);

shader_reset();

shader_enable_corner_id(false);
}
