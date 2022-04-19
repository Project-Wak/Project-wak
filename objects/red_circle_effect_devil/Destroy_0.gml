/// @description Insert description here
// You can write your code in this editor
//buffer_delete(//////send_all(command_buffer);
var d_ef = instance_create_depth(x,y-64,depth-1,draw_hp_m)
var text__ = "+"+string(hp)
d_ef.d_text = text__
d_ef.image_blend = $FF82FF90
d_ef.image_xscale = 1.2
d_ef.image_yscale = 1.2
d_ef.target = -4

repeat(4)
{
var _ef = instance_create_depth(x,y,depth-1,effect_spark)
_ef.hspeed = irandom_range(-20,20)
_ef.vspeed = irandom_range(-4,2)
}
var sfx = audio_play_sound(choose(swing_lightsaber_sfx1,swing_lightsaber_sfx2,swing_lightsaber_sfx3),0,0)
audio_sound_gain(sfx,0.1*global.master_volume*2*global.sfx_volume,0)

instance_destroy(_light_)
